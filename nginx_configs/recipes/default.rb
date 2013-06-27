cookbook_file "#{node['nginx']['dir']}/conf.d/upload_progress.conf" do
  source "upload_progress.conf"
  mode "0644"
  owner "root"
  group "root"
end

cookbook_file "#{node['nginx']['dir']}/mime.types" do
  source "mime.types"
  mode "0644"
  owner "root"
  group "root"
end

template "#{node['nginx']['dir']}/sites-available/default" do
  source "default-site.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :reload, 'service[nginx]'
end

directory "/var/www/nginx/default-site"

template "/var/www/nginx/default-site/index.html" do
  source "default-site-index.html.erb"
  mode "0644"
end

nginx_site 'default' do
  enable node['nginx_configs']['default_site_enabled']
end
