## pfSense SLL certificate management

First create a Certificate Signing Request under `System/Certificates/Certificates`

1. Set **Method**: `Create a Certificate Signing Request`
2. Set **Descriptive name**
3. Under **Key type** increse bits to `4096`
4. Set **Common Name** e.g `pf.local.xy.com` (host + domain name)
5. Select **Certificate Type** to `Server Certificate`
6. For **Alternative Names** select `FQDN or Hostname` and copy **Common Name** into **Value** field.
7. Save signing request