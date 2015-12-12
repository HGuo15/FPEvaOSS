
cd ../
make test
cd -
mv ../check/sat.cov .
mv ../check/score.cov .

#update log
count=`cat soplex_runtimes`
count=$((count + 1))
echo $count > soplex_runtimes

#in case the bitcode file is broken 
cp /vagrant/soplex-2.0.1.linux.x86_64.gnu.opt.bc .
