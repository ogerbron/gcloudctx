#compdef gcloudctx

local GCLOUDCTX="${HOME}/.config/gcloud/gcloudctx"
PREV=""
if [ -f "$GCLOUDCTX" ]; then
    # show '-' only if there's a saved previous context
    local PREV=$(cat "${GCLOUDCTX}")
    _arguments "1: :((- \
        $(gcloud config configurations list --format="table(name)" | grep -v NAME)))"
else
    _arguments "1: :($(gcloud config configurations list --format="table(name)" | grep -v NAME))"
fi
