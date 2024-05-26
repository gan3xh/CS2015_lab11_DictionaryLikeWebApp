# CS2015_lab11_DictionaryLikeWebApp
This is a simple web-based dictionary application that allows users to look up the meanings of words and get additional information such as syllables, parts of speech, translations, and synonyms.

## Features

- **Word Lookup:** Enter a word into the input field and submit to get its meaning.
- **Syllables:** Displays the syllables of the word if available.
- **Parts of Speech:** Provides information about the parts of speech of the word.
- **Meanings:** Shows the meaning(s) of the word.
- **Synonyms:** Lists synonyms or related words for the queried word.
- **Translations:** Provides translations of the word into different languages if available.

## How to Use

1. **Setup:**
    - Make sure you have a web server with PHP and MySQL installed.
    - Import the provided MySQL database schema (`Dictionary.sql`) into your MySQL database.
    - Edit the database connection details in `220103020_LAB11.php` file (server, username, password, and database name).

2. **Run the Application:**
    - Place both HTML files (`index.html` and `dictionary.html`) along with the PHP file (`220103020_LAB11.php`) in your web server's directory.

3. **Access the Application:**
    - Open your web browser and navigate to the URL where you placed the files.
    - You should see the dictionary application interface (`index.html`).
    - Enter a word into the input field and click "Submit".

4. **View Results:**
    - The application will display information about the queried word such as syllables, parts of speech, meanings, synonyms, and translations (if available).

## Requirements

- Web server (Apache, Nginx, etc.) with PHP support
- MySQL database

## File Structure

- `index.html`: The main page of the dictionary application with the input form.
- `dictionary.html`: The PHP script to handle word lookup and display results.
- `220103020_LAB11.php`: PHP script to connect to the database and retrieve word information.
- `Dictionary.sql`: SQL file containing the database schema.
