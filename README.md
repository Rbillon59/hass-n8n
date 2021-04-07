# Home Assistant Add-on: Hass-n8n

## What is n8n?

n8n (pronounced n-eight-n) helps you to interconnect every app with an API in the world with each other to share and manipulate its data without a single line of code. It is an easy to use, user-friendly and highly customizable service, which uses an intuitive user interface for you to design your unique workflows very fast. Hosted on your server and not based in the cloud, it keeps your sensible data very secure in your own trusted database.


## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Supervisor** -> **Add-on Store**.
2. Find the "hass-n8n" add-on and click it.
3. Click on the "INSTALL" button.

## How configure it

In the configuration section, set the port if the default one is not good for you. Enable auth if you want and SSL to.
Even if unused, let the default variables set. 


### Addon Configuration

Add-on configuration:

```yaml
auth: false
auth_username: auth_username
auth_password: changeme
timezone: Europe/Berlin
protocol: http
certfile: fullchain.pem
keyfile: privkey.pem
```

### Option: `auth` (required)

Enable of disable the basic authentication in the web interface.

### Option: `auth_username` (required)

The username is basic auth is enabled.

### Option: `auth_password` (required)

The password of the basic auth

### Option: `timezone` (required)

The timezone variable is used for the Cron node which trigger event based on time.

### Option: `protocol` (required)

http for unencrypted traffic  
https for encrypted traffic.

If https, fill SSL cert variable accordingly

### Option: `certfile` (required)

The cert of the SSL certificate if the https protocol is provided

### Option: `keyfile` (required)

The private key of the SSL certificate if https enabled

## How to use it ?

Just start the addon and head to the webui at http(s)://host:port (here 5678 by default)


## Useful ressources :

### Documentation

https://docs.n8n.io
https://docs.n8n.io/getting-started/tutorials.html

### Community public workflows

https://n8n.io/workflows

### Available integrations

https://n8n.io/integrations

## Support

Got questions?

You can open an issue on Github and i'll try to answer it

[repository]: https://github.com/Rbillon59/hass-n8n

## License

This addon is published under the apache 2 license. Original author of the addon's bundled software is n8n