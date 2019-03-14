FROM docker:stable

LABEL "name"="Github-Action-One-Click-Docker"
LABEL "maintainer"="Peter Pang <pangzineng@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.name"="One Click Docker"
LABEL "com.github.actions.description"="Execute the steps of docker login, build, tag and push in one action"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
