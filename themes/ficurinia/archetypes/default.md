---
title: "{{ replace (replace .Name "-" " ") "_" " " | title }}"
date: {{ .Date }}  #YYYY-MM-DDTHH:MM:SS-05:00   #add time to arrange multiple posts in a day
tags:
  - 🌐website
  - 🎮video games
  - 📺youtube
image: /robits/sunglasses.svg  #angry, astonished, clown, content, crying, dumb, evil, flipped, glad, grin, happy, kiss, love, nerd, nervous, neutral, pirate, problematic, rip, sad, satisfied, silenced, sleep, stunned, sunglasses, surprised, tear, tongue, upset, wink
featured: true  #pin to home
weight: 0  #add weight to pin to top or sort pins
draft: true
---

text

example youtube embed for youtube.com/watch?v=6z795NiFZiU

{{< youtube 6z795NiFZiU >}}