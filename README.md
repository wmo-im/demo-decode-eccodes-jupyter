# demo-decode-eccodes-jupyter

This repository provides docker and docker-compose files to run a jupyter-server that includes eccodes to demonstrate how to decode data in WMO standard binary formats.

## configuration

You need to set a token for the jupyter server. You can do this by setting the `JUPYTER_TOKEN` environment variable in a .env file.

```
JUPYTER_TOKEN=<your token>
```

## Run the server using docker compose

1. Install docker and docker compose
2. Clone this repository
3. Create a .env file defining `JUPYTER_TOKEN` (see above)
4. Run `docker compose up -d --build` from the directory where you cloned the repository

### Usage

1. Open a browser and go to `http://localhost:8088` (or the port you mapped in the docker-compose file)
2. Enter the token you set in the configuration
3. Browse to notebooks and open them
