.class public Lcn/jpush/android/service/PushService;
.super Landroid/app/Service;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushService"


# instance fields
.field private mBinder:Lcn/jiguang/b/b;

.field private mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->mBinder:Lcn/jiguang/b/b;

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "PushService"

    const-string v1, "action - onBind"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/d/b/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->mBinder:Lcn/jiguang/b/b;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "PushService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service main thread - threadId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/jiguang/g/n;

    invoke-direct {v1}, Lcn/jiguang/g/n;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PushService"

    const-string v1, "onCreate:JCoreInterface init failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/d/b/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcn/jiguang/g/a/a;

    invoke-direct {v0}, Lcn/jiguang/g/a/a;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->mBinder:Lcn/jiguang/b/b;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/a;->l(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/d/b/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/d/b/d;->a(Landroid/app/Service;)V

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/d/h/f;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v2}, Lcn/jpush/android/service/PushReceiver;-><init>()V

    iput-object v2, p0, Lcn/jpush/android/service/PushService;->receiver:Landroid/content/BroadcastReceiver;

    :cond_1
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcn/jpush/android/service/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->setDozePowerReceiver()V

    const-string v0, "PushService"

    const-string v2, "PushService onCreate"

    invoke-virtual {v1, v0, v2}, Lcn/jiguang/g/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PushService"

    const-string v2, "Fail to start other app caused by OutOfMemory."

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerReceiver fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy - processId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcn/jiguang/d/b/d;->c()V

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterReceiver fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onStartCommand - intent:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", connection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/d/b/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PushService"

    const-string v1, "onStartCommand:JCoreInterface init failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    :try_start_2
    const-string v0, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service bundle - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Lcn/jiguang/d/d/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PushService onStartCommand error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string v3, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get intent extras failed, error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "PushService"

    const-string v1, "action - onUnBind"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setDozePowerReceiver()V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/d/a/d;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    const-string v0, "PushService"

    const-string v1, "register doze and power receiver"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v0}, Lcn/jpush/android/service/PushReceiver;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/jpush/android/service/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_2
    const-string v0, "PushService"

    const-string v1, "doze and power receiver has register"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setDozePowerReceiver fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    const-string v0, "PushService"

    const-string v1, "unregister doze and power receiver"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->mPowerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    :cond_4
    const-string v0, "PushService"

    const-string v1, "doze and power has unregister"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
