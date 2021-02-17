<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'sT7zrsfZc/dQF8vNoucTmmLt5J24uPHix9uajTUWoOQZZWrJyDP41QuqqgqewjTVaqRCaMWhHRiLE4lZHAOOCw==');
define('SECURE_AUTH_KEY',  'ujO4lAhiY8ZKD9D7t5Ewg0ktFiEbJMLLEAdwOl/qqQeX5GHfiYxDQS6/gFtFAIHbRv9tSF3x1hkbfCvrBDNX1w==');
define('LOGGED_IN_KEY',    '4Yh3exp/BGCwhZiPsrSolNNOpD3i1T/RT94XJ0aGb7yatXTCze1tBj0kvF9CQNNjgDPe1ZCX1/z/YzUQIGdjqw==');
define('NONCE_KEY',        '+i7QYa+ujKBW5SALcUsEA3ETXRzVdCIKDszH2Vc3yVZbaaU9U201U8WouOMdotQmBa8P0cb8PzgUAMcRhgXxNA==');
define('AUTH_SALT',        'C5M5z7H6rkqxPyjomKQxQ4JoHeXmXmJoRB3UKr01MnfoXWj9ykg+nrWyp5jsLEmoUK/RwN7ftjqkWsapjusQdg==');
define('SECURE_AUTH_SALT', 'qGmRLMMOGyg4iIC/VGBN5ekCjqhQ6ZLmqZDBSihOk6P/Q1Dtlvv8VxI4cu2ygqLcVf92dIAv5hjFkWbnkwAQCg==');
define('LOGGED_IN_SALT',   'JmoDIFF8DmAd2gqXptxs67HK1Sp7OkkjTbd9Mm33ax8pDsk289OpXSMQQG3/PHmSY/qMisAK9EWjbRttKQCzpQ==');
define('NONCE_SALT',       'k5j24b7TUd59AnVjtXuGaOoShluMcRwCy7hMSIMeTQoQsJLM/OGDiEiGGnA5b1XMbIbmx8rZFJqA3l8u09xayA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
