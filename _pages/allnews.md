---
title: "DEC @ RHUL - News"
layout: textlay
excerpt: "News from the Democracy and Elections Centre at Royal Holloway"
sitemap: false
permalink: /allnews.html
---

# News
{: .page-title}

<div class="row">
{% for article in site.data.news %}
<div class="col-md-3">
    <div class="article">
        <img class="article-thumb" src="{{ article.image_url }}" alt="{{ article.headline | strip_html | truncate: 30 }}">
        <div class="article-excerpt">{{ article.headline | markdownify }}</div>
        <p class="article-date"><strong>{{ article.date | date: "%-d %B %Y" }}</strong></p>
    </div>
</div>
{% endfor %}
</div>
