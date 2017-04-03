group { "puppet":
    ensure => "present",
}

include system_update

File { owner => 0, group => 0, mode => 0644 }

file { '/etc/motd':
    content => "Welcome to the astro pulsar machine.\n"
}

#include psrsoft
include devops
include tempo
