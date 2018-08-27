.class public final Lcn/jpush/android/c/b;
.super Lcn/jpush/android/c/e;
.source "SourceFile"


# instance fields
.field private c:Lcn/jpush/android/c/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jpush/android/c/e;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    const-string v0, "PluginHuaweiPlatformAction"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance v0, Lcn/jpush/android/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/jpush/android/c/a;-><init>(Landroid/content/Context;Lcn/jpush/android/c/c;)V

    iput-object v0, p0, Lcn/jpush/android/c/b;->c:Lcn/jpush/android/c/a;

    .line 22
    const-string v0, "huawei_appid"

    iput-object v0, p0, Lcn/jpush/android/c/b;->a:Ljava/lang/String;

    .line 23
    const-string v0, "com.huawei.hms.client.appid"

    invoke-static {p1, v0}, Lcn/jpush/android/d/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/c/b;->b:Ljava/lang/String;

    .line 27
    :cond_1
    const-string v0, "PluginHuaweiPlatformAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "huawei appId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/b;->c:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "PluginHuaweiPlatformAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/b;->c:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "PluginHuaweiPlatformAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resumePush e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
