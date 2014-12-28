# couchpotato

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with couchpotato](#setup)
    * [What couchpotato affects](#what-couchpotato-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with couchpotato](#beginning-with-couchpotato)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Development - Guide for contributing to the module](#development)

## Overview

Install couchpotato

## Module Description

Installs couchpotato via git, sets up sensible defaults and configures
the service to start at boot.

## Setup

### What couchpotato affects

* Checks out couchpotato from git
* Creates an init script (Debian only)
* Creates defaults under `/etc/default/couchpotato` (Debian only)


### Beginning with couchpotato

If you just want couchpotato installed with the default options:

    class { 'couchpotato': }
    # or
    include ::couchpotato

## Usage

All interaction for couchpotato is done via the `couchpotato` class

## Reference

### Classes

##### Public classes
* `couchpotato`: Installs and configures the couchpotato service

#### Private classes:
* `couchpotato::config`: Sets up the default options for couchpotato (`/etc/default/couchpotato`)
* `couchpotato::install`: Installs couchpotato
* `couchpotato::service`: Configures the couchpotato service
