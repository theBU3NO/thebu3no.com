#!/bin/bash

if [ "$CF_PAGES_BRANCH" = "Preview" ]; then
  # Production build command
  hugo --baseURL https://dev.thebu3no-com.pages.dev
else
  # Preview/staging build command (e.g., including drafts)
  hugo
fi
