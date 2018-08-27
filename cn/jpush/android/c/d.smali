.class public final Lcn/jpush/android/c/d;
.super Lcn/jpush/android/c/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/jpush/android/c/e;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    const-string v0, "PluginMeizuPlateformAction"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    const-string v0, "MEIZU_APPKEY"

    invoke-static {p1, v0}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/c/d;->a:Ljava/lang/String;

    .line 25
    const-string v0, "MEIZU_APPID"

    invoke-static {p1, v0}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/c/d;->b:Ljava/lang/String;

    .line 26
    const-string v0, "PluginMeizuPlateformAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "meizuAppKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/d;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",meizuAppId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/c/d;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    const-string v0, "PluginMeizuPlateformAction"

    const-string v1, "Register - context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/c/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    const-string v0, "PluginMeizuPlateformAction"

    const-string v1, "meizu sdk appkey or appid was empty,please check your manifest config"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "PluginMeizuPlateformAction"

    const-string v2, "#unexpected - register error:"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/c/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/c/d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/meizu/cloud/pushsdk/PushManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected final c(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
