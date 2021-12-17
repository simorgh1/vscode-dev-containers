#!/usr/bin/env bash

if ! which k3d > /dev/null 2>&1; then
	echo "Installing k3d ..."
	wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
fi

DEMO=$(k3d cluster list -o json | jq '.[0].name // empty') 

if [ "$DEMO" == "" ] ; then
	echo "Creating demo cluster ..."
	k3d cluster create demo
fi

if [ ! -d "~/.kube/" ]; then
	mkdir ~/.kube/
fi

k3d kubeconfig get demo > ~/.kube/config
chmod 600 ~/.kube/config
kubectl cluster-info