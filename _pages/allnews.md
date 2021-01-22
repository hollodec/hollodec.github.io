---
title: "DEC @ RHUL - News"
layout: textlay
excerpt: "News from the Democracy and Elections Centre at Royal Holloway"
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p>{{ article.date }} <br>
<em>{{ article.headline | markdownify }}</em></p>
{% endfor %}
