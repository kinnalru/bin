
mkdir -p ~/.profile.d

if [ -z "$JPROFILE_LOADED" ]; then

	pushd ~/.profile.d &> /dev/null

	for x in `find -maxdepth 1 -name "*.sh"`; do
		source "$x"
	done
	export JPROFILE_LOADED="true"

	popd &> /dev/null

fi


