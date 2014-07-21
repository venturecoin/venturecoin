set -e

. scripts/include.sh


# installer
cd ~/deps/venturecoin
rm -rf nsis
mkdir nsis
git archive HEAD | tar -x -C nsis
cd nsis/src
mkdir ../release
cp ../../release/* ../release/
cp ../../src/*.exe .
makensis ../share/setup.nsi
rm -rf $OUTDIR/setup
mkdir $OUTDIR/setup
cp ../share/venturecoin-*-win32-setup.exe $OUTDIR/setup/

# results
cd $OUTDIR
rm -rf venturecoin-dist.zip
zip -r venturecoin-dist.zip setup client daemon

echo -e "\n\n"
echo "Results are in $OUTDIR/venturecoin-dist.zip"
echo -e "\n"


