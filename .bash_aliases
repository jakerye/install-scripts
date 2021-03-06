alias subl=/opt/sublime_text/sublime_text 
alias sls='screen ls'
alias mp='mypy --python-version 3.6 --follow-imports skip --ignore-missing-imports --strict --allow-untyped-decorators'
alias pt='pytest_cov'; pytest_cov() { python3 -m pytest $1 --cov=$1 --cov-report term-missing; }
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

	# Get current working directory
	cwd=$(pwd)

	# Move to brain root directory
	pushd $OPENAG_BRAIN_ROOT

	# Run pytest
	pt $cwd/$1

	# Return to current working directory (and suppress output)
	popd > /dev/null

}

pyclean () {
	echo "Cleaning __pycache__ files..."
    find . -type d -name __pycache__ -exec rm -r {} \+
    echo "Cleaning .mypy_cache files..."
    find . -type d -name .mypy_cache -exec rm -r {} \+
    echo "Cleaning .coverage files..."
    find . -name ".coverage" -type f -delete
    # find . -type d -name .coverage -exec rm {} \+
    echo "...done"
}
