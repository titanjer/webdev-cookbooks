name              "supervisor_django"
maintainer        "Mikhail Kolesnik"
maintainer_email  "mike@openbunker.org"
description       "Configures Supervisor to run a Django site with uWSGI"
version           "0.0.2"

recipe "supervisor_django", "Configures Supervisor to run a Django site with uWSGI."

depends 'supervisor'

attribute "supervisor_django/uwsgi/binary",
  :display_name => "path to the uWSGI binary",
  :default => "/usr/local/bin/uwsgi"

attribute "supervisor_django/uwsgi/wrapper",
  :display_name => "path to the uWSGI binary Django wrapper script",
  :default => "/usr/local/bin/uwsgi_django.sh"
