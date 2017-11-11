class sssd::params {
  $package_name = 'sssd'
  $package_ensure = 'present'
  $service_ensure = 'running'
  $service_enable = true
  $service_hasrestart = true
  $service_hasstatus = true
  $service_name = 'sssd'
}
