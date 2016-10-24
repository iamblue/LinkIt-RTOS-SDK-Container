# Docker container for LinkIt RTOS SDK

=====

### Setup docker Env:

Please see [here](https://www.docker.com/).

### git clone this repo:

```
git clone https://github.com/iamblue/LinkIt-RTOS-SDK-Container.git linkit
cd ./linkit
```

### Install this docker container:

```
docker build -t linkit-rtos-sdk .
```

### Run docker script:

```
docker run -it linkit-rtos-sdk /bin/bash
```

### Go into docker , and build your LinkIt RTOS SDK code:

```
cd ~
./build.sh mt7687_hdk iot_sdk_demo
```
