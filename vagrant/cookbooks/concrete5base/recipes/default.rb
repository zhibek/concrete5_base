include_recipe "apt"
include_recipe "openssl"
include_recipe "build-essential"
include_recipe "networking_basic"
include_recipe "composer"
include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"
include_recipe "apache2::mod_deflate"
include_recipe "apache2::mod_headers"
include_recipe "mysql::server"
include_recipe "concrete5base::custom_php"
include_recipe "git"


web_app "concrete5base" do
    template "concrete5base.conf.erb"
    server_name "concrete5base.localhost"
    server_aliases [node['fqdn'], "localhost"]
    application_env "vagrant"
    docroot "/var/www"
end


execute "apt-get-update-periodic" do
    command "apt-get update"
    ignore_failure true
    only_if do
        File.exists?('/var/lib/apt/periodic/update-success-stamp') &&
        File.mtime('/var/lib/apt/periodic/update-success-stamp') < Time.now - 86400
    end
end

execute "apt-get-upgrade-periodic" do
    command "apt-get -y upgrade"
    ignore_failure true
end

node[:db].each do |env, name|
	execute "create database #{name}" do
		command "mysql -uroot -p#{node[:mysql][:server_root_password]} -e 'create database if not exists #{name}'"
		user "vagrant"
	end
end

%w{/var/www/config /var/www/files /var/www/packages}.each do |dirname|
  directory dirname do
    owner 'vagrant'
    group 'www-data'
    mode  00755
    action :create
  end
end