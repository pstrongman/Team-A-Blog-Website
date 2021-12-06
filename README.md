# NextJS API

## Deploy to Google Cloud Run 
  
[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

You can build a container for the API using

```
docker build -t next-api .
```

Then the container can be run using

```
docker run -d --name=my-next-api -p 3000:3000 next-api
```

Ensure that you're exposing port 3000, since that's what NextJS runs on in the container.

Access the UI at localhost:3000

Get a "Hello, World" API response at localhost:3000/api/hello