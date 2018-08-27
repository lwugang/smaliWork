.class public abstract Lcn/jiguang/d/f/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/nio/ByteBuffer;

.field protected b:Ljava/nio/channels/SocketChannel;

.field protected c:I

.field protected d:Ljava/nio/channels/Selector;

.field protected e:Z

.field protected f:Ljava/text/SimpleDateFormat;

.field protected g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jiguang/d/f/a;->f:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x5000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/d/f/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/jiguang/d/f/a;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "socketSendHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcn/jiguang/d/f/b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/jiguang/d/f/b;-><init>(Lcn/jiguang/d/f/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jiguang/d/f/a;->g:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x5000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iput v2, p0, Lcn/jiguang/d/f/a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/d/f/a;->e:Z

    return v2
.end method

.method public abstract a([B)I
.end method

.method public abstract a(I)Lcn/jiguang/d/f/e;
.end method

.method public a()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcn/jiguang/d/f/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BaseSocket"

    const-string v1, "this connect has closed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/f/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/d/f/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/d/f/a;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v5, p0, Lcn/jiguang/d/f/a;->g:Landroid/os/Handler;

    :cond_1
    iput-boolean v4, p0, Lcn/jiguang/d/f/a;->e:Z

    iget-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    iput v4, p0, Lcn/jiguang/d/f/a;->c:I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#unexcepted - looper quit failed cause by :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b(I)Ljava/nio/ByteBuffer;
    .locals 3

    iget v0, p0, Lcn/jiguang/d/f/a;->c:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcn/jiguang/d/f/a;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/jiguang/d/f/a;->c:I

    new-array v0, p1, [B

    iget-object v1, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/f/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/f/a;->b:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/f/a;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Lcn/jiguang/d/e/a/a/c;
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x14

    iget v0, p0, Lcn/jiguang/d/f/a;->c:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v0, p0, Lcn/jiguang/d/f/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    new-instance v0, Lcn/jiguang/d/e/a/a/c;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcn/jiguang/d/e/a/a/c;-><init>(Z[B)V

    goto :goto_0
.end method
