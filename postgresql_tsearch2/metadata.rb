name              "postgresql_tsearch2"
maintainer        "Mikhail Kolesnik"
maintainer_email  "mike@openbunker.org"
description       "Adds tsearch2 data to Postgresql server"
version           "0.0.1"

recipe "postgresql_tsearch2", "Adds tsearch2 English and Russian data to Postgresql server."

depends 'postgresql'
