.class final Lcn/jiguang/d/d/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/d/d/g;


# direct methods
.method constructor <init>(Lcn/jiguang/d/d/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/d/h;->a:Lcn/jiguang/d/d/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/jiguang/d/d/h;->a:Lcn/jiguang/d/d/g;

    iget-object v0, p0, Lcn/jiguang/d/d/h;->a:Lcn/jiguang/d/d/g;

    invoke-static {v0}, Lcn/jiguang/d/d/g;->a(Lcn/jiguang/d/d/g;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HeartBeatHelper"

    const-string v1, "NULL Context"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcn/jiguang/d/d/h;->a:Lcn/jiguang/d/d/g;

    invoke-static {v0}, Lcn/jiguang/d/d/g;->a(Lcn/jiguang/d/d/g;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/d/d/g;->b()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/jiguang/a/c/c;->c(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/d/d/e;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcn/jiguang/d/a/d;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/jiguang/d/b/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HeartBeatHelper"

    const-string v2, "send hb by handler"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/d/d/g;->b(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string v0, "HeartBeatHelper"

    const-string v1, "service can run,will use alarmReceiver to send hb"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "HeartBeatHelper"

    const-string v1, "tcp has close by user"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "HeartBeatHelper"

    const-string v1, "is not push or im"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1f40
        :pswitch_0
    .end packed-switch
.end method
