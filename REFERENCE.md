# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

* [`profile_kerberos`](#profile_kerberos): Configures Kerberos for NCSA

## Classes

### profile_kerberos

This profile configures Kerberos for NCSA systems

#### Examples

##### 

```puppet
include profile_kerberos
```

#### Parameters

The following parameters are available in the `profile_kerberos` class.

##### `default_realm`

Data type: `String`

Identifies the default Kerberos realm

##### `dns_lookup_kdc`

Data type: `Boolean`

Enable using DNS SRV records to locate KDCs and other servers in realm

##### `dns_lookup_realm`

Data type: `Boolean`

Enable using DNS TXT records to determine the Kerberos realm for the host

##### `domain_realms`

Data type: `Hash`

Provides mapping from a domain name to a Kerberos realm

##### `forwardable`

Data type: `Boolean`

Allows tickets to be forwardable

##### `logging_default`

Data type: `String`

Indicates how logging will be performed

##### `realms`

Data type: `Hash`

Defines Kerberos realms and their properties

##### `renew_lifetime`

Data type: `String`

The default renewable lifetime for initial ticket requests

##### `ticket_lifetime`

Data type: `String`

The default lifetime for initial ticket requests
