# Sinatra + ARC Quickstart

This repo contains a minimal Sinatra app and a GitHub Actions workflow configured to run on a private Actions Runner Controller (ARC) runner scale set.

## App
- Ruby 3.2.x
- Sinatra 3
- RSpec tests

## Local run

```bash
bundle install
rackup # http://localhost:9292
```

## Tests

```bash
bundle exec rspec
```

## GitHub Actions with ARC

The workflow `.github/workflows/ci.yml` uses a self-hosted ARC runner scale set. Set the `runs-on` to your installation name from your Helm command.

Options:
- Set a repository/organization variable `ARC_RUNS_ON` to your scale set name, or
- Edit the workflow file and replace `arc-runner-set` with your scale set name.

### ARC quick steps (summary)
1. Install the ARC controller via Helm (namespace `arc-systems`).
2. Install a runner scale set via Helm with `INSTALLATION_NAME` (e.g. `arc-runner-set`) and `GITHUB_CONFIG_URL` pointing to your repo/org.
3. Trigger the workflow to see a runner pod spin up in your runner namespace (e.g. `arc-runners`).

Refer to GitHub Docs Quickstart for details: https://docs.github.com/en/actions/tutorials/use-actions-runner-controller/quickstart
