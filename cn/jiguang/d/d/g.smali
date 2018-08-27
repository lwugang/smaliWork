.class public final Lcn/jiguang/d/d/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Landroid/os/Handler;

.field private static d:Lcn/jiguang/d/d/g;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/d/d/g;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/d/d/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/d/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcn/jiguang/d/d/g;
    .locals 1

    sget-object v0, Lcn/jiguang/d/d/g;->d:Lcn/jiguang/d/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/d/d/g;

    invoke-direct {v0}, Lcn/jiguang/d/d/g;-><init>()V

    sput-object v0, Lcn/jiguang/d/d/g;->d:Lcn/jiguang/d/d/g;

    :cond_0
    sget-object v0, Lcn/jiguang/d/d/g;->d:Lcn/jiguang/d/d/g;

    return-object v0
.end method

.method public static b()V
    .locals 5

    const/16 v4, 0x1f40

    sget-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    invoke-static {}, Lcn/jiguang/d/a/a;->i()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "rtc_delay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rtc"

    const-string v2, "rtc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v1

    const-string v2, "intent.RTC"

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/d/d/j;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HeartBeatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendHeartBeat error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/d/d/g;->a:Z

    :try_start_0
    sget-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HeartBeatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#unexception - stop failed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcn/jiguang/d/d/g;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "HeartBeatHelper"

    const-string v1, "init failed,context is null "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/d/d/g;->a:Z

    iput-object p1, p0, Lcn/jiguang/d/d/g;->c:Landroid/content/Context;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JHeartBeatHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcn/jiguang/d/d/h;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/jiguang/d/d/h;-><init>(Lcn/jiguang/d/d/g;Landroid/os/Looper;)V

    sput-object v1, Lcn/jiguang/d/d/g;->b:Landroid/os/Handler;

    invoke-static {}, Lcn/jiguang/d/d/g;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HeartBeatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init jheart beat failed - error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
