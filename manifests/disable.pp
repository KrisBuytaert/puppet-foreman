# Class: foreman::disable
#
# Stops foreman service and disables it at boot time
#
# Usage:
# include foreman::disable
#
class foreman::disable  {
    service{ "foreman":
        ensure => "stopped" ,
        enable => "false",
    }
}
