#!/bin/bash

echo Current branch: $CF_PAGES_BRANCH

  # This is needed for hugo to create the correct links stylesheets and other files when switching between Production ("live" GitHub branch) and Preview ("dev" GitHub branch) domain URLs.

if [ "$CF_PAGES_BRANCH" == "dev" ]; then
  # Preview build command, uses Cloudflare pages alias url for baseURL.
  echo "Building Hugo site with Preview ("dev") configuration branch."
  hugo --baseURL https://dev.thebu3no-com.pages.dev
  
else
  # Production build command, uses baseURL from hugo.toml
  echo "Building Hugo site with Production ("live") configuration."
  hugo
fi
