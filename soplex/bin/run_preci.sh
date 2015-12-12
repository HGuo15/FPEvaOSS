
BcFilePrefix=soplex-2.0.1.linux.x86_64.gnu.opt
ScriptPath=$CORVETTE_PATH"/scripts"

#init log
echo 0 > soplex_runtimes
cp $BcFilePrefix.bc /vagrant/
$ScriptPath/search.sh $BcFilePrefix .
$ScriptPath/config.sh $BcFilePrefix .
$ScriptPath/dd2.py $BcFilePrefix.bc search_$BcFilePrefix.json config_$BcFilePrefix.json 


 
