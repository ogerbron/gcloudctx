#compdef gcloud-mp

local GCLOUDMP="${HOME}/.config/gcloud/gcloud-mp"
PREV=""
if [ -f "$GCLOUDMP" ]; then
    # show '-' only if there's a saved previous context
    local PREV=$(cat "${GCLOUDMP}")
    _arguments "1: :((- \
        $(gcloud config configurations list --format="table(name)" | grep -v NAME)))"
else
    _arguments "1: :($(gcloud config configurations list --format="table(name)" | grep -v NAME))"
fi
