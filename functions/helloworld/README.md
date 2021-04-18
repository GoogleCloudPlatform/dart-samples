# Hello world sample

This example handles HTTP GET requests by responding with 'Hello, World!'.

## Deploy the sample

You can deploy this function sample using gcloud:

```shell
gcloud beta run deploy helloworld-dart --source .
```

Using the `run.app` URL, from another terminal, test the sample:

```shell
RUN_URL=$(gcloud run services describe helloworld-dart --format json --format="value(status.address.url)")
curl $RUN_URL
```

Observe the response `Hello, World!`.
