# gcloudctx
complete -f -c gcloudctx -a "- (gcloud config configurations list --format='table(name)' | grep -v NAME)"
