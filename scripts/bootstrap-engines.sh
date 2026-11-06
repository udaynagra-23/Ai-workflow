#!/usr/bin/env bash
set -Eeuo pipefail

# ThinkVerse engine bootstrap.
# Clones upstream projects into ignored local folders; does not merge their
# dependencies into the main workflow environment or install paid providers.
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
UPSTREAM="$ROOT/tools/upstream"
START_KOKORO=0
if [[ "${1:-}" == "--start-kokoro" ]]; then START_KOKORO=1; fi

need() { command -v "$1" >/dev/null 2>&1 || { echo "Missing prerequisite: $1"; exit 1; }; }
need git
mkdir -p "$UPSTREAM"

clone_or_update() {
  local name="$1" url="$2"
  local dest="$UPSTREAM/$name"
  if [[ -d "$dest/.git" ]]; then
    echo "Updating $name..."
    git -C "$dest" pull --ff-only
  elif [[ -e "$dest" ]]; then
    echo "Refusing to overwrite non-git path: $dest" >&2
    exit 1
  else
    echo "Cloning $name..."
    git clone --depth 1 "$url" "$dest"
  fi
}

clone_or_update "stickman-video-director" "https://github.com/kaomei/stickman-video-director.git"
clone_or_update "Kokoro-FastAPI" "https://github.com/remsky/Kokoro-FastAPI.git"
clone_or_update "MoneyPrinterTurbo" "https://github.com/harry0703/MoneyPrinterTurbo.git"

echo
echo "Source checkouts ready under tools/upstream/."
echo "Stickman Autopilot requires an AI coding agent with terminal and file access."
echo "MoneyPrinterTurbo dependencies are intentionally NOT installed; assess them in an isolated environment."

if [[ "$START_KOKORO" -eq 1 ]]; then
  need docker
  if docker container inspect thinkverse-kokoro >/dev/null 2>&1; then
    echo "Kokoro container already exists."
    docker start thinkverse-kokoro >/dev/null
  else
    echo "Starting Kokoro CPU container (first run downloads a large image)."
    docker run -d --name thinkverse-kokoro -p 8880:8880 --restart unless-stopped ghcr.io/remsky/kokoro-fastapi-cpu:latest
  fi
  echo "Kokoro API: http://localhost:8880/docs"
  echo "If Codespaces port forwarding is enabled, open port 8880 privately."
fi

echo
echo "Bootstrap finished. This does NOT mean a video was rendered."
echo "Next: read each upstream README/SKILL, verify resource needs, then run the 30-second sample."
