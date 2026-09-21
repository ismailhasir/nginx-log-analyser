#!/bin/bash

# Top 5 IP Adresses with the most requests
echo "Top 5 IP Addresses with the most requests:"
awk '{print $1}' nginx.log | sort | uniq -c | sort -nr | head -n 5


# Top 5 Most Requested Paths
echo "Top 5 Most Requested Paths:"
awk '{print $7}' nginx.log | sort | uniq -c | sort -nr | head -n 5


# Top 5 Response Status Codes
echo "Top 5 Response Status Codes:"
awk '{print $9}' nginx.log | sort | uniq -c | sort -nr | head -n 5


# Top 5 User Agents
echo "Top 5 User Agents:"
awk '{
    fullValue = ""
    for (i = 12; i <= NF; i++)
        fullValue = fullValue " " $i
    print fullValue
}' nginx.log | sort | uniq -c | sort -nr | head -n 5
