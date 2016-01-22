squid
=====

Run squid as a caching proxy in a docker container:

    docker run -d -p 3128:3128 poklet/squid

And then time a few http requests through the proxy with something like:

    time curl --proxy http://localhost:3128 http://SOME-BIG-FILE



Usage:
      docker run -d --name="docker-squid" [-e "CACHE_PEER=user:escape_password@parent.proxy.example.com:8080"] -p <HostPort>:3128 akrambenaissi/docker-squid
         - Set CACHE_PEER to an url of your parent (upstream) proxy. Supports login authentication.

Examples:
     docker run -d --name="docker-squid" -p 3128:3128 \
                -e "CACHE_PEER=user:p%42ssword@otherproxy:8080" \
               akrambenaissi/docker-squid


