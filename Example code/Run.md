Make build folder first!

```docker run --rm -it  -v ${PWD}:/project  jjveldscholten/picobuilder bash -c 'cd build &&  ls && cmake .. && make'    ```