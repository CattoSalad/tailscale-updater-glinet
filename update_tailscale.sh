INSTALL_DIR="/usr/sbin/"

# Fetch the latest version from the Tailscale website
LATEST_VERSION=$(curl -s https://pkgs.tailscale.com/stable/#static | grep -oE "tailscale_[0-9]+\.[0-9]+\.[0-9]+_arm64.tgz" | head -n 1)

if [ -z "$LATEST_VERSION" ]; then
    echo "Failed to fetch the latest Tailscale version."
    exit 1
fi

# Download and install Tailscale
cd /tmp || exit
curl -f -L "https://pkgs.tailscale.com/stable/${LATEST_VERSION}" -o "${LATEST_VERSION}"
tar -zxvf "${LATEST_VERSION}"

# Move Tailscale binaries to the installation directory
mv "${LATEST_VERSION%.tgz}/tailscale"* "${INSTALL_DIR}"
echo "Moved files to the installed folder"

# Clean up temporary files
rm -r "${LATEST_VERSION}"*
echo "Completed clean up"

echo "Tailscale ${LATEST_VERSION%.tgz} installed successfully."
