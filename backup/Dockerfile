FROM ubuntu:22.04

# Prevent tzdata from prompting during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install the true Oracle MySQL client, cron, and archiving tools
RUN apt-get update && apt-get install -y \
    mysql-client \
    cron \
    tar \
    findutils \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

# Copy and structure the backup script
COPY backup.sh /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/backup.sh

# Define the cron schedule (Runs daily at midnight)
RUN echo "0 0 * * * root /usr/local/bin/backup.sh >> /var/log/backup.log 2>&1" > /etc/cron.d/backup-cron
RUN chmod 0644 /etc/cron.d/backup-cron
RUN crontab /etc/cron.d/backup-cron

# Start the cron daemon in the foreground
CMD ["cron", "-f"]
