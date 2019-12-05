# dse_builder_docker
Dockerfiles for assisting in development at FSSA DSE

### Usage

```bash
docker build -t dse_builder_docker .
docker run -it --rm dse_builder_docker
```
### Notes

Base image is ```Alpine```.  This means that installs are performed as

```bash
$ apk add some-package
```

and not

```python
$ apt-get install some-package
```