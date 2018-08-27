.class public final Lcn/jiguang/d/f/c;
.super Lcn/jiguang/d/f/a;


# instance fields
.field private h:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/jiguang/d/f/a;-><init>()V

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/f/c;->h:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private b([B)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/jiguang/d/f/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NioSocketClient"

    const-string v2, "send error - connect was invalid"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    if-gtz v1, :cond_2

    :cond_1
    const-string v1, "NioSocketClient"

    const-string v2, "send error - invalide buffer"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NioSocketClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send data error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/d/f/c;->a()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-lez v1, :cond_4

    const-string v2, "NioSocketClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isWritable has send len:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-gez v1, :cond_3

    const-string v2, "NioSocketClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isWritable error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;I)I
    .locals 10

    const/4 v2, 0x0

    const/16 v0, -0x3df

    const/16 v1, -0x3e2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcn/jiguang/d/f/a;->a(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3

    iput-object v3, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    iget-object v3, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    const-string v3, "NioSocketClient"

    const-string v4, "tcp connecting\u3002\u3002\u3002"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    iget-object v3, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcn/jiguang/d/f/c;->e:Z

    if-nez v3, :cond_1

    const-string v2, "NioSocketClient"

    const-string v3, "has close channel when connect..."

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0xbb8

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcn/jiguang/d/f/c;->e:Z

    if-nez v3, :cond_3

    const-string v2, "NioSocketClient"

    const-string v3, "has close channel when connected..."

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "NioSocketClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tcp connect has failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v0, Ljava/net/SocketTimeoutException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v0, "NioSocketClient"

    const-string v3, "tcp connected"

    invoke-static {v0, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v0, -0x3e8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([B)I
    .locals 1

    invoke-direct {p0, p1}, Lcn/jiguang/d/f/c;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method public final a(I)Lcn/jiguang/d/f/e;
    .locals 13

    const/high16 v7, 0x100000

    const/16 v12, -0x3e2

    const/16 v11, -0x3e5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcn/jiguang/d/f/c;->b()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcn/jiguang/d/f/e;

    const/16 v3, -0x3df

    const-string v4, "recv error,the connect is invalid"

    invoke-direct {v2, v3, v4}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcn/jiguang/d/f/c;->c()Lcn/jiguang/d/e/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/a/c;->f()I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/jiguang/d/f/c;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Lcn/jiguang/d/f/e;

    invoke-direct {v2, v6, v3}, Lcn/jiguang/d/f/e;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    move v2, v6

    move v4, v7

    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcn/jiguang/d/f/c;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcn/jiguang/d/f/c;->c:I

    if-ge v3, v4, :cond_b

    if-lez p1, :cond_4

    iget-object v3, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    int-to-long v8, p1

    invoke-virtual {v3, v8, v9}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    :goto_2
    if-nez v3, :cond_5

    const-string v5, "NioSocketClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readSelect:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",time out:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_3

    new-instance v2, Lcn/jiguang/d/f/e;

    const/16 v3, -0x3e2

    const-string v4, "recv time out"

    invoke-direct {v2, v3, v4}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    new-instance v2, Lcn/jiguang/d/f/e;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v11, v4}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V

    instance-of v3, v3, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v12}, Lcn/jiguang/d/f/e;->a(I)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->select()I

    move-result v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v2

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/nio/channels/SelectionKey;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v3, p0, Lcn/jiguang/d/f/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-gez v3, :cond_6

    new-instance v2, Lcn/jiguang/d/f/e;

    const/16 v4, -0x3e4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read len < 0:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcn/jiguang/d/f/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcn/jiguang/d/f/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    iget-object v2, p0, Lcn/jiguang/d/f/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v5, :cond_7

    new-instance v2, Lcn/jiguang/d/f/e;

    const/16 v3, -0x3e4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "the total buf remaining less than readLen,remaining:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/jiguang/d/f/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",readLen:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcn/jiguang/d/f/c;->a:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lcn/jiguang/d/f/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcn/jiguang/d/f/c;->c:I

    add-int/2addr v2, v5

    iput v2, p0, Lcn/jiguang/d/f/c;->c:I

    iget-object v2, p0, Lcn/jiguang/d/f/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget v2, p0, Lcn/jiguang/d/f/c;->c:I

    const/16 v9, 0x14

    if-ge v2, v9, :cond_8

    const-string v2, "NioSocketClient"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "totalbuf can not parse head:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcn/jiguang/d/f/c;->c:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",peerNetData len:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",read:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    move v5, v2

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lcn/jiguang/d/f/c;->c()Lcn/jiguang/d/e/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/a/c;->f()I

    move-result v2

    :goto_5
    move v4, v2

    move v2, v5

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v5

    goto :goto_4

    :cond_a
    move v2, v5

    goto/16 :goto_1

    :cond_b
    if-ne v4, v7, :cond_c

    new-instance v2, Lcn/jiguang/d/f/e;

    const-string v3, "recv empty data or tcp has close"

    invoke-direct {v2, v11, v3}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "NioSocketClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "read len:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",recvTotalLen:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcn/jiguang/d/f/c;->c:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",shouldLen:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcn/jiguang/d/f/c;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_d

    new-instance v2, Lcn/jiguang/d/f/e;

    invoke-direct {v2, v6, v3}, Lcn/jiguang/d/f/e;-><init>(ILjava/nio/ByteBuffer;)V

    goto/16 :goto_0

    :cond_d
    new-instance v2, Lcn/jiguang/d/f/e;

    const/16 v3, -0x3e9

    const-string v4, "parse error"

    invoke-direct {v2, v3, v4}, Lcn/jiguang/d/f/e;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v2, v4

    goto :goto_5
.end method

.method public final a()V
    .locals 4

    const-string v0, "NioSocketClient"

    const-string v1, "close this connect"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcn/jiguang/d/f/a;->a()V

    iget-object v0, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/d/f/c;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/d/f/c;->b:Ljava/nio/channels/SocketChannel;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NioSocketClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close channel failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
