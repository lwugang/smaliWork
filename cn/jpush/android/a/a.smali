.class public Lcn/jpush/android/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/a/a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/jpush/android/a/a;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jpush/android/a/a;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "JMessageReceiverHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create handler failed,error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/a/a;->b:Landroid/os/Handler;

    goto :goto_0
.end method

.method public static a()Lcn/jpush/android/a/a;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcn/jpush/android/a/a;->a:Lcn/jpush/android/a/a;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcn/jpush/android/a/a;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcn/jpush/android/a/a;->a:Lcn/jpush/android/a/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/jpush/android/a/a;

    invoke-direct {v0}, Lcn/jpush/android/a/a;-><init>()V

    sput-object v0, Lcn/jpush/android/a/a;->a:Lcn/jpush/android/a/a;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcn/jpush/android/a/a;->a:Lcn/jpush/android/a/a;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/jpush/android/a/a;->b:Landroid/os/Handler;

    new-instance v1, Lcn/jpush/android/a/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/jpush/android/a/a$a;-><init>(Lcn/jpush/android/a/a;Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method
