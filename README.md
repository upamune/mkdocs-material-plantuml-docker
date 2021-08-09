# mkdocs-material-plantuml-docker

![GitHub](https://img.shields.io/github/license/upamune/mkdocs-material-plantuml-docker?style=flat-square)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/upamune/mkdocs-material-plantuml-docker?style=flat-square)
![GitHub Release Date](https://img.shields.io/github/release-date/upamune/mkdocs-material-plantuml-docker?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/upamune/mkdocs-material-plantuml?style=flat-square)

You don't need to run the PlantUML server to render diagrams.

## Build

```bash
$ docker run --rm -v $(pwd):/docs upamune/mkdocs-material-plantuml:latest build
$ docker run --rm -v $(pwd):/docs ghcr.io/upamune/mkdocs-material-plantuml:latest build
```

## Serve

```bash
$ docker run --rm -p 8000:8000 -v $(pwd):/docs upamune/mkdocs-material-plantuml:latest
$ docker run --rm -p 8000:8000 -v $(pwd):/docs ghcr.io/upamune/mkdocs-material-plantuml:latest # OR GitHub Packages
```

## Example

https://mkdocs-material-plantuml-docker-example.netlify.app/

Repository: [upamune/mkdocs-material-plantuml-docker-example](https://github.com/upamune/mkdocs-material-plantuml-docker-example)

## Acknowledgements

- https://github.com/peaceiris/docker-mdbook
- https://github.com/mikaelhg/mkdocs-material-plantuml
