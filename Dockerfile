# Use Alpine Linux as base image
FROM alpine:latest

# Update package repositories and install OpenSSH
RUN apk update && apk add openssh

# Copy SSH configuration files
COPY sshd_config /etc/ssh/sshd_config

# Expose SSH port (default is 22)
EXPOSE 2222

# Start SSH daemon
CMD ["/usr/sbin/sshd", "-D", "-e", "-p", "2222"]
