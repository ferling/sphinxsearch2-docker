A simple docker image to run older version of sphinxsearch in a docker image.

Example docker compose file:

```
services:
  sphinxsearch:
    image: sphinxsearch2
    container_name: sphinxsearch
    volumes:
      - ./sphinx.conf:/etc/sphinxsearch/sphinx.conf
      - /var/log/sphinxsearch:/var/log/sphinxsearch
      - /var/lib/sphinxsearch:/var/lib/sphinxsearch
    restart: unless-stopped
    ports:
      - "127.0.0.1:9306:9306"
      - "127.0.0.1:9312:9312"
```
