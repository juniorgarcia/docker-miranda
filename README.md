# About

This is a very simple Docker image for [Miranda language](http://miranda.org.uk/).

This image was not made thinking about production environment, only for
recreational purposes.

## How to use it

Simply run `$ docker run -it miranda` then run `mira` to start the interpreter.

### Disclaimer

`mira` is not configured as value to `CMD` on Dockerfile because this is a
wrapped version into `rlwrap`
(see [here](https://github.com/juniorgarcia/docker-miranda/blob/master/mira.sh#L2)).
This avoids navigation problems using arrow while using the interpreter.

---

Miranda logo designed by Fritz Ruehr.

Miranda™ and the Miranda logo are trademarks of Research Software Limited.
