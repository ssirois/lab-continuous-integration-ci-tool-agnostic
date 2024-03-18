# Continuous Integration Tools

An exploration to avoid coupling build logic to a specific CI tool.

## Mission

Build a Java application.

### Conditions of Success

- the tool chain to successfully build the source code is defined in
one and only one location
- the build process is defined in one and only one location
- the build process must be launch with a unique action

### Scope

The build process will be launch from three different context:

- on a personal workstation
- on GitLab CI
- on GitHub Actions

### Assumptions

- all contexts can manage containers one way or another
- all contexts can execute shell scripts

## Exploration Results

### Environment Initialization

`./scripts/init` shell script builds a Docker image that serves
as a reproducible environment where a single point of truth for all
dependencies is recorded in the `Dockerfile`.

A job has been defined for [GitLab CI](./.gitlab-ci.yml) and
[GitHub Actions](./.github/workflows/main.yml).

It can also be called from a personal workstation:

```terminal
$ ./scripts/init
```
