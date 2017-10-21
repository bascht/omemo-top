---
layout: default
---
<a href="https://omemo.top"><img src="./assets/images/omemo_logo.png"
id="omemo_logo" class="nobordernonation" /></a>

This list displays the progress of [OMEMO](https://conversations.im/omemo/)
integration in various XMPP clients. If you cannot find your favourite
client in here, please [send a pull request](#have-something-to-add--update).
The last update was **{{ 'now' | date: "%Y-%m-%d" }}**.

# Client Progress

<table id="clients">
  <thead>
    <tr>
      <th data-sort-default><strong>Client</strong></th>
      <th>Issue</th>
      <th>Features</th>
      <th>Operating Systems</th>
      <th>Bounty</th>
      <th id="progressHeader">Progress</th>
    </tr>
  </thead>

{% for client_hash in site.data.clients %}
{% assign client = client_hash[1] %}
  <tr>
    <td><a href="{{ client.url }}" alt="{{ client.name }} website">{{ client.name }}</a></td>
    <td>
      {% if client.tracking_issue %}
      <a href="{{ client.tracking_issue }}"><i class="fa fa-ticket" aria-hidden="true"></i></a>
      {% else %}😢{% endif %}
    </td>
    <td>
      {% if client.features.single_chat %}<i class="fa fa-user-secret" aria-hidden="true"></i>{% endif %}
      {% if client.features.group_chat %}<i class="fa fa-users" aria-hidden="true"></i>{% endif %}
      {% if client.features.encrypted_files %}<i class="fa fa-files-o" aria-hidden="true"></i>{% endif %}
    </td>
    <td>
      {% if client.os.mac || client.os.ios %}<i class="fa fa-apple" aria-hidden="true"></i>{% endif %}
      {% if client.os.win %}<i class="fa fa-windows" aria-hidden="true"></i>{% endif %}
      {% if client.os.linux %}<i class="fa fa-linux" aria-hidden="true"></i>{% endif %}
      {% if client.os.android %}<i class="fa fa-android" aria-hidden="true"></i>{% endif %}
    </td>
    <td>
      {% if client.bountysource %}
      <a href="https://www.bountysource.com/issues/{{ client.bountysource }}">
        <img class="nobordernonation" src="https://api.bountysource.com/badge/issue?issue_id={{ client.bountysource }}" />
      </a>
      {% else %}<img class="nobordernonation" src="https://img.shields.io/badge/bountysource-none%20yet-orange.svg" />{% endif %}
    </td>

    <td data-sort="{{ client.status | plus: 0 }}" class="progress">
      <progress max="100" value="{{ client.status | plus: 0 }}"></progress>
    </td>
  </tr>
  {% endfor %}
</table>

#### Alternative OMEMO Plugins

* Anderchat, Spark, Jitsi, Kontalk and Xabber can use [Smack](https://igniterealtime.org/projects/smack/index.jsp) [#743](https://issues.igniterealtime.org/browse/SMACK-743)<br/>
* Empathy has a separate upstream issue open at [Telepathy](https://telepathy.freedesktop.org/): [#93090](https://bugs.freedesktop.org/show_bug.cgi?id=93090)<br/>
* Pidgin has an alternative Plugin named [lurch](https://github.com/gkdr/lurch).

### Have something to add / update?

The source of this website is available on
[GitHub](https://github.com/bascht/omemo-top). If you notice obsolete
/ inaccurate information, or want to help us work on this site, please
send a pull request.

---

A project by [@renevolution](https://github.com/renevolution)
and [@bascht](https://github.com/bascht).

<script src="//cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.0/tablesort.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.0/src/sorts/tablesort.number.js"></script>
<script>
var table;
var tablesorter;
var sortCount = 0;
var nextSortHeader = document.getElementById('progressHeader');

document.addEventListener("DOMContentLoaded", function(event) {
  table = document.getElementById('clients');
    
  if (typeof(Tablesort) !== 'undefined') {
    tablesorter = new Tablesort(table);
  }
  
  /* Start initial sorting by "Status" */
  tablesorter.sortTable(nextSortHeader, !0);
  
  
});
</script>
