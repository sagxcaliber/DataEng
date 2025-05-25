FROM ubuntu:20.04

# Prevent interaction during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install SSH server and sudo
RUN apt-get update && apt-get install -y openssh-server sudo

# Create a user
RUN useradd -ms /bin/bash dockeruser && \
    echo 'dockeruser:dockerpass' | chpasswd && \
    adduser dockeruser sudo

# Setup SSH
RUN mkdir /var/run/sshd

# Allow password authentication
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Expose SSH port
EXPOSE 22
EXPOSE 5000-5010



# Start SSH when container starts
CMD ["/usr/sbin/sshd", "-D"]
