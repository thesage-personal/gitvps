# Use Alpine Linux as base image
FROM alpine:latest

# Update package repositories and install Nginx and OpenSSH
RUN apk update && \
    apk add nginx 

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy HTML file to be served by Nginx
COPY index.html /var/www/html/

# Expose ports for Nginx and SSH
EXPOSE 80 

# Start NGINX when the container launches
CMD ["nginx", "-g", "daemon off;"]
