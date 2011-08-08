class foreman::import_hosts_and_facts{

 cron{"hosts_and_facts":
    command  => "(cd $foreman_dir && rake  puppet:import:hosts_and_facts RAILS_ENV=production)",
    environment => "RAILS_ENV=production",
    user => $foreman_user,
    minute => "*/30",
  }

}
