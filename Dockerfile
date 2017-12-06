FROM suchja/wix:latest

ADD ./ /app/
USER root
RUN chown -R xclient: /app/
USER xclient

