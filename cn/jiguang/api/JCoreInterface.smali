.class public Lcn/jiguang/api/JCoreInterface;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    const-string v0, "cn.jpush.android.intent.DaemonService"

    sput-object v0, Lcn/jiguang/api/JCoreInterface;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCallDirect()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/g/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public static fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAesConfig()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBinderByType(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Lcn/jiguang/g/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcn/jiguang/g/a/a;->b()Lcn/jiguang/b/a;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcn/jiguang/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcn/jiguang/d/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCommonConfigAppkey()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/jiguang/d/a/d;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public static getDaemonAction()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jiguang/api/JCoreInterface;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getDebugMode()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/d/a;->b:Z

    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jiguang/g/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHttpConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcn/jiguang/d/d/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/net/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getJCoreSDKVersionInt()I
    .locals 1

    const/16 v0, 0x77

    return v0
.end method

.method public static getNextRid()J
    .locals 2

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/jiguang/d/a/a;->h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReportTime()J
    .locals 4

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/jiguang/d/a/a;->t()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getRuningFlag()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/d/b/a;->a()Z

    move-result v0

    return v0
.end method

.method public static getSid()I
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/jiguang/d/a/d;->a()I

    move-result v0

    goto :goto_0
.end method

.method public static getTestConn()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/d/a/a;->c:Z

    return v0
.end method

.method public static getUid()J
    .locals 2

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "JCoreInterface"

    const-string v2, "unexcepted - context was null"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/a/a;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "JCoreInterface"

    const-string v2, "JCore init failed"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sput-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "crash_log"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcn/jiguang/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initAction(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jiguang/api/JAction;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initActionExtra(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcn/jiguang/api/JActionExtra;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/c/e;->a()Lcn/jiguang/a/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/c/e;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isServiceStoped(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a/d;->j(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTcpConnected()Z
    .locals 1

    invoke-static {}, Lcn/jiguang/d/a/d;->d()Z

    move-result v0

    return v0
.end method

.method public static isValidRegistered()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/a/a/d/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/a/a/d/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/d/c;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcn/jiguang/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/d/c;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcn/jiguang/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/d/c;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static processCtrlReport(I)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/a/c/a;->a(I)V

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "JCoreInterface"

    const-string v1, "Action - init registerOnly:"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "intent.INIT"

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static report(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static reportHttpData(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .locals 6

    const/16 v1, 0x17

    if-nez p0, :cond_1

    const-string v0, "JCoreInterface"

    const-string v1, "[requestPermission] context was null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, "JCoreInterface"

    const-string v1, "[requestPermission] context must instanceof Activity"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/jiguang/g/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JCoreInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lackPermissions:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.app.Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "requestPermissions"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#unexcepted - requestPermission e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static restart(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3

    if-nez p0, :cond_1

    const-string v0, "JCoreInterface"

    const-string v1, "unexcepted - context was null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "sdktype"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v0, "intent.RESTOREPUSH"

    :goto_1
    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "restart failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "intent.INIT"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "sdktype"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v0

    const-string v1, "run.action"

    invoke-virtual {v0, p0, v1, p2}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "sendAction failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;I[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sdktype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datas"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "senddata.action"

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "sendData failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendRequestData(Landroid/content/Context;Ljava/lang/String;I[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sdktype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datas"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "timeout"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "sendrequestdata.action"

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "sendRequestData failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAccountId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/jiguang/d/a/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setAnalysisAction(Lcn/jiguang/api/JAnalyticsAction;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    :cond_0
    return-void
.end method

.method public static setCanLaunchedStoppedService(Z)V
    .locals 1

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/h/f;->b()Lcn/jiguang/d/h/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/d/h/e;->a(Z)V

    return-void
.end method

.method public static setDaemonAction(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcn/jiguang/api/JCoreInterface;->a:Ljava/lang/String;

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/h/f;->b()Lcn/jiguang/d/h/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/d/h/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/d/a;->b:Z

    return-void
.end method

.method public static setImLBSEnable(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "JCoreInterface"

    const-string v1, "action - setImLBSEnable-control"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static setLocationReportDelay(Landroid/content/Context;J)V
    .locals 3

    const-string v0, "location_report_delay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public static setLogEnable(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/e/a;->a:Z

    return-void
.end method

.method public static setPowerSaveMode(Landroid/content/Context;Z)V
    .locals 3

    sget-boolean v0, Lcn/jiguang/api/JCoreInterface;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sdktype"

    sget-object v2, Lcn/jiguang/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_power_save"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "intent.power.save"

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "setDozeAndPowerEnable to pushservice error"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "JCoreInterface"

    const-string v1, "context is null,setDozeAndPowerEnable failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcn/jiguang/d/a/d;->c(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static setTestConn(Z)V
    .locals 0

    sput-boolean p0, Lcn/jiguang/d/a/a;->c:Z

    return-void
.end method

.method public static setTestConnIPPort(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "JCoreInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - setTestConnIPPort ip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcn/jiguang/d/a/a;->a:Ljava/lang/String;

    sput p1, Lcn/jiguang/d/a/a;->b:I

    return-void
.end method

.method public static stop(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "sdktype"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v0

    const-string v1, "intent.STOPPUSH"

    invoke-virtual {v0, p0, v1, p2}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "stop failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/a/a/c/e;->a()Lcn/jiguang/a/a/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/a/a/c/e;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static testCountryCode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static triggerSceneCheck(Landroid/content/Context;I)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "sdktype"

    sget-object v2, Lcn/jiguang/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_trigger_scene"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "cn.jpush.android.intent.check.notification.state"

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "JCoreInterface"

    const-string v2, "triggerSceneCheck to pushservice error"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
