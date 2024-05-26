<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Word Details</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: #100a1c;
      background-image: radial-gradient(50% 30% ellipse at center top,
          #201e40 0%,
          rgba(0, 0, 0, 0) 100%),
        radial-gradient(60% 50% ellipse at center bottom,
          #261226 0%,
          #100a1c 100%);
      background-attachment: fixed;
      color: #6cacc5;
    }

    .cont {
      width: 80%;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
    }

    .dictionary {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      grid-gap: 10px;
    }

    .dictionary-item {
      padding: 10px;
      background-color: #f9f9f9;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .dictionary-key {
      font-weight: bold;
    }

    .lang-cont {
      margin-top: 20px;
      padding: 10px;
      background-color: #f9f9f9;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .lang-list {
      list-style-type: none;
      padding: 0;
      margin: 0;
    }

    .lang-list-item {
      margin-bottom: 5px;
    }
  </style>
</head>

<body>
  <div class="cont">
    <?php
    $word = $_POST["txt"];

    $servername = "localhost";
    $username = "ganesh";
    $password = "gan3xh";

    try {
      $conn = new PDO("mysql:host=$servername;dbname=Dictionary", $username, $password);
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      $stmt0 = $conn->prepare("SELECT syll FROM word WHERE word = :word");

      $stmt1 = $conn->prepare("SELECT meaning FROM meaning WHERE wid IN (SELECT wid FROM word WHERE word = :word) AND spid IN (SELECT spid FROM pos WHERE spid IN (SELECT spid FROM pspeech WHERE wid IN (SELECT wid FROM word WHERE word = :word)))");

      $stmt2 = $conn->prepare("SELECT Maithili, Hindi, French FROM word WHERE word = :word");

      $stmt3 = $conn->prepare("SELECT pos FROM pos WHERE spid IN (SELECT spid FROM pspeech WHERE wid IN (SELECT wid FROM word WHERE word = :word))");
      $stmt4 = $conn->prepare("SELECT name FROM sc_name WHERE wid IN (SELECT wid FROM word WHERE word = :word)");

      $stmt0->bindParam(":word", $word);
      $stmt1->bindParam(":word", $word);
      $stmt2->bindParam(":word", $word);
      $stmt3->bindParam(":word", $word);
      $stmt4->bindParam(":word", $word);

      $stmt0->execute();
      $stmt1->execute();
      $stmt2->execute();
      $stmt3->execute();
      $stmt4->execute();

      $syllable = $stmt0->fetchAll(PDO::FETCH_ASSOC);
      $meanings = $stmt1->fetchAll(PDO::FETCH_ASSOC);
      $wordDetails = $stmt2->fetch(PDO::FETCH_ASSOC);
      $partsOfSpeech = $stmt3->fetchAll(PDO::FETCH_COLUMN);
      $synonyms = $stmt4->fetchAll(PDO::FETCH_COLUMN);

      echo "<h1>$word</h1>";

      if (!empty($syllable)) {
        echo '<div style="margin-top: 1.5%; margin-bottom: 1.5%">';
        foreach ($syllable as $syll) {
          echo '<div>' . $syll['syll'] . '</div>';
        }
        echo '</div>';
      }

      if (!empty($partsOfSpeech)) {
        echo '<div class="dictionary">';
        foreach ($partsOfSpeech as $pos) {
          echo '<div class="dictionary-item"><span class="dictionary-key">Part of Speech:</span> ' . $pos . '</div>';
        }
        echo '</div>';
      }

      if (!empty($meanings)) {
        echo '<div class="dictionary">';
        foreach ($meanings as $meaning) {
          echo '<div class="dictionary-item"><span class="dictionary-key">Meaning:</span> ' . $meaning['meaning'] . '</div>';
        }
        echo '</div>';
      } else {
        echo "<p>No results found for the word '$word'.</p>";
      }

      if (!empty($synonyms)) {
        echo '<div class="dictionary">';
        echo '<div class="dictionary-item"><span class="dictionary-key">Scientific Name:</span> ' . implode(', ', $synonyms) . '</div>';
        echo '</div>';
      }

      if (!empty($wordDetails)) {
        echo '<div class="lang-cont">';
        echo '<h2>lang:</h2>';
        echo '<ul class="lang-list">';
        foreach ($wordDetails as $language => $translation) {
          echo '<li class="lang-list-item"><span class="dictionary-key">' . ucfirst($language) . ':</span> ' . $translation . '</li>';
        }
        echo '</ul>';
        echo '</div>';
      }
    } catch (PDOException $e) {
      echo "Error: " . $e->getMessage();
    }
    ?>
  </div>
</body>

</html>