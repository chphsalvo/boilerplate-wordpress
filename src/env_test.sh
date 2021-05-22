if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi
echo $WP_PLUGINS
