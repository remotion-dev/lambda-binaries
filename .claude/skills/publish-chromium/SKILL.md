---
name: publish-chromium
description: Build and publish the Remotion Lambda layer zips (chromium, fonts, emoji-apple, emoji-google, cjk) from this repo to s3://remotionlambda-binaries-$region across all AWS regions. Use when the user wants to publish, release, upload, or ship a new version of the chromium binaries / lambda layers from the lambda-binaries repo.
---

# Publish Chromium Lambda Layers

Publishes the layer zips in this repo to S3 across all Remotion regions. Only runs from the `lambda-binaries` repo root.

## Step 1 — Verify AWS account (blocking)

Run:

```bash
aws sts get-caller-identity --query Account --output text
```

The output **must** be exactly `678892195805` (remotion-aws-admin@remotion.dev).

- If it prints anything else, **stop** and tell the user which account they're on. Do not attempt to switch accounts automatically — ask them to re-authenticate (e.g. via SSO / `aws configure sso login` / setting `AWS_PROFILE`).
- If the command errors (no credentials, expired token), **stop** and report the error verbatim.

Do not proceed until this check passes.

## Step 2 — Bump the version

`make.sh` and `upload.sh` reference a version like `v15` in the output zip names (e.g. `remotion-layer-chromium-v15-arm64.zip`). Each new release bumps this number.

Ask the user what the new version should be (e.g. `v15` → `v16`), then `grep -n "v15" make.sh upload.sh` and replace the version string in both files. Confirm with the user before editing if anything is ambiguous.

## Step 3 — Build the layer zips

```bash
bash make.sh
```

This produces five files in `out/`:
- `remotion-layer-chromium-vXX-arm64.zip`
- `remotion-layer-fonts-vXX-arm64.zip`
- `remotion-layer-emoji-apple-vXX-arm64.zip`
- `remotion-layer-emoji-google-vXX-arm64.zip`
- `remotion-layer-cjk-vXX-arm64.zip`

Verify all five exist before uploading.

## Step 4 — Test upload to eu-central-1

```bash
bash upload.sh --test
```

The `--test` flag uploads only to `eu-central-1`. **Stop here** and ask the user to verify the layer works (rendering a test job against the eu-central-1 layer) before fanning out.

## Step 5 — Full upload after user confirms

Only after the user explicitly confirms the test passed:

```bash
bash upload.sh
```

This copies each zip to `s3://remotionlambda-binaries-$region/` across 24 regions. The script runs `set -e`, so it stops on the first failure. If a region fails (often opt-in regions like `af-south-1`, `ap-east-1`, `me-south-1`, `eu-south-1`, `eu-central-2`, `ap-southeast-4`, `ap-southeast-5`), report which region failed and ask the user how to proceed rather than silently skipping.

## Step 6 — Confirm

After the full upload, report:
- Confirmation that all 24 regions uploaded
- The five zip filenames (with version) that were published
- Sizes (`ls -lh out/`) so the user can sanity-check
