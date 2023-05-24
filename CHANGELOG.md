# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.230.0] - 2023-05-24

## [1.0.1] - 2023-05-24

### Added

BREAKING CHANGE: The environment variables are now managed through the UI. The `env_vars_list` holds every environment variables you want to add to the container.

The previously env vars used (i.e `WEBHOOK_TUNNEL_URL`) are now deprecated and replaced by the new `env_vars_list` configuration.
