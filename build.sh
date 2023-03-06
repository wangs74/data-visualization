#/bin/bash

tag="visual_diskperf"

help() {
    echo "    Usage: build.sh <image_name>"
    echo ""
    echo "    You can only specify one argument for tagging the image. If <image_name> is not specified, the default visual_diskperf will be used to tag the image."
    echo ""
    echo "    Example: "
    echo "        build.sh visual_diskperf"
    echo "        build.sh"
}


if [ "$#" -le 2 ]; then

    if [ "$#" -eq 2 ]; then
        tag=$1
        echo "Tag the image with given name: "${tag}
    else
        echo "Tag the image with default name: visual_diskperf"
    fi
    
else
    echo "Build the docker image for data visualization."
    echo ""
    help
    exit 1

fi

docker build -t ${tag} .
