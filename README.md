# profile_kerberos
 
Configures NCSA Kerberos
 
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