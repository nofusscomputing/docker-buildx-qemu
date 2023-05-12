<div align="center" width="100%">


# No Fuss Computing - Docker Buildx with QEMU

<br>

![Project Status - Active](https://img.shields.io/badge/Project%20Status-Active-green?logo=gitlab&style=plastic) 

<br>

![Gitlab forks count](https://img.shields.io/badge/dynamic/json?label=Forks&query=%24.forks_count&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F45926238%2F&color=ff782e&logo=gitlab&style=plastic) ![Gitlab stars](https://img.shields.io/badge/dynamic/json?label=Stars&query=%24.star_count&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F45926238%2F&color=ff782e&logo=gitlab&style=plastic) [![Open Issues](https://img.shields.io/badge/dynamic/json?color=ff782e&logo=gitlab&style=plastic&label=Open%20Issues&query=%24.statistics.counts.opened&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F45926238%2Fissues_statistics)](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/issues)



![GitHub forks](https://img.shields.io/github/forks/NofussComputing/docker-buildx-qemu?logo=github&style=plastic&color=000000&labell=Forks) ![GitHub stars](https://img.shields.io/github/stars/NofussComputing/docker-buildx-qemu?color=000000&logo=github&style=plastic) ![Github Watchers](https://img.shields.io/github/watchers/NofussComputing/docker-buildx-qemu?color=000000&label=Watchers&logo=github&style=plastic)
<br>

This project is hosted on [gitlab](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu) and has a read-only copy hosted on [Github](https://github.com/NofussComputing/docker-buildx-qemu).

----

**Stable Branch**

![Gitlab build status - stable](https://img.shields.io/badge/dynamic/json?color=ff782e&label=Build&query=0.status&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F45926238%2Fpipelines%3Fref%3Dmaster&logo=gitlab&style=plastic) ![branch release version](https://img.shields.io/badge/dynamic/yaml?color=ff782e&logo=gitlab&style=plastic&label=Release&query=%24.commitizen.version&url=https%3A//gitlab.com/nofusscomputing/projects/docker-buildx-qemu%2F-%2Fraw%2Fmaster%2F.cz.yaml) 

----

**Development Branch** 

![Gitlab build status - development](https://img.shields.io/badge/dynamic/json?color=ff782e&label=Build&query=0.status&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F45926238%2Fpipelines%3Fref%3Ddevelopment&logo=gitlab&style=plastic) ![branch release version](https://img.shields.io/badge/dynamic/yaml?color=ff782e&logo=gitlab&style=plastic&label=Release&query=%24.commitizen.version&url=https%3A//gitlab.com/nofusscomputing/projects/docker-buildx-qemu-%2Fraw%2Fdevelopment%2F.cz.yaml)

----
<br>

</div>

links:

- [Issues](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/issues)

- [Merge Requests (Pull Requests)](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu/-/merge_requests)



> This is a fork of https://gitlab.com/gdunstone/docker-buildx-qemu, which appears to be a fork of a fork. anyhow, updates are required. Credit to original and derivitive devs/contributors for getting it to the stage they had!!


## Contributing
All contributions for this project must conducted from [Gitlab](https://gitlab.com/nofusscomputing/projects/docker-buildx-qemu).

For further details on contributing please refer to the [contribution guide](CONTRIBUTING.md).


## Other

This repo is release under this [license](LICENSE)

<details>
<summary>Original README.md</summary>

# docker-buildx-qemu

> this is a fork of https://gitlab.com/ericvh/docker-buildx-qemu
> it has been modified to not depend on a gitlab-ci template repository.


This Debian-based image allows you to easily build cross-platform images.
It's been tested with GitLab CI on gitlab.com, but it should work anywhere that docker-in-docker already works, and with a binfmt_misc enabled kernel.

## Example Usage

This GitLab example should give you an idea of how to use the image.

Dockerfile
```dockerfile
FROM alpine

RUN echo "Hello, my CPU architecture is $(uname -m)"
```

.gitlab-ci.yml
```yaml
variables:
  CI_BUILD_ARCHS: "linux/arm/v7,linux/arm64,linux/amd64"
  CI_BUILD_IMAGE: "registry.gitlab.com/ericvh/docker-buildx-qemu"

build:
  image: $CI_BUILD_IMAGE
  stage: build
  services:
    - name: docker:dind
      entrypoint: ["env", "-u", "DOCKER_HOST"]
      command: ["dockerd-entrypoint.sh"]
  variables:
    DOCKER_HOST: tcp://docker:2375/
    DOCKER_DRIVER: overlay2
    # See https://github.com/docker-library/docker/pull/166
    DOCKER_TLS_CERTDIR: ""
  retry: 2
  before_script:
    - docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
    # Use docker-container driver to allow useful features (push/multi-platform)
    - update-binfmts --enable # Important: Ensures execution of other binary formats is enabled in the kernel
    - docker buildx create --driver docker-container --use
    - docker buildx inspect --bootstrap
  script:
    - docker buildx ls
    - docker buildx build --platform $CI_BUILD_ARCHS --progress plain --pull -t "$CI_REGISTRY_IMAGE" --push .
```

And the (partial) output:
```
#6 [linux/amd64 2/2] RUN echo "Hello, my CPU architecture is $(uname -m)"
#6 0.120 Hello, my CPU architecture is x86_64
#6 DONE 0.3s

#8 [linux/arm/v7 2/2] RUN echo "Hello, my CPU architecture is $(uname -m)"
#8 0.233 Hello, my CPU architecture is armv7l
#8 DONE 0.2s
```


</details>