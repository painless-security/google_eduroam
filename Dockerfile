FROM freeradius/freeradius-server:3.2.1-alpine

WORKDIR /etc/raddb/mods-enabled/

COPY raddb .
RUN ln -s ../mods-available/ldap_google ../mods-available/cache_auth .

WORKDIR /etc/raddb/sites-enabled/
RUN ln -s ../sites-available/google-ldap-auth ./

WORKDIR /
