# git-http

A bare bones git server over HTTP. It hosts a single repository that lives as long as the Docker process is alive.

To build the container and start it, run the following:

```sh
$ docker build -t git-http .
$ docker run -ti -p 8080:80 git-http
```

In another shell, you can add a remote and push to it.

```sh
$ git remote add origin http://localhost:8080
$ git push origin main
```

This setup is loosely based off [this guide](https://esc.sh/blog/setting-up-a-git-http-server-with-nginx/) and [this repository](https://github.com/cirocosta/gitserver-http).
