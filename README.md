# iris-sys-recs-2026

Submission for the **IRIS Systems Team Recruitment 2026**.

# My step-by-step approach

- Removed old rails container. Made a new one without exposing port.
- created nginx.conf
- ISSUE1: Error: Make sure hostnames are valid
- FIX: fixed it by adding "proxy_set_header Host $host;" under location, to preserve original host header.
- Application runs at port 80.

