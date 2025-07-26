#!/bin/bash
# Simulate Git + SSL + Domain misconfiguration

echo "=== Simulating Git clone from HTTPS with invalid SSL ==="
git config --global http.sslVerify true
GIT_SSL_NO_VERIFY=0

# Attempt to clone from a dummy domain (simulate)
git clone https://invalid.domain.com/repo.git 2> error.txt || echo "Git clone failed as expected"

echo "=== Simulation complete. Check error.txt for simulated output ==="
