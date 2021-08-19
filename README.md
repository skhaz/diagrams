# Dockerfile for [diagrams](https://diagrams.mingrammer.com/)

### Usage

It is more convinient to use this Docker image with [entr](https://github.com/clibs/entr):

First, set a shell variable containing the diagram script name

``` shell
export DIAGRAM=diagram.py
```

Then, use entr to run against the script every time that you change it

``` shell
echo $DIAGRAM | entr docker run --rm -v $PWD:/data skhaz/diagrams:latest python $DIAGRAM
```
