remote_directory "/usr/share/postgresql/#{node['postgresql']['version']}/tsearch_data/" do
  source "tsearch_data"
  mode "0755"
  owner "root"
  group "root"
end
