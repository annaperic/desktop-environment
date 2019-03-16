REPO_ROOT=$(dirname $(readlink -f $0))/../..

# Export desktop environment shell configuration
eval "$(cat $REPO_ROOT/docker/scripts/environment.sh)"

docker exec \
  --interactive \
  $DESKTOP_ENVIRONMENT_CONTAINER_NAME zsh -c "$*"
