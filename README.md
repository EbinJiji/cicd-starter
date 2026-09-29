# CI/CD Starter

A tiny calculator project for learning CI with GitHub Actions.

Run tests locally:

    npm test

The pipeline lives in `.github/workflows/ci.yml` and runs the tests on
Node 20, 22 and 24 every time you push or open a pull request.

## Exercises

1. Push to GitHub and watch the **Actions** tab.
2. Break a test on purpose (e.g. make `add` return `a - b`), push, and watch CI fail. Then fix it.
3. Add a new function (e.g. `power`) with a test.
4. Protect `main`: Settings → Branches → require the CI check to pass before merging.
5. Add a lint step (ESLint) to the workflow.
6. Add a CI status badge to this README.
7. CD: add a Dockerfile and a job that builds and pushes an image to GitHub Container Registry.
