---
layout: default
---

<a href="https://omemo.top"><img src="./assets/images/omemo_logo.png"
id="omemo_logo" class="nobordernonation" /></a>

Tracking the progress of [OMEMO](https://conversations.im/omemo/)
integration in various XMPP clients.

# Client Progress

<table>
  <thead>
    <tr>
      <th><strong>Client</strong></th>
      <th>Tracking Issue</th>
      <th>Bounty</th>
      <th>Work in Progress</th>
      <th>Testing</th>
      <th>Done</th>
    </tr>
  </thead>

{% for client_hash in site.data.clients %}
{% assign client = client_hash[1] %}
  <tr>
    <td>{{ client.name }}</td>
    <td>
      {% if client.tracking_issue %}
      <a href="{{ client.tracking_issue }}">{{ client.tracking_issue | issue_id }}</a>
      {% else %}☐{% endif %}
    </td>
    <td>
      {% if client.bountysource %}
      <a href="https://www.bountysource.com/issues/{{ client.bountysource }}">
        <img class="nobordernonation" src="https://api.bountysource.com/badge/issue?issue_id={{ client.bountysource }}" />
      </a>
      {% else %}<img class="nobordernonation" src="https://img.shields.io/badge/bountysource-none%20yet-orange.svg" />{% endif %}
    </td>
    <td class="state {{ client.work_in_progress | default: false | upcase}}">{% if client.work_in_progress %}☑{% else %}☐{% endif %}</td>
    <td class="state {{ client.testing | default: false | upcase}}">{% if client.testing %}☑{% else %}☐{% endif %}</td>
    <td class="state {{ client.done | default: false | upcase}}">{% if client.done %}☑{% else %}☐{% endif %}</td>
  </tr>
  {% endfor %}
</table>

# Client Progress

| **Client**  | Tracking Issue | Bounty | Work in Progress | Testing | Done |
|-------------|----------------|--------|------------------|---------|------|
| Conversations | | ☐ | ☑ | ☑ | ☑ |
| Gajim | [☑ #8161](https://dev.gajim.org/gajim/gajim/issues/8161) | ☐ | ☑ | ☑ | ☑ |
| Profanity | [☑ #658](https://github.com/boothj5/profanity/issues/658) | [☑ $72](https://www.bountysource.com/issues/27781988-omemo-support) | ☑ | ☑ | ☐ |
| ChatSecure | [☑ #376](https://github.com/ChatSecure/ChatSecure-iOS/issues/376) | ☐ | ☑ | ☑ | ☑ |
| Adium ² | [☑ #17090](https://trac.adium.im/ticket/17090) | ☐ | ☐ | ☐ | ☐ |
| Jitsi ¹ | [☑ #199](https://github.com/jitsi/jitsi/issues/199) | [☑ $60](https://www.bountysource.com/issues/29398390-support-for-omemo) | ☐ | ☐ | ☐ |
| Xabber ¹ | [☑ #540](https://github.com/redsolution/xabber-android/issues/540) | [☑ $0](https://www.bountysource.com/issues/26498485-add-support-for-omemo-encyrption) | ☐ | ☐ | ☐ |
| Yaxim ¹ | [☑ #197](https://github.com/pfleidi/yaxim/issues/197) | ☐ | ☐ | ☐ | ☐ |
| Kontalk ¹ | [☑ #132](https://github.com/kontalk/androidclient/issues/132) | [☑ $10](https://www.bountysource.com/issues/18980767-pfs-otr-omemo-encryption) | ☐ | ☐ | ☐ |

| Anderchat ¹ | | ☐ | ☐ | ☐ | ☐ |
| Spark ¹ | [☑ #291](https://github.com/igniterealtime/Spark/issues/291) | ☐ | ☐ | ☐ | ☐ |
| Zom ¹ | [☑ #119](https://github.com/zom/Zom-Android/issues/119) | [☑ $0](https://www.bountysource.com/issues/36057445-implement-omemo-axolotl) | ☐ | ☐ | ☐ |
| Pidgin ² | [☑ #16801](https://developer.pidgin.im/ticket/16801) | [☑ $20](https://www.bountysource.com/issues/28287404-add-omemo-encryption-support-to-xmpp/backers) | ☑ | ☐ | ☐ |
| Pidgin ⁶ | | ☐ | ☑ | ☑ | ☑ |
| Finch ² | | ☐ | ☐ | ☐ | ☐ |
| Instantbird ² | [☑ #1237416](https://bugzilla.mozilla.org/show_bug.cgi?id=1237416) | ☐ | ☐ | ☐ | ☐ |
| Miranda NG | [☑ #1178](http://trac.miranda-ng.org/ticket/1178) | [☑ $30](https://www.bountysource.com/issues/32298989-support-for-omemo-encryption) | ☐ | ☐ | ☐ |
| Movim | [☑ #63](https://github.com/movim/movim/issues/63) | [☑ $30](https://www.bountysource.com/issues/27538550-add-omemo-encryption) | ☑ | ☐ | ☐ |
| Swift | ~~[☑ #37](https://github.com/swift/swift/issues/37)~~ ⁴  | ☐ | ☐ | ☐ | ☐ |
| Mcabber | [☑ #156](https://bitbucket.org/McKael/mcabber-crew/issues/156/omemo-support) | ☐ | ☐ | ☐ | ☐ |
| Psi | [☑ #252](https://github.com/psi-im/psi/issues/252) | ☐ | ☐ | ☐ | ☐ |
| Psi+ | [☑ #10](https://github.com/psi-plus/plugins/issues/10) | ☐ | ☐ | ☐ | ☐ |
| JSXC | [☑ #228](https://github.com/jsxc/jsxc/issues/228) | [☑ $0](https://www.bountysource.com/issues/27207998-feature-request-for-omemo) | ☑ | ☐ | ☐ |
| Empathy ³ | [☑ #757029](https://bugzilla.gnome.org/show_bug.cgi?id=757029) | ☐ | ☐ | ☐ | ☐ |
| Jackline | [☑ #153](https://github.com/hannesm/jackline/issues/153) ⁴ | ☐ | ☐ | ☐ | ☐ |
| BitlBee | [☑ #1239](https://bugs.bitlbee.org/ticket/1239) | ☐ | ☐ | ☐ | ☐ |
| Tor Messenger | [☑ #17457](https://trac.torproject.org/projects/tor/ticket/17457) | ☐ | ☐ | ☐ | ☐ |
| Salut à Toi | [☑ #180](https://bugs.goffi.org/show_bug.cgi?id=180) | ☐ | ☐ | ☐ | ☐ |
| poezio | [☑ #3280](https://dev.louiz.org/issues/3280) | ☐ | ☐ | ☐ | ☐ |
| Irssi ⁵ | [☑ #8](https://github.com/cdidier/irssi-xmpp/issues/8) | ☐ | ☐ | ☐ | ☐ |
| Jappix | [☑ #305](https://github.com/jappix/jappix/issues/305) | ☐ | ☐ | ☐ | ☐ |
| PRISM Break | [☑ #1476](https://github.com/nylira/prism-break/issues/1476) | [☑ $0](https://www.bountysource.com/issues/29726757-add-omemo-to-protocols-omemo) | ☐ | ☐ | ☐ |
| Chat Core | [☑ #1237416](https://bugzilla.mozilla.org/show_bug.cgi?id=1237416) | [☑ $0](https://www.bountysource.com/issues/29687088-implement-omemo-multi-end-message-and-object-encryption) | ☐ | ☐ | ☐ |
| Kaiwa | [☑ #63](https://github.com/digicoop/kaiwa/issues/63) | [☑ $0](https://www.bountysource.com/issues/27208012-feature-request-for-omemo) | ☐ | ☐ | ☐ |
| Converse.js | [☑ #497](https://github.com/jcbrand/converse.js/issues/497) | [☑ $0](https://www.bountysource.com/issues/27208020-xep-xxxx-omemo-encryption) | ☐ | ☐ | ☐ |
| Monal | [☑ #9](https://github.com/anurodhp/Monal/issues/9) | [☑ $0](https://www.bountysource.com/issues/30757290-xep-xxxx-omemo-encryption) | ☐ | ☐ | ☐ |
| Candy | [☑ #480](https://github.com/candy-chat/candy/issues/480) | ☐ | ☐ | ☐ | ☐ |

¹ Using [Smack](https://igniterealtime.org/projects/smack/index.jsp) [#743](https://issues.igniterealtime.org/browse/SMACK-743)<br/>
² Using [libpurple](https://developer.pidgin.im/wiki/WhatIsLibpurple) [#16801](https://developer.pidgin.im/ticket/16801)<br/>
³ Using [Telepathy](https://telepathy.freedesktop.org/) [#93090](https://bugs.freedesktop.org/show_bug.cgi?id=93090)<br/>
⁴ Ticket closed due to currently not planned, lacking resources etc.<br/>
⁵ Using [irssi-xmpp](https://github.com/cdidier/irssi-xmpp)<br/>
⁶ Using [lurch](https://github.com/gkdr/lurch)

### Have something to add / update?

Please send a [pull request](https://github.com/bascht/omemo-top).

---

A project by [@renevolution](https://github.com/renevolution)
and [@bascht](https://github.com/bascht).
