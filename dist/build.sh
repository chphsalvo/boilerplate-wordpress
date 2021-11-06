# Set VARS from .env file
if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

mkdir $WP_SITE_NAME
cd $WP_SITE_NAME
echo 'Downloading latest WP version...'
curl -O https://wordpress.org/latest.zip
unzip latest.zip
rm latest.zip
mv ./wordpress/* ./
rmdir ./wordpress

echo 'Creating new database...'
mysql -u $DB_USER "-p$DB_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DB_NAME";

echo 'Configuring WP...'
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD
wp core install --url=$WP_SITE_URL --title=$WP_SITE_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL
#copy wp-cli configuration file
cp ../wp-cli.yml ./
wp rewrite structure '/%postname%/'
#create .htaccess file
wp rewrite flush --hard

echo 'Installing plugins...'
wp plugin install advanced-custom-fields
wp plugin install custom-post-type-ui
wp plugin install wp-migrate-db
wp plugin install admin-menu-editor
wp plugin install user-role-editor
wp plugin install classic-editor
wp plugin install post-types-order

if [[ "$WP_CUSTOM_THEME" == "yes" ]]
then
  echo 'Creating custom WP _s theme...'
  wp scaffold _s $WP_CUSTOM_THEME_SLUG --theme_name=$WP_CUSTOM_THEME_NAME --author=$WP_CUSTOM_THEME_AUTHOR
fi

echo 'Completed!'
