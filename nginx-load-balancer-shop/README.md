# Nginx Load Balancer Shop

## Architecture

```
Browser / curl
      |
      v
nginx :80   (reverse proxy + load balancer)
   |-- /       -> front page (Cloth and Shoes buttons)
   |-- /cloth/ -> cloth_pool -> cloth1 :8081 , cloth2 :8082
   '-- /shoes/ -> shoes_pool -> shoes1 :8083 , shoes2 :8084
```
## Done

- [x] Set up an Ubuntu VM in VirtualBox (everything runs inside the VM, not WSL)
- [x] Installed nginx
- [x] Created 4 backend servers: cloth1, cloth2, shoes1, shoes2
- [x] Configured reverse proxy for /cloth/ and /shoes/
- [x] Configured load balancing (round robin) between cloth1/cloth2 and shoes1/shoes2
- [x] Built a front page with Cloth and Shoes buttons that redirect to each section
- [x] Added X-Served-By header to show which server answered
- [x] Added Cache-Control no-store so every reload reaches the load balancer
- [x] Tested load balancing with curl and Firefox (Cloth1, Cloth2, Cloth1, Cloth2 ...)
- [x] Tested failover (one backend down, the other keeps serving)
- [x] Checked that nginx and all backend ports are running
- [x] Set up password-less SSH authentication
- [x] Created the project folder with config, pages, setup.sh and README
- [x] Pushed the project to GitHub
