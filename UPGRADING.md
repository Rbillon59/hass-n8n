# Upgrading

## To version 3.*.*
In version 3.0.0 and later, the n8n addon has been changed to use [Home Assistant Ingress](https://www.home-assistant.io/blog/2019/04/15/hassio-ingress/). 

This means that the addon is now fully secure behind Home Assistant's configuration, and is natively supported by Nabu Casa remote UI URLs as well as external URLs. 

Before, if your Home Assistant had an external URL configured, the n8n URL would also be accessible from the internet without Home Assistant authentication (although it was still protected by n8n credentials). To strengthen the security, this is no longer supported.

### Webhook and tunnel changes
However, having things like webhooks behind an ingress will make the webhooks break. So a new port has been exposed that *only* allows webhooks to be received. This port is `8081` by default. If you had any tunnels or reverse proxies configured before, you need to update them to point to this new port, and update the `WEBHOOK_URL` accordingly.

### Nabu Casa external URL
A new `EXTERNAL_URL` environment variable has been added. If you use a Nabu Casa remote URL, you need to set this environment variable to that URL.