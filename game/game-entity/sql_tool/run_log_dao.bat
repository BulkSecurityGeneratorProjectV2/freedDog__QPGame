
::���ݿ�
set dburl=jdbc:mysql://127.0.0.1:3306/db_tgtgame_log
set user=root
set pwd=admin
:: ���·��
set outpath=../../../trunk/workspace/Entity/src/com/tgt/uu/dao
::�ļ�����ʽ, ��������.
set filename=%%sDAO.java
::ģ���ļ�
set vm=vms/LogDao.java.vm
::ģ�����
set args="[package=com.tgt.uu.dao, entity_package=com.tgt.uu.entity, utils_package=com.tgt.uu.entity.utils, get_key_name=PlayerId]"
set argsg="[package=com.tgt.uu.dao, entity_package=com.tgt.uu.entity, utils_package=com.tgt.uu.entity.utils, get_key_name=GuildId]"




:: ִ��, -tableΪ����, �������������, ����ģ�弴��.
java -jar ./daomaker.jar -table=t_l_product  -asname="ProductLog"  -filename=%filename% -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -args=%args%
java -jar ./daomaker.jar -table=t_l_match  -asname="MatchLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_revenue  -asname="RevenueLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%

java -jar ./daomaker.jar -table=t_l_vip  -asname="VipLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_contest -asname="ContestLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_exchange -asname="ExchangeLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_goods -asname="GoodsLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_playermatch -asname="PlayerMatchLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_activity -asname="ActivityLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_room -asname="RoomLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_snatch -asname="SnatchLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_recharge -asname="RechargeLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_pay -asname="PayLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%
java -jar ./daomaker.jar -table=t_l_proxy -asname="ProxyLog" -vm=vms/LogDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename%  -args=%args%

pause