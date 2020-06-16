# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile_kerberos
class profile_kerberos (
  $default_realm,
  $forwardable,
  $renew_lifetime,
  $ticket_lifetime,
  $dns_lookup_kdc,
  $dns_lookup_realm,
  $realms,
  $domain_realms,
  $logging_default,
) {

  class { 'mit_krb5':
    default_realm    => $default_realm,
    forwardable      => $forwardable,
    renew_lifetime   => $renew_lifetime,
    ticket_lifetime  => $ticket_lifetime,
    dns_lookup_kdc   => $dns_lookup_kdc,
    dns_lookup_realm => $dns_lookup_realm,
    realms           => $realms,
    domain_realms    => $domain_realms,
  }
  class { 'mit_krb5::logging':
    default => $logging_default,
  }

}
