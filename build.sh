#!/bin/bash

echo Current branch: $CF_PAGES_BRANCH

if [ "$CF_PAGES_BRANCH" == "Preview" ]; then
  # Preview build command
  echo Building Hugo site with Preview configuration branch.
  hugo --baseURL https://dev.thebu3no-com.pages.dev
  
else
  # Production build command, uses baseurl from hugo.toml
  echo Building Hugo site with Production configuration.
  hugo
fi
