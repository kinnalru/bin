
mkdir -p ~/.profile.d

pushd ~/.profile.d &> /dev/null

for x in `find -maxdepth 1 -name "*.sh"`; do
	source "$x"
done

#test

popd &> /dev/null

