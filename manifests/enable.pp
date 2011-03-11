# Class: foreman::enable
#
# Start foreman service and enables it at boot time
#
# Usage:
# include foreman::enable
#
class foreman::enable  {
    service {"foreman":
        ensure => "running" ,
        enable => "true",
    }
}
