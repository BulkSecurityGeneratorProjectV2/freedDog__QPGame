
::���ݿ�
set dburl=jdbc:mysql://127.0.0.1:3306/db_tgtgame_login
set user=root
set pwd=admin
:: ���·��
set outpath=../../../trunk/login/Entity/src/com/tgt/uu/entity
::�ļ�����ʽ, ��������.
set filename=%%sInfo.java
::ģ���ļ�
set vm=vms/Info.java.vm
::ģ�����
set args="[package=com.tgt.uu.entity, utils_package=com.tgt.uu.entity.utils]"

:: ִ��
java -jar ./daomaker.jar -table=t_u_account -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=true
java -jar ./daomaker.jar -table=t_u_record -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=false
java -jar ./daomaker.jar -table=t_u_order -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=false
java -jar ./daomaker.jar -table=t_p_server -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% -of=false

pause
