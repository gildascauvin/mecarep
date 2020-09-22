FROM rabbitmq:3-management-alpine
MAINTAINER Fashion Network <devops@fashionnetwork.com>

COPY queue-definitions.json /etc/rabbitmq/queue-definitions.json
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

ENV RABBITMQ_CONFIG_FILE=/etc/rabbitmq/rabbitmq.conf
