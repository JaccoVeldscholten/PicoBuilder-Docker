Docker for Pico Builder (RP2040)
==========

![][docker-build] ![][docker-pulls] ![][docker-image-size]

Build environment for Raspberry Pi Pico (RP2040) C/C++ SDK included

```sh
docker pull jjveldscholten:picobuilder:latest
```

## Usage

Make build folder in source dir or adjust bash from docker container

1. Pull image from repo
2. Run following comment from project folder 

```docker run --rm -it  -v ${PWD}:/project  jjveldscholten/picobuilder bash -c 'cd build &&  ls && cmake .. && make'    ```


[docker-build]: https://shields.io/docker/cloud/build/jjveldscholten/picobuilder?style=flat-square
[docker-pulls]: https://shields.io/docker/pulls/jjveldscholten/picobuilder?style=flat-square
[docker-image-size]: https://shields.io/docker/image-size/jjveldscholten/picobuilder?style=flat-square

