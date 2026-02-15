# iris-sys-recs-2026

Submission for the **IRIS Systems Team Recruitment 2026**.

# My step-by-step approach

- Removed the rails-app container, created 3 new named rails-app-1,2,3
- Updated nginx.conf with the 3 containers under http
- Verified all 3 running using
- docker exec -it nginx ping rails-app-1
- docker exec -it nginx ping rails-app-2
 - docker exec -it nginx ping rails-app-3
- Also Verified by stopping one of the containers.



