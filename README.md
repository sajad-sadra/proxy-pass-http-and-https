# Proxy Pass http and https
Nginx proxy pass all inbound http and https traffic to their destination according to their domain.<pr/>
<img src="https://img.techpowerup.org/200709/4waystoreverseproxywithnginx-overview-1-1.png">

How to use
=========
Default Enviroment variable <b><code>RESOLVER</code></b> is <code>8.8.8.8</code> .
Change it if you want.

Prepaired docker image
-----------------------
Enter this command in the host with <a href="https://docs.docker.com/engine/install/">docker installed</a>.
<pre><code>
docker run --rm -d \ 
    -p 443:443 -p 80:80 \
    -e RESOLVER=8.8.8.8 \
    sajadsadra/proxy-pass-nginx
</code></pre>

Make your own
-------------
clone the repository and make your change then run this commnd.
<code><pre>
docker-compose up --build -d
</pre></code>