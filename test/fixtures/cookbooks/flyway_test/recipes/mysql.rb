
mysql2_chef_gem 'default' do
  client_version node['mysql']['version'] if node['mysql'] && node['mysql']['version']
  action :install
end

mysql_service 'default' do
  version node['mysql']['version'] if node['mysql'] && node['mysql']['version']
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password 'mysql'
  action [:create, :start]
end

mysql_database 'flyway_test' do
  connection(
    host: '127.0.0.1',
    username: 'root',
    password: 'mysql'
  )
  action :create
end
