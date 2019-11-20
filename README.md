# Docker reverse proxy


Reverse proxy for development purposes for example Wordpress etc. Substitutes docker www domain to localhost:port.


## Configuration

### Variables:

* TARGET_DOMAIN - domian to map from. ex. example.com
* LOCALHOST_PORT - local port to map to

## Example


    proxy:
        image: httpd_reverse_proxy:latest
        depends_on:
          - wordpress
        ports:
          - "${LOCALHOST_PORT}:80"
        restart: always
        networks:
          - examplenetwork
        env_file: .env #docker env file with env variables
    
    
    
    
    
    
    
