# CI/CD Starter

A tiny calculator web service for learning CI/CD with GitHub Actions.

Run tests locally:

    npm test

Run the server locally:

    node src/server.js
    # then open http://localhost:3000/add?a=2&b=3

## Pipeline

The pipeline lives in `.github/workflows/ci.yml`:

- **CI:** runs the tests on Node 20, 22 and 24 for every pull request and every push to `main`.
- **CD:** after the tests pass on `main`, builds a Docker image and publishes it to
  `ghcr.io/ebinjiji/cicd-starter` (tags: `latest` and the commit SHA). On pull requests
  the image is only built, to check the Dockerfile still works.

Run the published image:

    docker run -p 3000:3000 ghcr.io/ebinjiji/cicd-starter:latest

## Exercises

1. Push to GitHub and watch the **Actions** tab.
2. Break a test on purpose (e.g. make `add` return `a - b`), push, and watch CI fail. Then fix it.
3. Add a new function (e.g. `power`) with a test.
4. Protect `main`: Settings → Branches → require the CI check to pass before merging.
5. Add a lint step (ESLint) to the workflow.
6. Add a CI status badge to this README.
7. Deploy the published image to a hosting service (e.g. Render or Fly.io).
