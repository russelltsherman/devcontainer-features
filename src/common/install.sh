set -e

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

# symlink localhost config locations for root
ln -s /localhost/.aws /root/.aws 
ln -s /localhost/.ssh /root/.ssh

exit $?
