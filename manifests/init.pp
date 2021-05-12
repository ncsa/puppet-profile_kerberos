# @summary Configures Kerberos for NCSA
#
# This profile configures Kerberos for NCSA systems
#
# @example
#   include profile_kerberos
# 
# @param default_realm
#   Identifies the default Kerberos realm
# @param dns_lookup_kdc
#   Enable using DNS SRV records to locate KDCs and other servers in realm
# @param dns_lookup_realm
#   Enable using DNS TXT records to determine the Kerberos realm for the host
# @param domain_realms
#   Provides mapping from a domain name to a Kerberos realm
# @param forwardable
#   Allows tickets to be forwardable
# @param logging_default
#   Indicates how logging will be performed
# @param realms
#   Defines Kerberos realms and their properties
# @param renew_lifetime
#   The default renewable lifetime for initial ticket requests
# @param ticket_lifetime
#   The default lifetime for initial ticket requests
#
class profile_kerberos (
  String $default_realm,
  Boolean $dns_lookup_kdc,
  Boolean $dns_lookup_realm,
  Hash $domain_realms,
  Boolean $forwardable,
  String $logging_default,
  Hash $realms,
  String $renew_lifetime,
  String $ticket_lifetime,
  String $default_ccache_name,
  Boolean $noaddresses,
) {

  class { 'mit_krb5':
    default_realm       => $default_realm,
    forwardable         => $forwardable,
    renew_lifetime      => $renew_lifetime,
    ticket_lifetime     => $ticket_lifetime,
    dns_lookup_kdc      => $dns_lookup_kdc,
    dns_lookup_realm    => $dns_lookup_realm,
    realms              => $realms,
    domain_realms       => $domain_realms,
    noaddresses         => $noaddresses,
    default_ccache_name => $default_ccache_name,
  }
  class { 'mit_krb5::logging':
    default => $logging_default,
  }

}
