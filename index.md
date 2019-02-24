---
layout: default
---
<a href="https://omemo.top"><img src="./assets/images/omemo_logo.png"
id="omemo_logo" class="nobordernonation" /></a>

This list displays the progress of [OMEMO](https://xmpp.org/extensions/xep-0384.html)
integration in various XMPP clients. If you cannot find your favourite
client in here, please [send a pull request](#have-something-to-add--update).
The last update was **{{ 'now' | date: "%Y-%m-%d" }}**.

# Client Progress

<table id="clients">
  <thead>
    <tr>
      <th data-sort-default><strong>Client</strong></th>
      <th>Tracking Issue</th>
      <th>Bounty</th>
      <th id="progressHeader">Progress</th>
    </tr>
  </thead>

{% for client_hash in site.data.clients %}
{% assign client = client_hash[1] %}
{% include client_row.html %}
{% endfor %}
</table>

# Client Details
{% for client_hash in site.data.clients %}
{% assign client = client_hash[1] %}
{% include client_detail.html %}
{% endfor %}

#### Alternative OMEMO Plugins

* Anderchat, Spark, Jitsi, Kontalk and Xabber can use [Smack](https://igniterealtime.org/projects/smack/index.jsp) [#743](https://issues.igniterealtime.org/browse/SMACK-743)<br/>
* Empathy has a separate upstream issue open at [Telepathy](https://telepathy.freedesktop.org/): [#93090](https://bugs.freedesktop.org/show_bug.cgi?id=93090)<br/>
* Pidgin has two plugins: [lurch](https://github.com/gkdr/lurch) and [libpurple-omemo-plugin](https://github.com/manchito/libpurple-omemo-plugin).

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
