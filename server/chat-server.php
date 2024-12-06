<!-- require $_SERVER['DOCUMENT_ROOT'] . "/qc/vendor/autoload.php"; -->

<?php
use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;

require $_SERVER['DOCUMENT_ROOT'] . "/qc/vendor/autoload.php";

class Chat implements MessageComponentInterface {
    protected $clients;

    public function __construct() {
        $this->clients = new \SplObjectStorage;
    }

    public function onOpen(ConnectionInterface $conn) {
        $this->clients->attach($conn);
        echo "New connection: ({$conn->resourceId})\n";
    }

    public function onMessage(ConnectionInterface $from, $msg) {
        foreach ($this->clients as $client) {
            if ($from !== $client) {
                $client->send($msg); // 메시지 브로드캐스트
            }
        }
    }

    public function onClose(ConnectionInterface $conn) {
        $this->clients->detach($conn);
        echo "Connection {$conn->resourceId} has disconnected\n";
    }

    public function onError(ConnectionInterface $conn, \Exception $e) {
        echo "An error has occurred: {$e->getMessage()}\n";
        $conn->close();
    }
}

use Ratchet\Server\IoServer;

$server = IoServer::factory(
    new Chat(),
    8080
);

$server->run();
