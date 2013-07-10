<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'blog_startechconf_com');

/** MySQL database username */
define('DB_USER', 'blogstartechconf');

/** MySQL database password */
define('DB_PASSWORD', '#h^s2^SV');

/** MySQL hostname */
define('DB_HOST', 'mysql.blog.startechconf.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '^erViP*W3gKT~AZF!)#ROBrh8~Zfzn:SO;Wfj;S:ewB$n8)K*qIKzQP3YvZblqc;');
define('SECURE_AUTH_KEY',  '%mjH)IMXKKILfR~~FE*hG/PmMA%eq5q27*a@"3fkDj4R@@&g2X4ZC$~U%`g`YMdL');
define('LOGGED_IN_KEY',    '~+m4m_1LWD07tY@zi3:Ogc84%Zh;!cEli!iuDJKcGrBL$?!hm/~aUw+eAFWmWQ`p');
define('NONCE_KEY',        'KMX_m##!&$5#wNKRC1N0dYXbZ6"0*qbJWU6V|@8Ew03?Lm9r8pRhl;JIFY~*ZWw*');
define('AUTH_SALT',        'lG@yiz)nLwyK)Cjg;*dIc)B;k1h4QDuCUJl4p`DPJ5vruDX(&y5OpnwbTRi_Be7%');
define('SECURE_AUTH_SALT', '@i9XBqVX$7)idk9#wM:/!0wuA:bd%y:fk`:Zj(W74yUpsv&g8;q5n6n7wdw|z3JS');
define('LOGGED_IN_SALT',   '|I"ZbN6YLazvhWKW*;UBnbcv~Xj34k_Cwo2CrVG5`jyYT!?#eDSR3HN0t%1C#:+d');
define('NONCE_SALT',       'T"r|kzt;Eh?5d7?;sUNgUH7Dnv"#rT#D9huXQQe`hKXz@k2Nb0#4DJ`8r*dvkUZI');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_kt67hz_';

/**
 * Limits total Post Revisions saved per Post/Page.
 * Change or comment this line out if you would like to increase or remove the limit.
 */
define('WP_POST_REVISIONS',  10);

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

