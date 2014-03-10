class testmod {
  notify { "this is ${::environment}": }
  changed_type { $::environment: ensure => present,}
  changed_provider { $::environment: ensure => present,}

  $var = custom_function()
  notify { "custom function is ${var}": }
  notify { "custom fact is ${::custom_fact}":}

  notify { 'I wrote prod here': }

}
