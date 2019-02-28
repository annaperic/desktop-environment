REPO_ROOT=$(dirname $(realpath $0))/../..

# Export desktop environment shell configuration
export $($REPO_ROOT/docker/scripts/environment.sh)

# Authenticate with cloud service provider
$REPO_ROOT/credentials/authenticate.sh

docker run \
  --env GOOGLE_APPLICATION_CREDENTIALS=$DESKTOP_ENVIRONMENT_HOST_REPOSITORY/credentials/google.json \
  --interactive \
  --rm \
  --tty \
  --volume $DESKTOP_ENVIRONMENT_HOST_REPOSITORY:$DESKTOP_ENVIRONMENT_HOST_REPOSITORY \
  --workdir $DESKTOP_ENVIRONMENT_HOST_REPOSITORY \
  hashicorp/terraform:light apply
