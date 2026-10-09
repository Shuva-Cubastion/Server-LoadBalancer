# Apache Load Balancer Shop

## Architecture

```
Browser / curl
      |
      v
Apache :8000   (reverse proxy + load balancer, mod_proxy_balancer)
   |-- /       -> front page (Cloth and Shoes buttons)
   |-- /cloth/ -> clothcluster -> cloth1 :9081 , cloth2 :9082
   '-- /shoes/ -> shoescluster -> shoes1 :9083 , shoes2 :9084
```


## Done

- [x] Set up an Ubuntu VM in VirtualBox (everything runs inside the VM, not WSL)
- [x] Installed Apache (apache2)
- [x] Enabled modules: proxy, proxy_http, proxy_balancer, lbmethod_byrequests, slotmem_shm, headers
- [x] Created 4 backend servers: cloth1, cloth2, shoes1, shoes2
- [x] Configured reverse proxy for /cloth/ and /shoes/
- [x] Configured load balancing (by requests) between cloth1/cloth2 and shoes1/shoes2
- [x] Built a front page with Cloth and Shoes buttons that redirect to each section
- [x] Added X-Served-By header to show which server answered
- [x] Added Cache-Control no-store so every reload reaches the load balancer
- [x] Added setup.sh to install Apache and deploy everything
- [x] Added scripts to check that servers are running and to test load balancing
- [x] Added a script for password-less SSH authentication
- [x] Created the project folder with config, servers, scripts and README
- [x] Pushed the project to GitHub
