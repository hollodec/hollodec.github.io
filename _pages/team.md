---
title: "Democracy and Elections Centre - People"
layout: gridlay
excerpt: "Democracy and Elections Centre - People"
sitemap: false
permalink: /team/
---

# Centre Members


Jump to [staff](#staff), [PhD students](#phd-students), [alumni](#alumni), [administrative support](#administrative-support).

## Staff
{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} </i> <br /><!--<br>email: <{{ member.email }}></i> -->
  {%- if member.email -%}
  <a href = "mailto:{{ member.email }}"><span class="glyphicon glyphicon-envelope"></span></a>
  {% endif %}  
  {%- if member.pure -%}
  , <a href = "{{ member.pure }}"><span class="glyphicon glyphicon-book"></span></a> 
  {% endif %}
  {%- if member.twitter -%}
  , <a href = "http://www.twitter.com/{{ member.twitter }}"><span class="glyphicon glyphicon-bullhorn"></span></a> 
  {% endif %} 
  {%- if member.homepage -%}
  , <a href = "{{ member.homepage }}"><span class="glyphicon glyphicon-globe"></span></a> 
  {% endif %}
  
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 | markdownify }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 | markdownify  }} </li>
  <li> {{ member.education2 | markdownify  }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 | markdownify  }} </li>
  <li> {{ member.education2 | markdownify  }} </li>
  <li> {{ member.education3 | markdownify  }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 | markdownify  }} </li>
  <li> {{ member.education2 | markdownify  }} </li>
  <li> {{ member.education3 | markdownify  }} </li>
  <li> {{ member.education4 | markdownify  }} </li>
  {% endif %}

  {% if member.number_educ == 5 %}
  <li> {{ member.education1 | markdownify  }} </li>
  <li> {{ member.education2 | markdownify  }} </li>
  <li> {{ member.education3 | markdownify  }} </li>
  <li> {{ member.education4 | markdownify  }} </li>
  <li> {{ member.education5 | markdownify  }} </li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}




## PhD Students

{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }} </i> <!-- <br>email: <{{ member.email }}></i> -->
  <ul style="overflow: hidden">

  {% if member.number_educ == 1 %}
  <li> {{ member.education1 }} </li>
  {% endif %}

  {% if member.number_educ == 2 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  {% endif %}

  {% if member.number_educ == 3 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  {% endif %}

  {% if member.number_educ == 4 %}
  <li> {{ member.education1 }} </li>
  <li> {{ member.education2 }} </li>
  <li> {{ member.education3 }} </li>
  <li> {{ member.education4 }} </li>
  {% endif %}

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Alumni

<div class="row">

<div class="col-sm-4 clearfix">
<h4>Staff</h4>
{% for member in site.data.alumni_staff %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>PhD students</h4>
{% for member in site.data.alumni_phd %}
{{ member.name }}
{% endfor %}
</div>


</div>


## Administrative Support

The Democracy and Elections Centre operates out of the Department of Politics, International Relations and Philosophy at Royal Holloway.
