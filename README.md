# When will Ableton support Apple M1

Simple script that leverages [urlwatch](https://github.com/thp/urlwatch) to monitor changes to the
[Ableton Mac OSX compatibility article](https://help.ableton.com/hc/en-us/articles/115001261150-Mac-Compatibility-with-Live).

This is really just a tool for myself so that I don't have to constantly check various forums to
see if anybody has gotten a definitive response from their support team.

Join the Slack channel [here]() to get notified! And please help me make this better!

That said, this isn't perfect.

# TODO
- [ ] Set up an actual cache that is decoupled from deployments. Currently any time a new version
      is deployed, we initialize a new cache, thus notifying us. I'm currently bypassing this
      by making an initial call to url watch before passing it the Slack config, but this isn't
      perfect.
