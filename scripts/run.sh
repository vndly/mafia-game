#!/usr/bin/env bash

set -e

BASE_DIR=`dirname $0`

function convert()
{
    inkscape --export-width=375 --export-height=525 --export-type=png --export-filename="${BASE_DIR}/../png/${1}.png" "${BASE_DIR}/../svg/${1}.svg"
}

node ${BASE_DIR}/generate_svg.js

convert "crew/pusher/pusher1"

node ${BASE_DIR}/generate_pdf.js