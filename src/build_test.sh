# Set VARS from .env file
if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs -0)
  echo '.env file loaded...'
fi

if [[ "$WP_CUSTOM_THEME" == "yes" ]]
then
  echo 'testing DB_...'
  echo $DB_USER
  echo $DB_PASSWORD
  echo $DB_NAME
  echo $DB_HOST
fi

if [[ "$WP_CUSTOM_THEME" == "yes" ]]
then
  echo 'testing WP_CUSTOM_THEME...'
  echo $WP_CUSTOM_THEME
  echo $WP_CUSTOM_THEME_SLUG
  echo $WP_CUSTOM_THEME_NAME
  echo $WP_CUSTOM_THEME_AUTHOR
fi