.class public final Lcn/jiguang/d/d/j;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/Object;

.field private static volatile d:Lcn/jiguang/d/d/j;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/d/d/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/jiguang/d/d/j;
    .locals 2

    sget-object v0, Lcn/jiguang/d/d/j;->d:Lcn/jiguang/d/d/j;

    if-nez v0, :cond_1

    sget-object v1, Lcn/jiguang/d/d/j;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/d/d/j;->d:Lcn/jiguang/d/d/j;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/d/d/j;

    invoke-direct {v0}, Lcn/jiguang/d/d/j;-><init>()V

    sput-object v0, Lcn/jiguang/d/d/j;->d:Lcn/jiguang/d/d/j;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/jiguang/d/d/j;->d:Lcn/jiguang/d/d/j;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcn/jiguang/d/d/j;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "JServiceCommandHelper"

    const-string v1, "init failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/g/a;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput v0, Lcn/jiguang/d/b/a;->a:I

    :cond_2
    iget-object v0, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/b/a;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/d/d/j;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/d/d/j;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lcn/jiguang/d/d/j;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-string v0, "JServiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - handleAction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jiguang/d/b/d;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "intent.INIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/b/d;->f()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "senddata.action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/b/d;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JServiceCommandHelper"

    const-string v2, "handleAction failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "datas"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/d/e/a/a/b;->a([BI)[B

    move-result-object v0

    const-string v1, "cmd"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/d/f/a;->a([B)I

    goto :goto_0

    :cond_4
    const-string v0, "intent.RTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/jiguang/d/b/d;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "intent.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/jiguang/d/b/d;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string v0, "run.action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "sdktype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    iget-object v0, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/d/b/d;->b()Landroid/os/Handler;

    move-result-object v5

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcn/jiguang/d/d/b;->a(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Handler;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "intent.STOPPUSH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "sdktype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcn/jiguang/d/b/d;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "intent.RESTOREPUSH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "sdktype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcn/jiguang/d/b/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "sendrequestdata.action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "datas"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "timeout"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdktype"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    invoke-static {v0, v2, v1}, Lcn/jiguang/d/b/d;->a([BLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "intent.power.save"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "key_power_save"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/d/b/d;->a(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "cn.jpush.android.intent.check.notification.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "key_trigger_scene"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jiguang/a/c/c;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "JServiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled service action - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/jiguang/d/d/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/d/j;->e:Z

    return v0
.end method

.method static synthetic a(Lcn/jiguang/d/d/j;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/d/d/j;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    invoke-static {p1, p2, p3}, Lcn/jiguang/d/d/j;->d(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "JServiceCommandHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "throwable ,cant start service"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", will use aidl to do action"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/jiguang/g/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "JServiceCommandHelper"

    const-string v3, "use binder do action"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a/a;->b()Lcn/jiguang/b/a;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcn/jiguang/b/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "JServiceCommandHelper"

    const-string v2, "aidl is null, cant do action"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/d/a;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "JServiceCommandHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "throwable , remote call failed, error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v1, "JServiceCommandHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "callAction action:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bundle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcn/jiguang/d/d/j;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/d/j;->b:Landroid/content/Context;

    :cond_0
    invoke-static {}, Lcn/jiguang/d/g/g;->a()Lcn/jiguang/d/g/g;

    move-result-object v6

    new-instance v0, Lcn/jiguang/d/d/k;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/jiguang/d/d/k;-><init>(Lcn/jiguang/d/d/j;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lcn/jiguang/d/g/g;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JServiceCommandHelper"

    const-string v2, "callAction failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const-string v1, "JServiceCommandHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onAction action:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bundle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "JServiceCommandHelper"

    const-string v1, " callInterface jcore init failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcn/jiguang/d/d/j;->a(Landroid/content/Context;)V

    if-nez p1, :cond_2

    const-string v0, "JServiceCommandHelper"

    const-string v1, "onPushAction context is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "JServiceCommandHelper"

    const-string v2, "onAction failed"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcn/jiguang/d/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/jiguang/d/g/g;->a()Lcn/jiguang/d/g/g;

    move-result-object v6

    new-instance v0, Lcn/jiguang/d/d/k;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/jiguang/d/d/k;-><init>(Lcn/jiguang/d/d/j;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lcn/jiguang/d/g/g;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v3, p3}, Lcn/jiguang/d/d/j;->c(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
