---
layout: default
title: Blogs
---
<div markdown=1>

# Latest Posts
{: .page-title }

<ul>
  {% for post in site.posts %}
    <li>
      <h2><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>

</div>
