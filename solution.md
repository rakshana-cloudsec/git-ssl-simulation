# Solution: Git + SSL + Domain Error

## 🔍 Problem
Git clone fails due to an SSL certificate validation error. This usually happens when:
- The domain's SSL certificate is self-signed or expired.
- DNS resolution fails.
- Git is unable to verify the CA root certificate.

## ✅ Steps to Fix

1. **Verify domain DNS:**
   ```
   nslookup invalid.domain.com
   ```

2. **Temporarily disable SSL verification (not recommended for production):**
   ```bash
   git config --global http.sslVerify false
   ```

3. **(Best Practice) Add the missing CA certificate or fix the DNS:**
   - Ensure the domain has a valid SSL cert from Let's Encrypt or similar.
   - Use `curl -Iv https://domain.com` to debug the cert.

## 📦 Outcome
With proper DNS and a trusted SSL cert, Git clone works securely.
