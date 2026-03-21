# iris-sys-recs-2026 ROUND 2  
Submission for the **IRIS Systems Team Recruitment 2026**.

# Completed Tasks  

Below are the tasks completed:

---

## Reverse Proxy, Load Balancing & Access Control  

- Configured NGINX to load balance across 3 Rails application replicas  
- Set up upstream blocks with health checks and automatic failover  
- Enabled graceful NGINX reloads without dropping active connections  
- Implemented rate limiting per IP with proper burst handling (returns **429** on limit exceed)  
- Configured subdomain-based routing (e.g., `app.localhost`, `grafana.localhost`)  
- Secured internal services like Grafana using HTTP Basic Authentication at NGINX level  

---

## Shared Storage via NFS  

- Deployed NFS server container with proper export configuration  
- Mounted shared directory across all 3 Rails replicas  
- Verified cross-replica consistency (file written from one replica accessible from others)  
- Ensured persistence across container restarts  

---

## Monitoring Stack  

- Configured Prometheus to scrape:  
  - Node Exporter (host metrics)  
  - cAdvisor (container metrics)  
  - NGINX metrics  
  - Rails application replicas  
- Set up Grafana dashboards displaying:  
  - CPU & memory usage  
  - Container restarts  
  - Request rate  
  - Error rate  
- Restricted direct port exposure of Prometheus & Grafana (accessible only via NGINX)  

---

## Bonus

- Instrumented application metrics using a Prometheus client library  
- Integrated Loki + Promtail for centralized log aggregation  
