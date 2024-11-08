FROM python:3.13-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /opt/scripts
COPY entrypoint.sh /opt/scripts
COPY provision.sh /opt/scripts
RUN chmod +x /opt/scripts/entrypoint.sh /opt/scripts/provision.sh

ENV PYTHONPATH=/app
EXPOSE 80

CMD ["./entrypoint.sh"]
