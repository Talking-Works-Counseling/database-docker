SELECT 'CREATE DATABASE talking_works_dev'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'talking_works_dev')