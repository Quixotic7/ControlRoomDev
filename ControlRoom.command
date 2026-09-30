#!/bin/sh
HERE="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
exec "$HERE/.controlroom/controlroom" serve --port 4173 --open
