# mdBook Docker Image

Docker image for [mdBook](https://rust-lang.github.io/mdBook)

## Usage

### For GitLab CI

```yml
# .gitlab-ci.yml
release-docs:
  stage: deploy
  image: huacnlee/mdbook:latest
  script:
    - mdbook build
  rules:
    - if: $CI_COMMIT_BRANCH == "master"
      changes:
        - docs/**/*
```
