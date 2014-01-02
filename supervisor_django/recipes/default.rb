# A workaround to allow rebuild on top of stale files
directory "/tmp/pip-build-root/uwsgi" do
  action :delete
  recursive true
end

python_pip "uwsgi" do
  version node['supervisor_django']['uwsgi']['version']
end

directory "#{node.supervisor_django.uwsgi.logdir}" do
  action :create
end

template "#{node.supervisor_django.uwsgi.wrapper}" do
  source "uwsgi_django.sh.erb"
  mode "0755"
end
