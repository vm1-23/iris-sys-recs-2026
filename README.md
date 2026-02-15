# iris-sys-recs-2026

Submission for the **IRIS Systems Team Recruitment 2026**.

# My step-by-step approach

- Created docker-compose.yml
- Added db, rails-app (with replica:3), nginx, db volume and network.
- Removed all old containers
- Rebuilt using docker compose up --build
- ISSUE1: Host Name issue, since docker compose changed the names.
- FIX: Edited nginx.conf with just a single "rails" which would resolve all 3 replicas.
- Had to run migration again using "docker compose exec rails rails db:migrate".
 
