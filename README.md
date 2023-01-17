# Wordpress boilerplate

#### Latest WP installation and configuration in one click.

In one click you will:

- Download latest WP version
- Create new mysql WP DB
- Setup Wordpress configuration
- Install some main plugins
- Create and configure a custom theme

#### Required:

- OS UNIX-like (OS X, Linux, FreeBSD, Cygwin)
- PHP > 5.3.29
- WP CLI - https://wp-cli.org/it/
- mysql

#### Usage:

1. Create ".env" file, copy .env.example file to ".env" and fill in the variables.

##### WP Variables

- `WP_SITE_NAME` - WordPress site name
- `WP_SITE_TITLE` - WordPress site title
- `WP_SITE_SLUG` - WordPress site slug
- `WP_SITE_URL` - WordPress site URL
- `WP_ADMIN_USER` - WordPress admin user username
- `WP_ADMIN_PASSWORD` - WordPress admin user password
- `WP_ADMIN_EMAIL` - WordPress admin user e-mail

##### DB Variables

- `DB_USER` - DB user
- `DB_PASSWORD` - DB password
- `DB_NAME` - DB name
- `DB_HOST` - DB host

##### WP Plugins Variables

- `WP_PLUGINS` - Install the latest version from wordpress.org (Eg. custom-post-type-ui,advanced-custom-fields)
- `WP_PLUGINS_REMOTE` - Install from a remote zip file (Eg. http://s3.amazonaws.com/bucketname/my-plugin.zip,http://s3.amazonaws.com/bucketname/my-plugin2.zip)
- `WP_PLUGINS_LOCAL` - Install from a local zip file (Eg. ./plugins/my-plugin.zip,./plugins/my-plugin2.zip)

##### WP Theme Variables

- `WP_CUSTOM_THEME` - Create a custom _s WordPress theme (yes, no)
- `WP_CUSTOM_THEME_SLUG` - Custom _s theme slug
- `WP_CUSTOM_THEME_NAME` - Custom _s theme name
- `WP_CUSTOM_THEME_AUTHOR` - Custom _s theme author

2. Give build.sh file the execute permission `chmod +x ./build.sh`

3. Run build.sh `$ ./build.sh`

