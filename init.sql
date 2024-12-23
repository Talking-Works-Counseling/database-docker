CREATE EXTENSION IF NOT EXISTS dblink;

DO $$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'talking_works_qa'
   ) THEN
      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE talking_works_qa');
   END IF;
END
$$;

DO $$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'keycloak'
   ) THEN
      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE keycloak');
   END IF;
END
$$;