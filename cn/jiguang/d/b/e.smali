.class final Lcn/jiguang/d/b/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/d/b/d;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/b/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "JiguangTcpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "sdktype"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcn/jiguang/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "JiguangTcpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - handleCoreMessage , unhandle msg-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "JiguangTcpManager"

    const-string v1, "Service killed by itself due to self killed mode"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/a;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/d/d/c;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->b(Lcn/jiguang/d/b/d;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-virtual {v0}, Lcn/jiguang/d/b/d;->e()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->c(Lcn/jiguang/d/b/d;)Lcn/jiguang/d/b/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->c(Lcn/jiguang/d/b/d;)Lcn/jiguang/d/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/b/f;->c()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;Z)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;Z)V

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcn/jiguang/d/b/e;->removeMessages(I)V

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcn/jiguang/d/b/e;->removeMessages(I)V

    const/16 v0, 0x3f3

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcn/jiguang/d/b/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x3f2

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcn/jiguang/d/b/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connection"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;J)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connection"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jiguang/d/b/d;->b(Lcn/jiguang/d/b/d;J)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connection"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jiguang/d/b/d;->c(Lcn/jiguang/d/b/d;J)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connection"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v3, v1}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;JI)V

    goto/16 :goto_0

    :sswitch_d
    sget-object v0, Lcn/jiguang/d/b/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->d(Lcn/jiguang/d/b/d;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v0}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/a;->j(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/jiguang/d/b/h;

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/jiguang/d/b/g;->a()Lcn/jiguang/d/b/g;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/jiguang/d/b/h;

    invoke-virtual {v1, v0}, Lcn/jiguang/d/b/g;->a(Lcn/jiguang/d/b/h;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "JiguangTcpManager"

    const-string v1, "Unexpected msg.obj is not String  request when sent timeout."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "JiguangTcpManager"

    const-string v1, "Unexpected: msg obj is null when sent timeout."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcn/jiguang/d/b/h;

    if-eqz v0, :cond_5

    invoke-static {}, Lcn/jiguang/d/b/g;->a()Lcn/jiguang/d/b/g;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/jiguang/d/b/h;

    invoke-virtual {v1, v0}, Lcn/jiguang/d/b/g;->b(Lcn/jiguang/d/b/h;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "JiguangTcpManager"

    const-string v1, "Unexpected msg.obj is not Requesting when sent timeout."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "JiguangTcpManager"

    const-string v1, "Unexpected: bundle is null when request timeout."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "JiguangTcpManager"

    const-string v1, "Unexpected - want to send null request."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "request_timeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "request_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "request_sdktype"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/d/b/g;->a()Lcn/jiguang/d/b/g;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcn/jiguang/d/b/g;->b([BLjava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "JiguangTcpManager"

    const-string v1, "Unexpected - msg response bundle is null."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "request_sdktype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/d/b/g;->a()Lcn/jiguang/d/b/g;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "connection"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcn/jiguang/d/b/g;->a(JLjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v1}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jiguang/d/d/e;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    iget-object v2, p0, Lcn/jiguang/d/b/e;->a:Lcn/jiguang/d/b/d;

    invoke-static {v2}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/d/b/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcn/jiguang/d/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_3
        0x3fe -> :sswitch_e
        0x407 -> :sswitch_f
        0x408 -> :sswitch_14
        0x1c85 -> :sswitch_a
        0x1c87 -> :sswitch_b
        0x1c88 -> :sswitch_9
        0x1c8a -> :sswitch_c
        0x1c8b -> :sswitch_d
        0x1ce9 -> :sswitch_12
        0x1cea -> :sswitch_13
        0x1ceb -> :sswitch_11
        0x1cec -> :sswitch_10
    .end sparse-switch
.end method
