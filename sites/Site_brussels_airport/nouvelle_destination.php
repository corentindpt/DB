<?php
try
{
$bdd = new PDO('mysql:host=localhost;dbname=brussels_airport;charset=utf8', 'root', 'root');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
?>


<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="mise_en_page.css" />
        <title>Brussels Airport - L'aéroport du futur</title>
    </head>

    <body>
        <div id="bloc_page">
            <header>
                <div id="titre_principal">
                    <div id="logo">
                        <img src="sites_images_brussels_airport/logo_brussels_airport.jpg" alt="Logo de brussels-airport" />
                        <h1>Brussels Airport</h1>
                    </div>
                    <h2>L'aéroport du futur</h2>
                </div>

                <nav>
                    <ul>
                        <li><a href="index.php">Accueil</a></li>
                        <li><a href="informations_1.php">Informations</a></li>
                        <li><a href="reservation.php">Réservations</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>
            </header>
            <p>


        <form action="nouvelle_destination2.php" method="post">
        <p>
        <label for="city">ville</label> : <input type="text" name="city" id="city" /><br />
        <label for="flight_time">durée (00:00:00)</label> : <input type="time" name="flight_time" id="flight_time" /><br />
        <label for="distance">distance (km)</label> : <input type="number" name="distance" id="distance" /><br />

        <input type="submit" value="Insérer" />
         </p>
        </form>


             <p>
              <a href="Informations_1.php">Retour</a>
            </p>

            <footer>
                <div id="tweet">
                    <h1>Contacts</h1>
                    <p>Téléphone : 0000000000</p>
                    <p>Adresse : 42, rue du paquis 08110 Matton-Clémency </p>
                </div>
                <div id="mes_photos">
                    <h1>Photos de l'aéroport</h1>
                    <p><img src="sites_images_brussels_airport/photo1.jpg" alt="Photographie" /><img src="sites_images_brussels_airport/photo2.jpg" alt="Photographie" /><img src="sites_images_brussels_airport/photo3.jpg" alt="Photographie" /><img src="sites_images_brussels_airport/photo4.jpg" alt="Photographie" /></p>
                </div>
                <div id="mes_amis">
                    <h1>Réseaux sociaux</h1>
                    <div id="listes_amis">
                        <ul>
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Instagram</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Snapchat</a></li>
                            <li><a href="#">Pinterest</a></li>
                            <li><a href="#">Google</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
    </body>
</html>

<?php
$query->closeCursor(); // Termine le traitement de la requête
?>

