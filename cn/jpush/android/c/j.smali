.class public final Lcn/jpush/android/c/j;
.super Lcn/jpush/android/c/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/jpush/android/c/e;-><init>()V

    .line 21
    const-string v0, "XIAOMI_APPKEY"

    invoke-static {p1, v0}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    .line 22
    const-string v0, "XIAOMI_APPID"

    invoke-static {p1, v0}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "Register - context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_0
    :try_start_0
    const-string v0, "PluginXiaomiPlatformAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xiaomiAppKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xiaomiAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "xiaomi sdk appkey or appid was empty,please check your manifest config"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "PluginXiaomiPlatformAction"

    const-string v2, "#unexpected - register error:"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/c/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/c/j;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "resumePush"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->enablePush(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected final c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "stopPush"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "PluginXiaomiPlatformAction"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->disablePush(Landroid/content/Context;)V

    goto :goto_0
.end method
