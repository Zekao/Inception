<?php
/**
 * Custom WordPress configurations on "wp-config.php" file.
 *
 * This file has the following configurations: MySQL settings, Table Prefix, Secret Keys, WordPress Language, ABSPATH and more.
 * For more information visit {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php} Codex page.
 * Created using {@link http://generatewp.com/wp-config/ wp-config.php File Generator} on GenerateWP.com.
 *
 * @package WordPress
 * @generator GenerateWP.com
 */


/* MySQL settings */
define( 'DB_NAME',     'wp_wordpress' );
define( 'DB_USER',     'emaugale' );
define( 'DB_PASSWORD', '#IHateThisProject42' );
define( 'DB_HOST',     'mariadb' );
define( 'DB_CHARSET',  'utf8mb4' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
/* https://api.wordpress.org/secret-key/1.1/salt/ */
define('AUTH_KEY',         'mR |N3(<)R&e,xQ<UfK^>o39 HgwlC`/c/mmOad#DWAo!kHu|+<lpK@%}kU$q#2|');
define('SECURE_AUTH_KEY',  'E-[e}g`shN}-;j5>&R-UU>LXLYeBA^iq!UCEQ;;_rl)1I2Y?`HP=w/}^VVj,6j|`');
define('LOGGED_IN_KEY',    '8 -!Xl&lD|-3^gJlTt}#Z`W(d]q4n&S@G9fD@F1KfuCRJg])<#s#c]^+|;8qZ!n`');
define('NONCE_KEY',        'T,j+ECB-t*(CEnb!W`pZpd-VJJcs/5<&duAs<}^K2tmg-|}^8{C)?<3|+V^WM5/>');
define('AUTH_SALT',        ';S`i q#I`sG%osOy~dJZ5p9^QLC-e02tQ)zl-`<FB>-s;0dsurhInRjcqIp*1k8.');
define('SECURE_AUTH_SALT', '>jrh!sP)uVO#c#rLIX;g+Az^1V2yoI,hF}VG9S4YEKs_4P>d? z!mHBkTpA7b~&p');
define('LOGGED_IN_SALT',   'oQc;eXDe,.bM /a|^f7j%CXYWeLsT UG7rv8R0-5Akf=%]@l=5-nspe-jVYL3Dk:');
define('NONCE_SALT',       'j&n A@U+uKWLw$-g+|KQ05/fYtzwkp*]Dh|#-3-|c9*z +dz8<dv^aU>~uh&,?7P');


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');