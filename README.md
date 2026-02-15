# iris-sys-recs-2026
Submission for the **IRIS Systems Team Recruitment 2026**.

# Completed Tasks

Below are the branches corresponding to each task:

---

## Dockerize Rails Application  
**Branch:** [`dockerize`](../../tree/dockerize)

- Created Dockerfile  
- Built Rails image  
- Ran Mysql container, connected via docker network
- Done without compose

---

## Multi-Container Setup (Rails + MySQL)  
**Branch:** [`three_container_nginx`](../../tree/three_container_nginx)

- Launched Rails container   
- Connected via Docker network  
- Db port not exposed externally 

---

## Nginx Reverse Proxy  
**Branch:** [`nginx`](../../tree/nginx)

- Configured Nginx as reverse proxy  
- Exposed application at port 80  
- Removed direct Rails exposure  

---

## Load Balancing Across 3 Rails Containers  
**Branch:** [`three_container_nginx`](../../tree/three_container_nginx)

- Scaled Rails to 3 containers  
- Configured upstream block in Nginx   

---

## Persistence (Database & Config)  
**Branch:** [`persistence`](../../tree/persistence)

- Implemented Docker named volume for MySQL  
- Ensured DB data persists after container removal  
- Used bind mount for Nginx configuration 

---

## Docker Compose Integration  
**Branch:** [`compose`](../../tree/compose)

- Combined all the above tasks in Docker compose  
- Network, services, volumes declared explicitly  

---

## Rate Limiting in Nginx  
**Branch:** [`rate-limit`](../../tree/rate-limit)

- Implemented request limiting per IP  
- Configured burst handling   

---

## Monitoring (Prometheus + Grafana + cAdvisor)  
**Branch:** [`monitoring`](../../tree/monitoring)

- Added cAdvisor for container metrics  
- Configured Prometheus  
- Connected Grafana for visualization  
- Verified CPU & memory monitoring per container  

---

