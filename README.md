# When will Ableton support Apple M1?!?!?!?!?!?!

This is a simple script that leverages [urlwatch](https://github.com/thp/urlwatch) to monitor changes to the
[Ableton Mac OSX compatibility article](https://help.ableton.com/hc/en-us/articles/115001261150-Mac-Compatibility-with-Live).

Join the Slack channel [here](https://join.slack.com/t/whenwillablet-ycw5231/shared_invite/zt-jocb73s5-yHclBv7lXPNNS8v2cvkKdQ) to get notified!

That said, this isn't perfect. Help me make this better?
- [ ] Create a simple website that points people to the Slack.
- [ ] Set up an actual cache that is decoupled from deployments. Currently any time a new version
      is deployed, a new urlwatch cache is initial, thus notifying us. I'm currently bypassing this
      by making an initial call to urlwatch before passing it the Slack config, but this isn't
      perfect.
