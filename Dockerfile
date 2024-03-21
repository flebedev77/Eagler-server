FROM ubuntu

WORKDIR /eagler

COPY . .

EXPOSE 25569
EXPOSE 8080
EXPOSE 8000
EXPOSE 80
EXPOSE 3000

RUN apt update
RUN apt install nginx
RUN apt install default-jre

CMD ["bash", "main.sh"]