FROM ubuntu:latest

WORKDIR /home

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        default-mysql-server \
        erlang \
        gnupg \
        netcat-openbsd \
        iputils-ping \
        python3 \
        python3-pip \
        python3.12-venv \
        rabbitmq-server \
        redis-server \
        sudo \
        supervisor && \
    rm -rf /var/lib/apt/lists/*

RUN rabbitmq-plugins enable rabbitmq_management

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY . /opt/scripts

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

RUN find /opt/scripts -type f -name "*.sh" -exec chmod +x {} \;

EXPOSE 3307 5001 5672 6379 15672

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
