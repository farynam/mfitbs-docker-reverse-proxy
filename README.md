# Docker reverse proxy


Reverse proxy for development purposes for example to run Wordpress without db url change etc. 
Substitutes docker www domain to chosen 'domain':'port'.


## Configuration

### Variables:

* TARGET_DOMAIN - domain to map from. ex. example.com
* SOURCE_DOMAIN - domain to map to example localhost
* SOURCE_DOMAIN_PORT - SOURCE_DOMAIN  port to map to

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
        env_file: .env #docker env file with env variables (TARGET_DOMAIN, SOURCE_DOMAIN, SOURCE_DOMAIN_PORT)
    
    
    
    
    
    
    
