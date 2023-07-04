# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [ 1.0.8 ] - 2023-07-04 

 Bump n8n to 0.235.0

## [ 1.0.7 ] - 2023-06-27 

 Bump n8n to 0.234.0

## [ 1.0.6 ] - 2023-06-20 

 Bump n8n to 0.233.1

## [ 1.0.5 ] - 2023-06-13 

 Bump n8n to 0.232.0

## [ 1.0.4 ] - 2023-06-06 

 Bump n8n to 0.231.0

## [ 1.0.3 ] - 2023-05-30 

 Bump n8n to 0.230.1

## [ 1.0.2 ] - 2023-05-24 

 Bump n8n to 0.230.0

## [1.0.1] - 2023-05-24

### Added

BREAKING CHANGE: The environment variables are now managed through the UI. The `env_vars_list` holds every environment variables you want to add to the container.

The previously env vars used (i.e `WEBHOOK_TUNNEL_URL`) are now deprecated and replaced by the new `env_vars_list` configuration.
