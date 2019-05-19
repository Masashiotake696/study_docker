FROM centos:7

LABEL maintainer="Masashi Otake" \
        Description="Study for Docker" \
        Version="1.0"

# COPY file to use nginx by centos:7
COPY ./nginx/nginx.repo /etc/yum.repos.d/nginx.repo

# Install Nginx
RUN yum install -y nginx

# Open port 80
EXPOSE 80

# Copy index.html
COPY index.html /usr/share/nginx/html/

# Use nginx foreground
CMD [ "nginx", "-g", "daemon off;"]