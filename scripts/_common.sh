#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Compute the snac2 path prefix from YunoHost $path
# snac2 expects "" for root, "/prefix" for subpath (no trailing slash)
compute_path_prefix() {
    if [ "$path" = "/" ]; then
        path_prefix=""
    else
        # Remove trailing slash if present
        path_prefix="${path%/}"
    fi
}
