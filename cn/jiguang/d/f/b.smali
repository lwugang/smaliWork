.class public final Lcn/jiguang/d/f/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/d/f/a;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/f/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/f/b;->a:Lcn/jiguang/d/f/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcn/jiguang/d/f/b;->a:Lcn/jiguang/d/f/a;

    invoke-virtual {v1, v0}, Lcn/jiguang/d/f/a;->a([B)I

    return-void

    :catch_0
    move-exception v0

    const-string v2, "BaseSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#unexcepted - get send data failed e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
