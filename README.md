# Nginx Log Analyser

A simple Bash-based tool for analyzing NGINX access logs and quickly identifying the most active sources in your web traffic.

## What it does

This script reads an `nginx.log` file and provides a quick summary of:

- Top 5 IP addresses by request count
- Top 5 requested paths
- Top 5 HTTP response status codes
- Top 5 user agents

It is useful for basic traffic analysis, spotting suspicious activity, and understanding which endpoints are most frequently accessed.

## Requirements

- Bash shell
- A standard NGINX access log file named `nginx.log` in the same directory as the script

## Usage

1. Make sure your log file is available as `nginx.log`.
2. Run the script:

```bash
chmod +x nginx-log-analyser.sh
./nginx-log-analyser.sh
```

## Example output

```text
Top 5 IP Addresses with the most requests:
  120 192.168.1.10
  95 10.0.0.8
  70 203.0.113.42

Top 5 Most Requested Paths:
  110 /index.html
  87 /api/users
  63 /assets/app.js

Top 5 Response Status Codes:
  200 145
  404 22
  500 5

Top 5 User Agents:
  80 Mozilla/5.0
  40 curl/8.0.0
  12 Googlebot/2.1
```

## Notes

- This project is designed for quick analysis and is intentionally lightweight.
- It works best with standard NGINX access logs in a common combined format.
- For larger or more advanced analysis, you may want to use tools like `awk` with more filters, or switch to Python/Go for richer reporting.


Project Idea: https://roadmap.sh/projects/nginx-log-analyser