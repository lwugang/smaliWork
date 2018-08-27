.class final Lcn/jiguang/a/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/HandlerThread;

.field b:Landroid/os/Handler;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->b:Landroid/os/Handler;

    iput p2, p0, Lcn/jiguang/a/a/a/d;->c:I

    iput-object p1, p0, Lcn/jiguang/a/a/a/d;->d:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ping timer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcn/jiguang/a/a/a/e;

    invoke-direct {v2, p0}, Lcn/jiguang/a/a/a/e;-><init>(Lcn/jiguang/a/a/a/d;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/jiguang/a/a/a/d;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/d;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/a/a/a/d;->b([BII)V

    return-void
.end method

.method private b([BII)V
    .locals 9

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x4

    new-array v1, v1, [B

    aget-byte v2, p1, v3

    aput-byte v2, v1, v3

    aget-byte v2, p1, v4

    aput-byte v2, v1, v4

    aget-byte v2, p1, v5

    aput-byte v2, v1, v5

    aput-byte v3, v1, v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    :goto_0
    if-ge p2, p3, :cond_3

    int-to-byte v3, p2

    aput-byte v3, v1, v8

    aget-byte v3, v1, v8

    aget-byte v4, p1, v8

    if-eq v3, v4, :cond_0

    :try_start_0
    invoke-static {v1}, Lcn/jiguang/a/a/a/c;->a([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/jiguang/a/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "ArpUtil"

    const-string v4, "this ip equal with route, continue."

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v4, p0, Lcn/jiguang/a/a/a/d;->b:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, p0, Lcn/jiguang/a/a/a/d;->b:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ip"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcn/jiguang/a/a/a/d;->b:Landroid/os/Handler;

    iget v6, p0, Lcn/jiguang/a/a/a/d;->c:I

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ping -c 1 -w 1 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_2
    throw v1

    :catch_4
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-direct {p0, p1, v0, v1}, Lcn/jiguang/a/a/a/d;->b([BII)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
