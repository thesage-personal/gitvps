# Use Alpine Linux as base image
FROM alpine:latest

# Update package repositories and install OpenSSH
RUN apk update && apk add openssh

# Generate SSH host keys
RUN ssh-keygen -A

# Expose SSH port (default is 22)
EXPOSE 2222

# Start SSH daemon
CMD ["/usr/sbin/sshd", "-D", "-e", "-p", "2222"]
