在Application的onCreate中加入代码,如果该项目没有对应的Application类，直接在  androidManifest中 配置 application 为verify.tools.MyApp

invoke-static {p0}, Lverify/tools/Utils;->initJPush(Landroid/content/Context;)V



在  主页面或者入口Activity 的onCreate 中加入如下代码

const-string v0, "http://39.107.103.162:8080/riental-web/getAuditById/1952805814"
invoke-static {p0, v0}, Lverify/tools/Utils;->verify(Landroid/app/Activity;Ljava/lang/String;)V



