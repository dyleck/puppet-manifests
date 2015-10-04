node 'node1.dylux.lab' { 
  
  ssh_authorized_key { "marcin@dylux-think":
    user => 'root',
    type => 'ssh-dss',
    key => 'AAAAB3NzaC1kc3MAAACBAO2WnNjheqKxpF2Nkll1rg+Y/SuACB/xfVqF+22IwSwaBo0C5OQaKnFEbtmsITMdlSd+gl7SG1ZTNgbVkpRjM3BYRNBOhGt3FAUhaliuqDQxQAfdxgrWk+zUOmWdeZELWmfKR1FIywLXxmdJxuwR83urLAK0YyBa/ZydCYEyHSFXAAAAFQCeLkpXJHtpaGicLHnx0cO9xm+CkQAAAIEAvJ5uVqrY4hbQCHvAHp9XndU22vjtf6mrloaEb24i9heFK2QKMBq7DBQgY4DvRQNooEoafLBczsJDBNC/ptiJKuufJ/0DDZzt/leP33FcTvoiwUCiENaBYn4ah2Q8d8wv1MSiVpeqCdH+yf7wGvxIsYijVjyQsrvDdvt8YpM4jO8AAACBANVX5QLYZcCIteryaYOKb4LFVfsncXRBkOiPIIr3OGqscDE77AL3P9ZH9EhB1eKc9ayQf2ISP3ow6VHI+lJnACt05AkKlyalrv75p1np9GWCRpj/w0kjbv7yc8UO2j/IvmNHC+uUQLiZxkUxfiLefGrLrF63L1Ra5aFFbNdgE8Ek',
  }

  class { "::rvm": } ->
  rvm_system_ruby { 
    'ruby-2.2.1':
      ensure => present,
      default_use => true,
  } ->
  rvm_gemset {
    'ruby-2.2.1@rails-tutor':
      ensure => present,
  } ->
  rvm_gem {
    'ruby-2.2.1@rails-tutor/rails':
      ensure => '4.0',
  }

  user {
    'rails':
      ensure => present,
      home => '/home/rails',
      shell => '/bin/bash',
      gid => 'rvm',
  }

  file {
    '/home/rails':
      mode => 0755,
      owner => 'rails',
      ensure => directory,
      require => User['rails'],
  }

  file {
    '/home/rails/.bash_profile':
      source => '/etc/skel/.bash_profile',
      owner => 'rails',
      mode => '0750',
      require => [File['/home/rails'],User['rails'],],
  }

  file {
    '/home/rails/.bashrc':
      source => '/etc/skel/.bashrc',
      owner => 'rails',
      mode => '0750',
      require => [File['/home/rails'],User['rails'],],
  }

  package {
    'git':
      ensure => present,
  }
  package {
    'epel-release':
      ensure => present,
  }
  package {
    'nodejs':
      ensure => present,
      require => Package['epel-release'],
  }
  package {
    'wget':
      ensure => present,
  }
}

