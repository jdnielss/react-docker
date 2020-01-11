FROM nginx

WORKDIR /usr/share/nginx/html
ADD ./build ./
RUN apt-get update && apt-get upgrade 
RUN apt-get install locate -y
RUN apt-get install vim -y
RUN updatedb

EXPOSE 80