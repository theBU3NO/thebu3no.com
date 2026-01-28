#!/bin/bash

if [ "$CF_PAGES_BRANCH" == "Preview" ]; then
  # Preview build command
  hugo --baseURL https://dev.thebu3no-com.pages.dev
else
  # Production build command, uses baseurl from hugo.toml
  hugo
fi
