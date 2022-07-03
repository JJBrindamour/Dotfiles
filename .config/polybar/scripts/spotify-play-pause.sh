#!/bin/sh

main() {
  if [[ "$(playerctl status -p spotify)" == "Paused" ]]; then
	echo ""
  else
	echo ""
  fi
}

main "$@"
