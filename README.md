# Tell me when Ableton supports M1!

---

NOTE: Ableton 11 is now supported by Apple Silicon. This project is now obsolete.

---


This is a simple utility that leverages [urlwatch](https://github.com/thp/urlwatch) to monitor changes to the
[Ableton Mac OSX compatibility article](https://help.ableton.com/hc/en-us/articles/115001261150-Mac-Compatibility-with-Live).

Join the Slack channel [here](https://join.slack.com/t/whenwillablet-ycw5231/shared_invite/zt-knvqj3fo-GfbxLP3zxBgNuAODi1kHSw) to get notified! If the invite link has expired, feel free to open an issue for me to update it, but I will try to update it every few weeks.

The project is automatically deployed with [Cloud Build](https://cloud.google.com/cloud-build).

Warning: you will get notified when this page changes - not necessarily when M1 is supported. I created this because responses from their support team have been... unfortunate.

## Usage

### Without Docker
```
export SLACK_WEBHOOK=(your webhook)
pip3 install -r requirements.txt
./watch.sh
```

### With Docker
```
Docker build -t ableton-m1 .
Docker run --env SLACK_WEBHOOK=(your webhook) ableton-m1
```

## Help me make this better?
- [ ] Create a simple website that points people to the Slack.
- [ ] Improve caching - though, who cares?
- [ ] Only notify when M1 is actually supported - though, who cares?
- [ ] Clean up health_check.py - though who cares?
