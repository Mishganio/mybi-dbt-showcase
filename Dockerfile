ARG DBT_VERSION=1.0.0
FROM fishtownanalytics/dbt:${DBT_VERSION}

RUN set -ex \
    && python -m pip install --upgrade pip setuptools \
   # && python -m pip install --upgrade dbt-clickhouse numpy
     && python -m pip install dbt-clickhouse dbt-postgres

WORKDIR /usr/app/
ENV DBT_PROFILES_DIR=.

ENTRYPOINT ["tail", "-f", "/dev/null"]
