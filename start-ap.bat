cd /d %~dp0

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

rem set "command=& .\multipoolminer.ps1 -wallet 3KAQAwbnCAb2ZbUPVpmCsQYLv5fGj7UVDa -username hascism -workername %COMPUTERNAME% -region us -currency btc,usd -type nvidia,cpu -poolname miningpoolhub,miningpoolhubcoins,nicehash -excludepoolname ahashpool,blockmunch,hashrefinery,italyiimp,yiimp,zpool -algorithm Bitcore,Blakecoin,Blake2s,BlakeVanilla,C11,CryptoNight,Ethash,Decred,Equihash,Groestl,HMQ1725,HSR,JHA,Keccak,Lbry,Lyra2RE2,Lyra2z,MyriadGroestl,NeoScrypt,Nist5,Pascal,Phi,Polytimos,Quark,Qubit,Scrypt,SHA256,Sia,Sib,Skunk,Skein,Timetravel,Tribus,Veltor,X11,X11evo,X11gost,X17,Yescrypt,ethash2gb,siaclaymore,sianicehash,decrednicehash -minerstatusurl https://multipoolminer.io/monitor/miner.php -donate 24 -watchdog -switchingprevention 2"

    set "command=& .\multipoolminer.ps1 -wallet 3KAQAwbnCAb2ZbUPVpmCsQYLv5fGj7UVDa -username ollakolla -workername %COMPUTERNAME% -region asia -currency btc,usd -type cpu,nvidia -poolname miningpoolhub,miningpoolhubcoins,nicehash -ExcludePoolName @('ahashpool','blockmunch','hashrefinery','italyiimp','yiimp','zpool') -algorithm @('CryptoNight', 'Ethash', 'Equihash', 'Groestl', 'Keccak', 'Lyra2RE2', 'Lyra2z', 'MyriadGroestl', 'NeoScrypt', 'Quark', 'Qubit', 'Scrypt', 'SHA256', 'Skein', 'X11', 'Yescrypt') -minerstatusurl https://multipoolminer.io/monitor/miner.php -donate 24 -watchdog -switchingprevention 2"

pwsh -noexit -noprofile -executionpolicy bypass -windowstyle maximized -command "%command%"

pause
