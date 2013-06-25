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
