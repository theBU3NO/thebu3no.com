#!/bin/bash

if [ "$CF_PAGES_BRANCH" == "Preview" ]; then
  # Preview build command
  echo Building Hugo site on $CF_PAGES_BRANCH branch.
  hugo --baseURL https://dev.thebu3no-com.pages.dev
  
else
  # Production build command, uses baseurl from hugo.toml
  echo Building Hugo site on Production branch.
  hugo
fi
