---
title: "Democracy and Elections Centre - People"
layout: gridlay
excerpt: "Democracy and Elections Centre - People"
sitemap: false
permalink: /team/
---

# Centre Members
{: .page-title }

## Staff
{: .member-type }

<div class="row">
  {% for member in site.data.team_members %}
    <div class="col-md-4 member-card">
      <div class="row">
        <div class="col-auto col-left">
          <div class="member-card__img-wraper">
            <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" />
          </div>
          <div class="member-card__social">
            {%- if member.pure -%}
              <a href="{{ member.pure }}" class="icon-publications"></a> 
            {% endif %}
            {%- if member.email -%}
              <a href="mailto:{{ member.email }}" class="icon-email"></a>
            {% endif %}  
            {%- if member.twitter -%}
              <a href="http://www.twitter.com/{{ member.twitter }}" class="icon-megaphone"></a> 
            {% endif %}
          </div>
        </div>
        <div class="col col-right">
          <h4 class="member-card__name">{{ member.name }}</h4>
          <p class="member-card__info">{{ member.info }}</p>
          <ul>
            {% if member.number_educ == 1 %}
              <li>{{ member.education1 | markdownify | remove: '<p>' | remove: '</p>' }}</li>
            {% endif %}
            {% if member.number_educ == 2 %}
              <li>{{ member.education1 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education2 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
            {% endif %}
            {% if member.number_educ == 3 %}
              <li>{{ member.education1 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education2 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education3 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
            {% endif %}
            {% if member.number_educ == 4 %}
              <li>{{ member.education1 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education2 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education3 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education4 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
            {% endif %}
            {% if member.number_educ == 5 %}
              <li>{{ member.education1 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education2 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education3 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education4 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
              <li>{{ member.education5 | markdownify | remove: '<p>' | remove: '</p>'  }}</li>
            {% endif %}
          </ul>
        </div>
      </div>
    </div>
  {% endfor %}

</div>




## PhD Students
{: .member-type }

<div class="row">
{% for member in site.data.students %}

  <div class="col-md-4 member-card">
    <h4 class="member-card__name">{{ member.name }}</h4>
    <p class="member-card__info">{{ member.info }}</p>
    <ul>
      {% if member.number_educ == 1 %}
        <li>{{ member.education1 }}</li>
      {% endif %}

      {% if member.number_educ == 2 %}
        <li>{{ member.education1 }}</li>
        <li>{{ member.education2 }}</li>
      {% endif %}

      {% if member.number_educ == 3 %}
        <li>{{ member.education1 }}</li>
        <li>{{ member.education2 }}</li>
        <li>{{ member.education3 }}</li>
      {% endif %}

      {% if member.number_educ == 4 %}
        <li>{{ member.education1 }}</li>
        <li>{{ member.education2 }}</li>
        <li>{{ member.education3 }}</li>
        <li>{{ member.education4 }}</li>
      {% endif %}
    </ul>
  </div>

{% endfor %}
</div>



## Administrative Support
{: .info-title }

The Democracy and Elections Centre operates out of the Department of Politics, International Relations and Philosophy at Royal Holloway.
{: .info-text }
