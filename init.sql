DO $$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'talking_works_qa'
   ) THEN
      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE talking_works_qa');
   END IF;

      -- Check if 'keycloak' database exists, if not, create it
   IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'keycloak') THEN
         PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE keycloak');
   END IF;
END
$$;