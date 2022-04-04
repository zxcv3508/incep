<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'hyopark' );

/** Database password */
define( 'DB_PASSWORD', 'hyopark_pw' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'tLtl77D*g&G4;2z-XMq+Sa$EbR$xk7EFtAwCaYYAOjI{n[V;{Z,oKYq>6@ND~V10' );
define( 'SECURE_AUTH_KEY',   '*dIqZ4wtxJi.T(|e})_9NKgSP:p@t*qTW$Fc*nGiy5x2eEv&ZOOb^}=B9(U@)q]c' );
define( 'LOGGED_IN_KEY',     'C@18QYkRtev0(*Aq|xLp3ro&pCo+Z`<V* {7Hj&]~:e|lDVOSf`w5$E>&nB6[1=6' );
define( 'NONCE_KEY',         'gG7D++<-gWk W0gIng5T:7j.#Tzt$4]8,Sp`Bd zFvc_0r)wMvU=B_SZYxb:~I3>' );
define( 'AUTH_SALT',         '^sLQ0wW&WGXg%qFc6Js`0&P=rTE}B]+N~2!-Xp41a5m4CGjAt[(wAD2Izs_?Csc$' );
define( 'SECURE_AUTH_SALT',  '4qsHKks3DZ)kDO4.T&lB$Sh8JT!oMAN7QYoB^ DVL.iO(AM`u/RlE6@]j8a2Q)`v' );
define( 'LOGGED_IN_SALT',    '~4WZ,[3TAt3EZN7QBK&-+t/)|i}*G0|Jn6t,aG_3b4)M>]i7)HNX`!6B%eSX9qh;' );
define( 'NONCE_SALT',        '7*L}s#S[v<LRw[JnI^6j~Z/lB#{6Lll#S*hi+e(_-7qG}j poALuQ!Y(/2!B&U%N' );
define( 'WP_CACHE_KEY_SALT', 'Yc&j|9qL:&)4D$ioSut@ugV&u?];a,$t<&xSEyoqgCtF]}9MgoRL)6m(wF?W~l(o' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';