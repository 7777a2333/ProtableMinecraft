Write-Output "������ʼ�����ļ�"
Write-Output "(���ű���֧��1.16.5 1.12.2 1.7.10��ԭ�棬��������� https://www.bilibili.com/video/BV1eM411a7du �ֶ�����!)"
Start-Sleep 5


Write-Output "��ʼ����Liberica JDK( https://bell-sw.com/ ) Jre8Full"
Start-BitsTransfer -Source https://download.bell-sw.com/java/8u372+7/bellsoft-jre8u372+7-windows-amd64-full.zip -Destination .
Expand-Archive -Path .\bellsoft-jre8u372+7-windows-amd64-full.zip -DestinationPath .


Write-Output "��ʼ����Hello Minecraft! Launcher(https://github.com/huanghongxun/HMCL)"
Start-Sleep 5
Start-BitsTransfer -Source https://maven.aliyun.com/repository/central/org/glavo/hmcl/hmcl-dev/3.5.3.230/hmcl-dev-3.5.3.230.jar -Destination .


$VERSION = Read-Host "������Minecraft�汾(1.16.5,1.12.2,1.7.10)"
Write-Output "��ʼ���������ļ�(github.com/7777a2333/ProtableMinecraft/)ʹ��GHPROXY.COM����"


Start-BitsTransfer -Source https://ghproxy.com/github.com/7777a2333/ProtableMinecraft/raw/main/$VERSION/hmcl.json -Destination .
Start-BitsTransfer -Source https://ghproxy.com/github.com/7777a2333/ProtableMinecraft/raw/main/$VERSION/modpack.zip -Destination .
Start-BitsTransfer -Source https://ghproxy.com/github.com/7777a2333/ProtableMinecraft/raw/main/$VERSION/StartMinecraft.bat -Destination .

Read-Host "��װ�����ϰ�����ֱ���˳�,����ű��޷���������!(����YES����)"

jre8u372-full\bin\java -jar hmcl-dev-3.5.3.230.jar

Remove-Item .\hmcl-dev-3.5.3.230.jar
Remove-Item .\modpack.zip
Remove-Item .\hmcl.json
Remove-Item .\bellsoft-jre8u372+7-windows-amd64-full.zip


Write-Output "��װ���!�����ļ��������ļ����Ƶ�U���Ｔ������!"
