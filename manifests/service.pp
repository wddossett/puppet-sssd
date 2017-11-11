class sssd::service(
  String $service_name        = $sssd::service_name,
  String $service_ensure      = $sssd::service_ensure,
  Boolean $service_enable     = $sssd::service_enable,
  Boolean $service_hasstatus  = $sssd::service_hasstatus,
  Boolean $service_hasrestart = $sssd::service_hasrestart,
) {
  service  { 'sssd':
    ensure     => $service_ensure,
    enable     => $service_enable,
    name       => $service_name,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }
}
     
