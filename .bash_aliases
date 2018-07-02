alias subl=/opt/sublime_text/sublime_text 
alias sls='screen ls'
alias mp='mypy --python-version 3.6 --follow-imports skip --ignore-missing-imports --strict --allow-untyped-decorators'
alias pt='pytest_cov'; pytest_cov() { python3 -m pytest $1 --cov=tests; }
alias ptb='pytest_brain' 

pytest_brain () { 

	# If there is a current python virtual environment, deactivate it.
	if ! [ -z "${VIRTUAL_ENV}" ] ; then
	    deactivate
	fi

	# Verify openag brain root environment variable exists
	${OPENAG_BRAIN_ROOT:?}

	# Activate codebase virtual environment
	source $OPENAG_BRAIN_ROOT/venv/bin/activate

	# Move to brain root directory
	pushd $OPENAG_BRAIN_ROOT

	# Run pytest
	pt $cwd/$1

	# Return to current working directory (and suppress output)
	popd > /dev/null

}
