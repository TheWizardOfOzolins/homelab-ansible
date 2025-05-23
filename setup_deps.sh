#!/bin/bash

# Dependencies to install. Each dep package should be seperated by a space
DEPS_PACKAGES="python3 python3-pip"

# Function to detect the OS ID
get_os_id() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo "$ID"
    else
        echo "unknown"
    fi
}

OS_ID=$(get_os_id)

# Normalize ID for RHEL-like systems
case "$OS_ID" in
    rhel|fedora|centos)
        echo "Detected supported OS: $OS_ID"
        echo "Installing dependencies with dnf..."
        sudo dnf install -y $DEPS_PACKAGES
        python3 -m venv .venv
        source .venv/bin/activate
        pip3 install ansible-dev-tools
        ;;
    *)
        echo "Unsupported OS: $OS_ID"
        echo "Please use Fedora, RHEL, or CentOS to run this script."
        exit 1
        ;;
esac
