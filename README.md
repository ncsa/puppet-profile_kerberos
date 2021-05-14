# profile_kerberos
 
Configures NCSA Kerberos

Note: This module has been superseded by [ncsa/puppet-profile_system_auth](https://github.com/ncsa/puppet-profile_system_auth)
 
## Dependencies
- [ccin2p3/mit_krb5](https://forge.puppet.com/ccin2p3/mit_krb5)
 
## Reference

### class profile_kerberos (
-  String $default_realm,
-  Boolean $dns_lookup_kdc,
-  Boolean $dns_lookup_realm,
-  Hash $domain_realms,
-  Boolean $forwardable,
-  String $logging_default,
-  Hash $realms,
-  String $renew_lifetime,
-  String $ticket_lifetime,

[REFERENCE.md](REFERENCE.md)
