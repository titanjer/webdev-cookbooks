# 'package' name defaults to project 'name' in nginx config if it is empty
default['djangosite']['package'] = nil

default['djangosite']['client_max_body_size'] = "8M"
default['djangosite']['supervisor']['env'] = {}
default['djangosite']['http_ports'] = [80]
default['djangosite']['packages'] = [
  'git', 'mercurial', 'subversion', 'libmemcached-dev', 'libxml2', 'libxslt1-dev',
  'graphicsmagick', 'libjpeg-dev', 'libpng-dev', 'libfreetype6-dev']
default['djangosite']['extra_packages'] = []
