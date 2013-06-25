node['djangosite']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

node['djangosite']['extra_packages'].each do |pkg|
  package pkg do
    action :install
  end
end
