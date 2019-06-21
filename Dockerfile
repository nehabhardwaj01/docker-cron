FROM ubuntu:16.04
MAINTAINER Neha Bhardwaj

# Install cron
RUN apt-get update && apt-get install -y cron

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
