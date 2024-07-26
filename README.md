# Basic Auth Proxy 🔐

This is a basic example on how to setup a basic auth reverse proxy for your private services on [Sliplane](https://sliplane.io)

## Setup

First, deploy the service that you want to protect as a private HTTP service on Sliplane. Once deployed, you can find the URL of the service in the service details page. Copy the URL and save it for later.

Now, fork this repository to your own account and give Sliplane access to the forked repository.

Then deploy the service to Sliplane, as a public HTTP service. Set the health check path to `/health` and the following environment variables (make sure to replace the values with your own):

```
PORT=8080 # dont change this
HTTP_BASIC_AUTH_USER=yourusername
HTTP_BASIC_AUTH_PASSWORD=yourpassword
PRIVATE_WEBSITE_URL=the-url-of-your-private-service, including protocol and port
```

Deploy your service!

Congratulations! You have now setup a basic auth reverse proxy for your private service :)

After opening the URL of your new auth proxy service you should be prompted to enter your username and password that you defined in the environment variables.

![auth prompt](screenshot.png|width=200)

**If you need any help, feel free to open an issue or through our support chat on [Sliplane](https://sliplane.io).**
