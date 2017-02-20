---
layout: default
---
<a href="https://omemo.top"><img src="./assets/images/omemo_logo.png"
id="omemo_logo" class="nobordernonation" /></a>

Tracking the progress of [OMEMO](https://conversations.im/omemo/)
integration in various XMPP clients.

# Client Progress

<table id="clients">
  <thead>
    <tr>
      <th data-sort-default><strong>Client</strong></th>
      <th>Tracking Issue</th>
      <th>Bounty</th>
      <th id="wipHeader" >Work in Progress</th>
      <th id="testingHeader" >Testing</th>
      <th id="doneHeader">Done</th>
    </tr>
  </thead>

{% for client_hash in site.data.clients %}
{% assign client = client_hash[1] %}
  <tr>
    <td>{{ client.name }}</td>
    <td>
      {% if client.tracking_issue %}
      <a href="{{ client.tracking_issue }}">✪</a>
      {% else %}😢{% endif %}
    </td>
    <td>
      {% if client.bountysource %}
      <a href="https://www.bountysource.com/issues/{{ client.bountysource }}">
        <img class="nobordernonation" src="https://api.bountysource.com/badge/issue?issue_id={{ client.bountysource }}" />
      </a>
      {% else %}<img class="nobordernonation" src="https://img.shields.io/badge/bountysource-none%20yet-orange.svg" />{% endif %}
    </td>
    <td class="state {{ client.work_in_progress | default: false | upcase}}">{% if client.work_in_progress %}✓{% else %}✗{% endif %}</td>
    <td class="state {{ client.testing | default: false | upcase}}">{% if client.testing %}✓{% else %}✗{% endif %}</td>
    <td class="state {{ client.done | default: false | upcase}}">{% if client.done %}✓{% else %}✗{% endif %}</td>
  </tr>
  {% endfor %}
</table>

#### Alternative OMEMO Plugins

* Anderchat, Spark and Zom can use [Smack](https://igniterealtime.org/projects/smack/index.jsp) [#743](https://issues.igniterealtime.org/browse/SMACK-743)<br/>
* Empathy has a separate upstream issue open at [Telepathy](https://telepathy.freedesktop.org/): [#93090](https://bugs.freedesktop.org/show_bug.cgi?id=93090)<br/>
* Pidgin has an alternative Plugin named [lurch](https://github.com/gkdr/lurch).

### Have something to add / update?

Please send a [pull request](https://github.com/bascht/omemo-top).

---

A project by [@renevolution](https://github.com/renevolution)
and [@bascht](https://github.com/bascht).

<script src="//cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.0/tablesort.min.js"></script>
<script>
var table;
var tablesorter;
var sortCount = 0;
var nextSortHeader = document.getElementById('doneHeader');

document.addEventListener("DOMContentLoaded", function(event) {
  table = document.getElementById('clients');
    
  if (typeof(Tablesort) !== 'undefined') {
    tablesorter = new Tablesort(table);
  }

  table.addEventListener('afterSort', function() {
    /* In order to sort by Done, Testing and WIP in sequence,
       we need to run the sort function in sequence */
        
    if (sortCount == 0) {
      /* Sort by "Testing" */
      sortCount++;    
      var nextSortHeader = document.getElementById('testingHeader');
      tablesorter.sortTable(nextSortHeader);
    } 
    else if (sortCount == 1) {
      /* Sort by "WIP" */
      sortCount++;    
      var nextSortHeader = document.getElementById('wipHeader');
      tablesorter.sortTable(nextSortHeader);      
    }
  });
  
  /* Start initial sorting by "DONE" */
  tablesorter.sortTable(nextSortHeader);
  
  
});
</script>
