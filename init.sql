DO $$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'talking_works_qa'
   ) THEN
      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE talking_works_qa');
   END IF;
END
$$;