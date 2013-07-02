python_pip "uwsgi" do
  version node['supervisor_django']['uwsgi']['version']
end

template "#{node.supervisor_django.uwsgi.wrapper}" do
  source "uwsgi_django.sh.erb"
  mode "0755"
end
