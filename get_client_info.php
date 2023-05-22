<?php
$servername = "votre_serveur";
$username = "votre_utilisateur";
$password = "votre_mot_de_passe";
$dbname = "votre_base_de_donnees";

// Créez une nouvelle connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifiez la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT name, email, phone FROM clients WHERE id = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Sortie des données de chaque ligne
    while($row = $result->fetch_assoc()) {
        echo json_encode($row);
    }
} else {
    echo "0 results";
}
$conn->close();
?>
