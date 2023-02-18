for directory in jsaddle*
do
	pushd $directory
	cabal2nix . > project.nix
	popd
done
