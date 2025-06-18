FROM ubuntu

ARG user=test

WORKDIR /var/www/html

RUN apt-get update && \
    apt-get install -y apache2 unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*

ENV TLINK templatemo_570_chain_app_dev


ADD https://templatemo.com/download/$TLINK ./code.zip

RUN unzip code.zip && mv $TLINK/*  .

RUN useradd $user && chown $user:$user /var/www/html -R

USER $user

RUN rm -rf $TLINK

USER root

RUN rm -rf code.zip

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
