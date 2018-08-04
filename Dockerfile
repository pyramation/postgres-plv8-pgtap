FROM pyramation/postgres-plv8

MAINTAINER Dan Lynch <pyramation@gmail.com>

COPY ./pgtap /opt/pgtap

RUN cpan TAP::Parser::SourceHandler::pgTAP

RUN chown -R postgres:postgres /opt/pgtap
RUN chown -R postgres:postgres /usr/share/doc
RUN chown -R postgres:postgres /usr/share/postgresql

ADD ./scripts/add-pgtap.sh /docker-entrypoint-initdb.d/001-add-pgtap.sh
