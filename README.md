# iris-sys-recs-2026

Submission for the **IRIS Systems Team Recruitment 2026**.

# My step-by-step approach

- created docker volume named mysql-data.
- removed the old mysql container
- ran it again with the command "-v mysql_data:/var/lib/mysql" to store database files in the docker volume "mysql_data"

- Nginx Persistence already done by running nginx container with the command "-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro"
- nginx.conf from my computer is being used inside the container instead of the default nginx.conf


