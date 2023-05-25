Write-Output "即将开始下载文件"
Write-Output "(本脚本仅支持1.16.5 1.12.2 1.7.10的原版，其他请根据 https://www.bilibili.com/video/BV1eM411a7du 手动制作!)"
Start-Sleep 5


Write-Output "开始下载Liberica JDK( https://bell-sw.com/ ) Jre8Full"
Start-BitsTransfer -Source https://download.bell-sw.com/java/8u372+7/bellsoft-jre8u372+7-windows-amd64-full.zip -Destination .
Expand-Archive -Path .\bellsoft-jre8u372+7-windows-amd64-full.zip -DestinationPath .


Write-Output "开始下载Hello Minecraft! Launcher(https://github.com/huanghongxun/HMCL)"
Start-Sleep 5
Start-BitsTransfer -Source https://maven.aliyun.com/repository/central/org/glavo/hmcl/hmcl-dev/3.5.3.230/hmcl-dev-3.5.3.230.jar -Destination .


$VERSION = Read-Host "请输入Minecraft版本(1.16.5,1.12.2,1.7.10)"
Write-Output "开始下载配置文件(github.com/7777a2333/ProtableMinecraft/)使用GHPROXY.COM加速"


Start-BitsTransfer -Source https://ghproxy.com/github.com/7777a2333/ProtableMinecraft/raw/main/$VERSION/hmcl.json -Destination .
Start-BitsTransfer -Source https://ghproxy.com/github.com/7777a2333/ProtableMinecraft/raw/main/$VERSION/modpack.zip -Destination .
Start-BitsTransfer -Source https://ghproxy.com/github.com/7777a2333/ProtableMinecraft/raw/main/$VERSION/StartMinecraft.bat -Destination .

Read-Host "安装完整合包后请直接退出,否则脚本无法继续运行!(输入YES继续)"

jre8u372-full\bin\java -jar hmcl-dev-3.5.3.230.jar

Remove-Item .\hmcl-dev-3.5.3.230.jar
Remove-Item .\modpack.zip
Remove-Item .\hmcl.json
Remove-Item .\bellsoft-jre8u372+7-windows-amd64-full.zip


Write-Output "安装完成!将此文件夹所有文件复制到U盘里即可运行!"
