.class public final Lcn/jiguang/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Landroid/content/Context;

.field public static final f:Lcn/jiguang/c/b;

.field public static g:Ljava/lang/String;

.field public static h:I

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field private static m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static n:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/jiguang/api/SdkType;->JCORE:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/a;->a:Ljava/lang/String;

    sput-boolean v1, Lcn/jiguang/d/a;->b:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jiguang/d/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcn/jiguang/c/a;

    invoke-direct {v0}, Lcn/jiguang/c/a;-><init>()V

    sput-object v0, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    sput-boolean v1, Lcn/jiguang/d/a;->j:Z

    sput-boolean v1, Lcn/jiguang/d/a;->k:Z

    sput-boolean v1, Lcn/jiguang/d/a;->l:Z

    new-instance v0, Lcn/jiguang/d/b;

    invoke-direct {v0}, Lcn/jiguang/d/b;-><init>()V

    sput-object v0, Lcn/jiguang/d/a;->n:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcn/jiguang/d/a/d;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JCoreGlobal"

    const-string v1, "enable save power,not re bind service"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/g/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "JCoreGlobal"

    const-string v1, "PushService has been bind, give up now"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/jiguang/g/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "JCoreGlobal"

    const-string v1, "is binding service"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Lcn/jiguang/d/a;->n:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "JCoreGlobal"

    const-string v1, "Remote Service on binding..."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a/a;->f()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "JCoreGlobal"

    const-string v1, "Remote Service bind failed caused by SecurityException!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "JCoreGlobal"

    const-string v1, "Remote Service bind failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/jiguang/service/Protocol;->GetSdkVersion()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    const-string v1, "JCoreGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "soVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/16 v1, 0x64

    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    move v2, v0

    :goto_1
    const-string v3, "JCoreGlobal"

    const-string v4, "Get sdk version fail![\u83b7\u53d6sdk\u7248\u672c\u5931\u8d25!]"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 7

    const/16 v6, 0x1e

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcn/jiguang/d/a;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcn/jiguang/d/a;->k:Z

    sput-boolean v3, Lcn/jiguang/d/a;->l:Z

    const/4 v3, 0x1

    sput-boolean v3, Lcn/jiguang/d/a;->k:Z

    sget-object v3, Lcn/jiguang/d/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    const-string v3, "JCoreGlobal"

    const-string v4, "action:init - Service"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;)V

    sget-object v3, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;)V

    sget-object v3, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/d/a/f;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/api/BasePreferenceManager;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/a;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/g/a;->q(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    invoke-static {}, Lcn/jiguang/a/a/c/e;->a()Lcn/jiguang/a/a/c/e;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/jiguang/a/a/c/e;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/d/t;->a(Landroid/content/Context;)V

    const-string v3, "JCoreGlobal"

    const-string v4, "action:init - sdkVersion:1.1.9, buildId:172"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v0, "JCoreGlobal"

    const-string v3, "JCore .so file do not match JCore .jar file in the project, Failed to init JCore"

    invoke-static {v0, v3}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcn/jiguang/d/a;->c(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v0, "JCoreGlobal"

    const-string v3, "JCore cannot be initialized completely due to NULL appInfo."

    invoke-static {v0, v3}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jiguang/d/a;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcn/jiguang/d/a;->h:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/jiguang/d/a;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_6

    sget-object v1, Lcn/jiguang/d/a;->i:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jiguang/d/a;->i:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_2
    :try_start_4
    invoke-static {}, Lcn/jiguang/d/a/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {p0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "ServiceHelper"

    const-string v3, "We found the appKey is changed or register appkey is empty. Will re-register."

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/d/a/d;->g(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;)V

    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    const-string v1, "java.net.preferIPv4Stack"

    const-string v3, "true"

    invoke-static {v1, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "java.net.preferIPv6Addresses"

    const-string v3, "false"

    invoke-static {v1, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    sget-object v1, Lcn/jiguang/d/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcn/jiguang/d/b/a;->b()V

    sget-object v1, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/g/a;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v1

    :try_start_5
    const-string v3, "JCoreGlobal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get mApplicationName error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v1, "JCoreGlobal"

    const-string v3, "NO versionCode or versionName defined in manifest."

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 8

    const/16 v7, 0x2711

    const/16 v6, 0x3f0

    const/16 v5, 0x18

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    const-string v3, "JPUSH_APPKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    :goto_0
    return v0

    :cond_0
    :try_start_1
    const-string v0, "JCoreGlobal"

    const-string v2, "metadata: Can not get metaData from ApplicationInfo"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "JCoreGlobal"

    const-string v3, "Unexpected: failed to get current application info"

    invoke-static {v2, v3, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sput-object v3, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "JCoreGlobal"

    const-string v2, "errorcode:10001,metadata: JCore appKey - not defined in manifest"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0, v7, v1}, Lcn/jiguang/d/d/c;->a(Landroid/content/Context;IZ)V

    invoke-static {p0, v7}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;I)V

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v5, :cond_4

    const-string v0, "JCoreGlobal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errorcode:1008,Invalid appKey : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Please get your Appkey from JIGUANG web console!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0, v6, v1}, Lcn/jiguang/d/d/c;->a(Landroid/content/Context;IZ)V

    invoke-static {p0, v6}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;I)V

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    const-string v1, "JCoreGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "metadata: appKey - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/jiguang/d/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "JPUSH_CHANNEL"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "JCoreGlobal"

    const-string v2, "metadata: channel - not defined in manifest"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "JCoreGlobal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "metadata: channel - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/d/a/a;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "JCoreGlobal"

    const-string v2, "NO meta data defined in manifest."

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "JCoreGlobal"

    const-string v2, "Unexpected: failed to get current application info"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
