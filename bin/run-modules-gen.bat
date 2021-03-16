@echo off
echo.
echo [信息] 运行modules-gen工程。
echo.

cd %~dp0
cd ../ruoyi-modules/ruoyi-gen/target

set JAVA_OPTS=-Xms512m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

java -Dfile.encoding=utf-8 -jar %JAVA_OPTS% ruoyi-modules-gen.jar

cd bin
pause