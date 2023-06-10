# What if a solved all the exercism ruby path ? 🤔

But now the goal is to solve one exercise everyday, sometimes it might come from Exercism, sometimes from LeetCode, Hackerrank, or others that I just remmember.

Right now, all exercises are from https://exercism.io/, and i do not plan to solve one everyday hihi but who knows ?!

![](https://i.gifer.com/9TLY.gif)

## Dockerfile config

In order to make it easier to run locally, I'm adding a Dockerfile.

### Build image

```
sudo docker build -t almost-everyday-a-ruby-code .
```

the `-t` command adds a name to the docker image.

### Run ruby linter

```
docker run --rm --volume ${PWD}:/app almost-everyday-a-ruby-code rubocop ./ruby
```

### Run ruby tests

```
docker run --rm --volume ${PWD}:/app almost-everyday-a-ruby-code sh -c "cd ruby; rake"
```

### Open shell

```
docker run -it --volume ${PWD}:/app almost-everyday-a-ruby-code sh
```

We use `--volume` in order to use the correct updated files in the image. This was made to be a simple usage of Docker, usually for this purpose we use Docker Compose.
# almost-everyday-a-ruby-code
