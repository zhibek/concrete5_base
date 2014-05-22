include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "php::module_apc"
include_recipe "php::module_curl"
include_recipe "php::module_gd"

package "php-pear" do
  action :install
end

php_pear_channel "pear.phpunit.de" do
  action :discover
end

# using apt
package "phpunit" do
  action :install
end

execute "PEAR: install phpunit" do
    command "pear install -f phpunit/PHPUnit"
end

execute "pear-enable-auto-discover" do
    command "pear config-set auto_discover 1"
end

execute "PEAR: install phpunit/PHPUnit_Selenium" do
    command "pear install -f phpunit/PHPUnit_Selenium"
end

execute "PEAR: upgrade all packages" do
  command "pear upgrade-all"
end
