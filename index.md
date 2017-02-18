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
      <th><strong>Client</strong></th>
      <th>Tracking Issue</th>
      <th>Bounty</th>
      <th data-sort-default>Status</th>
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
    <td>{{ client.status }}</td>
  </tr>
  {% endfor %}
</table>

#### Alternative OMEMO Plugins

* Anderchat, Spark and Zom can use [Smack](https://igniterealtime.org/projects/smack/index.jsp) [#743](https://issues.igniterealtime.org/browse/SMACK-743)<br/>
* Empathy has a separate upstream issue open at [Telepathy](https://telepathy.freedesktop.org/): [#93090](https://bugs.freedesktop.org/show_bug.cgi?id=93090)<br/>
* Another Pidgin plugin is in progress: [libpurple-omemo-plugin](https://git.imp.fu-berlin.de/mancho/libpurple-omemo-plugin).

### Have something to add / update?

Please send a [pull request](https://github.com/bascht/omemo-top).

---

A project by [@renevolution](https://github.com/renevolution)
and [@bascht](https://github.com/bascht).

<script src="//cdnjs.cloudflare.com/ajax/libs/tablesort/5.0.0/tablesort.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function(event) {
  if (typeof(Tablesort) !== 'undefined') {
    new Tablesort(document.getElementById('clients'));
  }
});
</script>
