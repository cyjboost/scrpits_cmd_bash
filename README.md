### **bash下运行mcserver**
* 自动下载zulujdk并解压且赋予可执行权限
* 自动下载1.20.4的server jar并且提供一个开启脚本
* 更改server.propertities并且允许offline-mode
* 默认开服脚本位置在~/mc/startmcs.sh
### **注意事项**
* 为确保服务器以及脚本能够顺利运行，请先行安装好wget screen这两个软件包
### *脚本分架构*
* [arm64](https://fastly.jsdelivr.net/gh/cyjboost/scrpits_cmd_bash@mcserver_bash/arm64_mcserver.sh)

### **如何运行？(arm64为例)
* wget https://fastly.jsdelivr.net/gh/cyjboost/scrpits_cmd_bash@mcserver_bash/arm64_mcserver.sh
* bash arm64_mcserver.sh
