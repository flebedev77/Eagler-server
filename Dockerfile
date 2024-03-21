FROM ubuntu

WORKDIR /eagler

COPY . .

EXPOSE 25569
EXPOSE 8080
EXPOSE 8000
EXPOSE 80
EXPOSE 3000

RUN sudo apt update
RUN sudo apt install nginx
RUN sudo apt install default-jre

CMD ["bash", "main.sh"]