---
title: "DEC @ RHUL - Publications"
layout: gridlay
excerpt: "DEC @ RHUL -- Publications"
sitemap: false
permalink: /publications/
---
# Publications
{: .page-title}

<div class="page-intro" markdown=1>

##### This page lists peer-reviewed publications written by members of the Democracy and Elections Centre over the last five years.

If you would like to read a publication written by a member of the centre but are unable to access a pay-walled copy, please contact the author. Authors can usually share pre-print or open access versions of their works. 

</div>

<h5>2022</h5>
<ul>
{% for paper in site.data.biblio %}
{% if paper.YEAR == 2022 %}
<li>
      {{ paper.AUTHOR }}
      "{{ paper.TITLE }}",
      <em>{{ paper.JOURNAL }}</em>,
      {{ paper.YEAR | round }},
      {% if paper.VOLUME %} <strong>{{ paper.VOLUME }}</strong>,{% endif %}
      {{ paper.PAGES }}.
      <a href="http://dx.doi.org/{{ paper.DOI }}">[DOI]</a>
	  </li>
	  {% endif %}
{% endfor %}
</ul>

<h5>2021</h5>
<ul>
{% for paper in site.data.biblio %}
{% if paper.YEAR == 2021 %}
<li>
      {{ paper.AUTHOR }}
      "{{ paper.TITLE }}",
      <em>{{ paper.JOURNAL }}</em>,
      {{ paper.YEAR | round }},
      {% if paper.VOLUME %} <strong>{{ paper.VOLUME }}</strong>,{% endif %}
      {{ paper.PAGES }}.
      <a href="http://dx.doi.org/{{ paper.DOI }}">[DOI]</a>
	  </li>
	  {% endif %}
{% endfor %}
</ul>

<h5>2020</h5>
<ul>
{% for paper in site.data.biblio %}
{% if paper.YEAR == 2020 %}
<li>
      {{ paper.AUTHOR }}
      "{{ paper.TITLE }}",
      <em>{{ paper.JOURNAL }}</em>,
      {{ paper.YEAR | round }},
      {% if paper.VOLUME %} <strong>{{ paper.VOLUME }}</strong>,{% endif %}
      {{ paper.PAGES }}.
      <a href="http://dx.doi.org/{{ paper.DOI }}">[DOI]</a>
	  </li>
	  {% endif %}
{% endfor %}
</ul>

<h5>2019</h5>
<ul>
{% for paper in site.data.biblio %}
{% if paper.YEAR == 2019 %}
<li>
      {{ paper.AUTHOR }}
      "{{ paper.TITLE }}",
      <em>{{ paper.JOURNAL }}</em>,
      {{ paper.YEAR | round }},
      {% if paper.VOLUME %} <strong>{{ paper.VOLUME }}</strong>,{% endif %}
      {{ paper.PAGES }}.
      <a href="http://dx.doi.org/{{ paper.DOI }}">[DOI]</a>
	  </li>
	  {% endif %}
{% endfor %}
</ul>

<h5>2018</h5>
<ul>
{% for paper in site.data.biblio %}
{% if paper.YEAR == 2019 %}
<li>
      {{ paper.AUTHOR }}
      "{{ paper.TITLE }}",
      <em>{{ paper.JOURNAL }}</em>,
      {{ paper.YEAR | round }},
      {% if paper.VOLUME %} <strong>{{ paper.VOLUME }}</strong>,{% endif %}
      {{ paper.PAGES }}.
      <a href="http://dx.doi.org/{{ paper.DOI }}">[DOI]</a>
	  </li>
	  {% endif %}
{% endfor %}
</ul>


<!-- {% bibliography --query @*[year>=2017] --template {{reference}} <a href = 'http://dx.doi.org/{{entry.doi}}'>online</a> %} -->

