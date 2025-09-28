# jekyll-docker
Docker file for latest jekyll.

To build:

```bash
docker buildx build -t bertold/jekyll:4.4.1 --platform linux/amd64,linux/arm64 --push .
```

