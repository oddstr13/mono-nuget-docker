#!/bin/bash
MY=$(dirname $(realpath -s $0))

IMAGE=oddstr13/mono-nuget

REPO_PATH="${MY}/repo"
INPUT_PATH="${MY}/input"

mkdir -p "${REPO_PATH}"
mkdir -p "${INPUT_PATH}"


#REPO_PATH=$HOME/.nuget/NuGet/jellyfin-nightly


find ${INPUT_PATH} -type f -iname '*.nupkg' -exec \
    docker run -it --rm \
        --user "$(id -u):$(id -g)" \
        --volume "${REPO_PATH}:/repo:rw" \
        --volume "{}:/input.nupkg" \
        mono-nuget \
    add /input.nupkg -Source /repo ';'