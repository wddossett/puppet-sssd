# Class: sssd
# ===========================
#
# Full description of class sssd here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'sssd':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class sssd (
  String $package_name        = $sssd::params::package_name,
  String $package_ensure      = $sssd::params::package_ensure,
  String $service_ensure      = $sssd::params::service_ensure,
  String $service_name        = $sssd::params::serivce_name,
  Boolean $service_enable     = $sssd::params::service_enable,
  Boolean $service_hasrestart = $sssd::params::service_hasrestart,
  Boolean $service_hasstatus  = $sssd::params::service_hasstatus,
) inherits ::sssd::params  {
  class { '::sssd::install': }
  ~> class { '::sssd::service': }
}
