
mkdir -p ~/.profile.d

echo 123
if [ -z "$JPROFILE_LOADED" ]; then

	echo 321
	pushd ~/.profile.d &> /dev/null

	for x in `find -maxdepth 1 -name "*.sh"`; do
		source "$x"
	done
	export JPROFILE_LOADED="true"

	popd &> /dev/null

fi

