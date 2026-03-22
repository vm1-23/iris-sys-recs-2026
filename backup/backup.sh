#!/bin/bash
set -e

BACKUP_DIR="/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "running backup for $TIMESTAMP..."

# wait for mysql
while ! mysqladmin ping -h "$DB_HOST" -u root -p"$MYSQL_ROOT_PASSWORD" --silent; do
    sleep 2
done

# dump db
echo "backing up database..."
mysqldump -h "$DB_HOST" -u root -p"$MYSQL_ROOT_PASSWORD" --all-databases > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

# archive nfs
echo "archiving storage..."
tar -czf "$BACKUP_DIR/nfs_backup_$TIMESTAMP.tar.gz" -C /app storage

# clean up older backups
echo "cleaning up old backups (keeping last 5)..."
ls -1tr "$BACKUP_DIR"/db_backup_*.sql 2>/dev/null | head -n -5 | xargs -r rm -f
ls -1tr "$BACKUP_DIR"/nfs_backup_*.tar.gz 2>/dev/null | head -n -5 | xargs -r rm -f

echo "backup complete!"
