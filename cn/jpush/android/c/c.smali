.class public final Lcn/jpush/android/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/app/Activity;

.field b:Lcn/jpush/android/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_1

    .line 27
    const-string v0, "PluginHuaweiPushInterface"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 31
    new-instance v0, Lcn/jpush/android/c/a;

    invoke-direct {v0, p1, p0}, Lcn/jpush/android/c/a;-><init>(Landroid/content/Context;Lcn/jpush/android/c/c;)V

    iput-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 36
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart mActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-nez p1, :cond_1

    .line 38
    const-string v0, "PluginHuaweiPushInterface"

    const-string v1, "activity was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz v0, :cond_0

    .line 43
    iput-object p1, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->isPushStopped(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "PluginHuaweiPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStart - error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 62
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_0

    .line 64
    if-eqz p1, :cond_6

    .line 67
    if-eqz p4, :cond_1

    :try_start_0
    const-string v0, "intent.extra.RESULT"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    :goto_0
    const-string v1, "PluginHuaweiPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult,intent.extra.RESULT value"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 72
    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 73
    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v0, v0, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v0}, Lcom/huawei/hms/api/HuaweiApiClient;->connect()V

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult call connect failed huaweiApiClient:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/c;->b:Lcn/jpush/android/c/a;

    iget-object v2, v2, Lcn/jpush/android/c/a;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "PluginHuaweiPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_3
    :try_start_1
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 81
    const-string v0, "PluginHuaweiPushInterface"

    const-string v1, "user cancled"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 83
    const-string v0, "PluginHuaweiPushInterface"

    const-string v1, "huawei sdk internal error"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_5
    const-string v1, "PluginHuaweiPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknow error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    :cond_6
    const-string v0, "PluginHuaweiPushInterface"

    const-string v1, "onActivityResult activity was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "PluginHuaweiPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop mActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string v0, "PluginHuaweiPushInterface"

    const-string v1, "activity was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/c/c;->a:Landroid/app/Activity;

    .line 59
    return-void
.end method
