Bash
#!/bin/bash
set -e

echo "Current branch: $CF_PAGES_BRANCH"

if [ "$CF_PAGES_BRANCH" = "dev" ]; then
  echo 'Building Hugo site with Preview ("dev") configuration branch.'
  hugo --baseURL "https://dev.thebu3no-com.pages.dev/"
else
  echo 'Building Hugo site with Production ("live") configuration.'
  hugo
fi
