class sssd::install (
  String $package_name = $sssd::package_name,
  String $package_ensure = $sssd::package_ensure,
  ) {
    package  { $package_name:
      ensure => $package_ensure,
    }
}
