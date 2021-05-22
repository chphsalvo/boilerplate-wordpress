# Set VARS from .env file
if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs -0)
fi
echo 'build_test'

if [[ "$WP_CUSTOM_THEME" == "yes" ]]
then
  echo $WP_CUSTOM_THEME
  echo $WP_CUSTOM_THEME_SLUG
  echo $WP_CUSTOM_THEME_NAME
  echo $WP_CUSTOM_THEME_AUTHOR
fi