
include_recipe 'flyway'

directory '/tmp/db' do
  action :create
end

cookbook_file 'V001__schema.sql' do
  path '/tmp/db/V001__schema.sql'
  source "#{node['flyway']['test']['db']}/V001__schema.sql"
end

cookbook_file 'V002__data.sql' do
  path '/tmp/db/V002__data.sql'
  source "#{node['flyway']['test']['db']}/V002__data.sql"
end

bash 'flyway migrate' do
  code './flyway migrate'
  cwd "#{node['flyway']['install_dir']}/flyway"
  action :run
end
