mkdir docker\data\db\data
git clone https://github.com/isatonic/hew2019.git docker\data\www
mklink /D docker\data\db\sql docker\data\www\schema
