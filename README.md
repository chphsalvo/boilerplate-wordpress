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

##### WP Theme Variables

- `WP_PLUGINS` - (yes, no)
- `WP_CUSTOM_THEME` - Create a custom _s WordPress theme (yes, no)
- `WP_CUSTOM_THEME_SLUG` -
- `WP_CUSTOM_THEME_NAME` -
- `WP_CUSTOM_THEME_AUTHOR` -

2. Run build.sh `$ ./build.sh`

