# Use the official Ubuntu base image
FROM ubuntu:latest

# Update package lists and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the current directory's contents into the container
ADD . /var/www/html/

# Expose the default port for Apache (usually port 80)
EXPOSE 80

# Start Apache in the foreground to keep the container running
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
