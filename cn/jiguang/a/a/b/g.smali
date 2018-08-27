.class final Lcn/jiguang/a/a/b/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/b/f;


# direct methods
.method public constructor <init>(Lcn/jiguang/a/a/b/f;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "MyLocationManager"

    const-string v1, "unknow msg"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    invoke-static {v0}, Lcn/jiguang/a/a/b/f;->a(Lcn/jiguang/a/a/b/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/a/a/b/f;->a(Lcn/jiguang/a/a/b/f;Z)Z

    iget-object v0, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    invoke-static {v0}, Lcn/jiguang/a/a/b/f;->b(Lcn/jiguang/a/a/b/f;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    invoke-static {v0}, Lcn/jiguang/a/a/b/f;->c(Lcn/jiguang/a/a/b/f;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    invoke-static {v0}, Lcn/jiguang/a/a/b/f;->d(Lcn/jiguang/a/a/b/f;)Lcn/jiguang/a/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/b/g;->a:Lcn/jiguang/a/a/b/f;

    invoke-static {v0}, Lcn/jiguang/a/a/b/f;->d(Lcn/jiguang/a/a/b/f;)Lcn/jiguang/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/a/a/b/c;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const-string v0, "MyLocationManager"

    const-string v1, "gpsInfoManager was null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
