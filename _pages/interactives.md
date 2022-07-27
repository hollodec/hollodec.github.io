---
title: "DEC @ RHUL - Interactives"
layout: piclay
excerpt: "DEC @ RHUL - Interactives"
permalink: /interactives/
---

# Interactives
{: .page-title}


<div class="row">
{% for article in site.data.interactives %}
{% if article.interactive_url contains "http" %}
<div class="col-md-3">
    <div class="article">
	<a href = "{{ article.interactive_url }}">
		<img class="article-thumb" src="{{ site.url }}{{ site.baseurl}}/{{ article.image_url }}" alt="{{ article.headline | strip_html | truncate: 30 }}">
	</a>
	<div class="article-excerpt">
		<a href = "{{ article.interactive_url }}">
			{{ article.headline | markdownify }}
		</a>
	</div>
<p class="article-date"><strong>{{ article.date | date: "%-d %B %Y" }}</strong></p>
    </div>
</div>
{% else %}
<div class="col-md-3">
    <div class="article">
	<a href = "{{ site.url }}{{ site.baseurl}}/_pages/{{ article.interactive_url }}">
		<img class="article-thumb" src="{{ site.url }}{{ site.baseurl}}/{{ article.image_url }}" alt="{{ article.headline | strip_html | truncate: 30 }}">
	</a>
	<div class="article-excerpt">
		<a href = "{{ site.url }}{{ site.baseurl}}/_pages/{{ article.interactive_url }}">
			{{ article.headline | markdownify }}
		</a>
	</div>
<p class="article-date"><strong>{{ article.date | date: "%-d %B %Y" }}</strong></p>
    </div>
</div>
{% endif %}
{% endfor %}
</div>

