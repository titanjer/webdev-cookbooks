python_pip "uwsgi" do
  version "1.1.2"
end

template "#{node.supervisor_django.uwsgi.wrapper}" do
  source "uwsgi_django.sh.erb"
  mode "0755"
end
