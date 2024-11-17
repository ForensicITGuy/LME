# Curl and unzip sysmon off the windows sysinternals page
curl https://download.sysinternals.com/files/Sysmon.zip -OutFile sysmon.zip
Expand-Archive sysmon.zip
# Curl to retrieve the sysmon-modular default config
curl https://raw.githubusercontent.com/olafhartong/sysmon-modular/master/sysmonconfig.xml -OutFile sysmonconfig.xml
# install sysmon 
.\sysmon\sysmon -accepteula -i .\sysmonconfig.xml
