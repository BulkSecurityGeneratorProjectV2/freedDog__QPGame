
::���ݿ�
set dburl=jdbc:mysql://127.0.0.1:3306/db_tgtgame_login
set user=root
set pwd=admin
:: ���·��
set outpath=../../../trunk/login/Entity/src/com/tgt/uu/dao
::�ļ�����ʽ, ��������.
set filename=%%sDAO.java
::ģ���ļ�
set vm=vms/Dao.java.vm
::ģ�����
set args="[package=com.tgt.uu.dao, entity_package=com.tgt.uu.entity, utils_package=com.tgt.uu.entity.utils, get_key_name=Id]"

:: ִ��, -tableΪ����, �������������, ����ģ�弴��.
java -jar ./daomaker.jar -table=t_u_account -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=true
java -jar ./daomaker.jar -table=t_u_record -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=false
java -jar ./daomaker.jar -table=t_u_order -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=false
java -jar ./daomaker.jar -table=t_p_server -vm=vms/RunDao.java.vm -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -args=%args% -of=false


pause
