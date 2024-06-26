build:
	jcli cwp --install-artifacts --config-path formula.yaml \
            --value-set tag=kubespheredev/ks-jenkins:test \
            --value-set platform=linux/amd64

build-arm:
	jcli cwp --install-artifacts --config-path formula-arm.yaml

run:
	jcli config gen -i=false > /home/gitpod/.jenkins-cli.yaml
	jcli center start --image kubesphere/ks-jenkins --version v3.5.0-2.346.3 --setup-wizard=false
