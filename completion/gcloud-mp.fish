# gcloud-mp
complete -f -c gcloud-mp -a "- (gcloud config configurations list --format='table(name)' | grep -v NAME)"
