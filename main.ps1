Write-Output "������ʼ�����ļ�"
Write-Output "(���ű���֧��1.16.5,1.12.2,1.7.10��ԭ�棬��������� https://www.bilibili.com/video/BV1eM411a7du �ֶ�����!)"
Write-Output "��ʼ����Liberica JDK( https://bell-sw.com/ ) Jre8Full"
Start-BitsTransfer -Source https://download.bell-sw.com/java/8u372+7/bellsoft-jre8u372+7-windows-amd64-full.zip -Destination .
Expand-Archive -Path .\bellsoft-jre8u372+7-windows-amd64-full.zip -DestinationPath .
Write-Output "��ʼ����Hello Minecraft! Launcher(https://github.com/huanghongxun/HMCL)"
Start-BitsTransfer -Source https://maven.aliyun.com/repository/central/org/glavo/hmcl/hmcl-dev/3.5.3.230/hmcl-dev-3.5.3.230.jar -Destination .
$VERSION= Read-Host "������Minecraft�汾(1.16.5,1.12.2,1.7.10)"

