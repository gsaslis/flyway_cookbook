include_recipe 'postgresql::ruby'
include_recipe 'database::postgresql'
include_recipe 'postgresql::server'


postgresql_connection_info = {
  host: '127.0.0.1',
  port: '5432',
  username: 'postgres',
  password: 'p0stgr3s'
}

postgresql_database 'flyway_test' do
  connection postgresql_connection_info
  action [:drop, :create]
end