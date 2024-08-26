# Use the official PostgreSQL image from the Docker Hub
FROM postgres:12.6 as postgres

# Set environment variables for PostgreSQL
# These are default values; you can override them at runtime
ENV POSTGRES_USER=talkingworks
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=talking_works_dev

# Optional: Copy any initialization scripts into the Docker image
# You can use this to add custom SQL scripts
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432

# The official PostgreSQL image already has the default command set to run PostgreSQL
