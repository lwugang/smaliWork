.class public Lcn/jiguang/d/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/api/JAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;JILjava/lang/Object;Ljava/nio/ByteBuffer;)J
    .locals 6

    check-cast p5, Lcn/jiguang/d/e/a/a/c;

    invoke-static {p5, p6}, Lcn/jiguang/d/e/a/a/a;->a(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)Lcn/jiguang/api/JResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "JCoreAction"

    const-string v2, "Action - receivedCommand unexcepted - response was null"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->getHead()Lcn/jiguang/d/e/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/e/a/a/c;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    const-string v1, "JCoreAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action - handResponse  response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcn/jiguang/api/JResponse;->code:I

    if-eqz v1, :cond_1

    const-string v1, "JCoreAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received error response - code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcn/jiguang/api/JResponse;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string v1, "JCoreAction"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendToThird response command - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lcn/jiguang/d/b/d;->a(Lcn/jiguang/api/JResponse;J)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/d/b/d;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, v1, p2, p3, v0}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;Landroid/os/Handler;JLcn/jiguang/api/JResponse;)V

    goto :goto_0

    :sswitch_2
    iget v1, v0, Lcn/jiguang/api/JResponse;->code:I

    if-nez v1, :cond_2

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcn/jiguang/d/d/e;->a(Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, v0, Lcn/jiguang/api/JResponse;->code:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcn/jiguang/d/d/e;->a(Landroid/content/Context;JI)V

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, -0x1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchTimeOutMessage(Landroid/content/Context;JJI)V
    .locals 2

    const/16 v0, 0x1a

    if-ne p6, v0, :cond_0

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p5}, Lcn/jiguang/d/d/e;->b(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public getBinderByType(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.9"

    return-object v0
.end method

.method public handleMessage(Landroid/content/Context;JLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isSupportedCMD(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v2, 0x13

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1a

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public onActionRun(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcn/jiguang/a/c/b;->a()Lcn/jiguang/a/c/b;

    const-string v0, "ARunAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ARunAction"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bundle:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const-string v0, "ARunAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service bundle - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.jpush.android.intent.REPORT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "report"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "report.extra.info"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/jiguang/a/a/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, "ARunAction"

    const-string v1, "onRunAction bundle is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEvent(Landroid/content/Context;JI)V
    .locals 0

    return-void
.end method
