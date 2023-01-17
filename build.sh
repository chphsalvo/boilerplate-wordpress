# Set VARS from .env file
[ -f .env ] && export $(cat .env | sed -e 's/#.*//g' -e 's/\ /-/g' | xargs) || { echo "Error: File .env does not exists."; exit;}

# VARS manipulations
WP_SITE_NAME_CLEAN=$(echo $WP_SITE_NAME | tr '[:upper:]' '[:lower:]')

# Make root directory
cd dist
[ -d $WP_SITE_NAME_CLEAN ] && rm -r $WP_SITE_NAME_CLEAN
mkdir $WP_SITE_NAME_CLEAN
cd $WP_SITE_NAME_CLEAN

# Download WP
echo 'Downloading latest WP version...'
wp core download

# Configure WP
echo 'Configuring WP...'
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --skip-check
echo 'Creating DB...'
wp db create
echo 'Configuring WP...'
wp core install --url=$WP_SITE_URL --title=$WP_SITE_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL
wp rewrite structure '/%postname%/'
wp rewrite flush --hard # create .htaccess file

# Plugins
echo 'Installing plugins...'
[ $WP_PLUGINS ] && wp plugin install $(echo $WP_PLUGINS | sed 's/,/ /g')
[ $WP_PLUGINS_REMOTE ] && wp plugin install $(echo $WP_PLUGINS_REMOTE | sed 's/,/ /g')
[ $WP_PLUGINS_LOCAL ] && wp plugin install $(echo $WP_PLUGINS_LOCAL | sed 's/,/ /g')

# Custom Theme
# wp theme install http://s3.amazonaws.com/bucketname/my-theme.zip # Install from a remote zip file
if [[ "$WP_CUSTOM_THEME" == "yes" ]]
then
  echo 'Creating custom WP _s theme...'
  wp scaffold _s $( echo $WP_CUSTOM_THEME_SLUG | tr '[:upper:]' '[:lower:]') --theme_name=$WP_CUSTOM_THEME_NAME --author=$WP_CUSTOM_THEME_AUTHOR
fi

echo 'Completed!'