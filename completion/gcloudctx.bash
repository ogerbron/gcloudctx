_gcloud_mp()
{
  local curr_arg;
  curr_arg=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "- $(gcloud config configurations list --format="table(name)" | grep -v NAME)" -- $curr_arg ) );
}

complete -F _gcloud_mp gcloudctx

