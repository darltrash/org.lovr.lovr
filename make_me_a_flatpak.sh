#!/bin/bash

BUILDER=flatpak-builder
if ! command -v flatpak-builder &> /dev/null
then
    BUILDER="flatpak run org.flatpak.Builder"
fi

$BUILDER --user --ccache --force-clean --repo repo --install builddir org.lovr.lovr.yaml
flatpak build-bundle repo org.lovr.lovr.flatpak org.lovr.lovr
