
::���ݿ�
set dburl=jdbc:mysql://127.0.0.1:3306/db_jubafang_jbf_001
set user=root
set pwd=admin
:: ���·��
set outpath=../../../trunk/workspace/Entity/src/com/tgt/uu/entity
::�ļ�����ʽ, ��������.
set filename=%%sInfo.java
::ģ���ļ�
set vm=vms/Info.java.vm
::ģ�����
set args="[package=com.tgt.uu.entity, utils_package=com.tgt.uu.entity.utils]"

:: ִ��

java -jar ./daomaker.jar -table=t_u_item -type=class -language=java -url=%dburl% -user=%user% -pwd=%pwd% -out=%outpath% -filename=%filename% -vm=%vm% -args=%args% 

pause
