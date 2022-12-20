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
- `WP_SITE_URL` - WordPress site URL
- `WP_ADMIN_USER` -
- `WP_ADMIN_PASSWORD` -
- `WP_ADMIN_EMAIL` -

##### DB Variables

- `DB_USER` -
- `DB_PASSWORD` -
- `DB_NAME` -
- `DB_HOST` -

##### WP Theme Variables

- `WP_PLUGINS` -
- `WP_CUSTOM_THEME` - Create a custom _s WP theme (yes, no)
- `WP_CUSTOM_THEME_SLUG` -
- `WP_CUSTOM_THEME_NAME` -
- `WP_CUSTOM_THEME_AUTHOR` -

2. Run build.sh `$ ./build.sh`

