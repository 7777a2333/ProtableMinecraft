Write-Output "即将开始下载文件"
Write-Output "(本脚本仅支持1.16.5,1.12.2,1.7.10的原版，其他请根据 https://www.bilibili.com/video/BV1eM411a7du 手动制作!)"
Write-Output "开始下载Liberica JDK( https://bell-sw.com/ ) Jre8Full"
Start-BitsTransfer -Source https://download.bell-sw.com/java/8u372+7/bellsoft-jre8u372+7-windows-amd64-full.zip -Destination .
Expand-Archive -Path .\bellsoft-jre8u372+7-windows-amd64-full.zip -DestinationPath .
Write-Output "开始下载Hello Minecraft! Launcher(https://github.com/huanghongxun/HMCL)"
Start-BitsTransfer -Source https://maven.aliyun.com/repository/central/org/glavo/hmcl/hmcl-dev/3.5.3.230/hmcl-dev-3.5.3.230.jar -Destination .
$VERSION= Read-Host "请输入Minecraft版本(1.16.5,1.12.2,1.7.10)"

