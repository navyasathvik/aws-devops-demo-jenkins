FROM ubuntu:22.04
RUN apt update && apt -y upgrade
RUN apt install -y nginx
Copy index.html /var/www/html
COPY index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
