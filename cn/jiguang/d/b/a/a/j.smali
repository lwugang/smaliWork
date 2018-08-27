.class public abstract Lcn/jiguang/d/b/a/a/j;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcn/jiguang/d/b/a/d;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/b/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    return-void
.end method

.method private a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/net/DatagramSocket;)Lcn/jiguang/d/b/a/a;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcn/jiguang/d/a/a;->u()J

    move-result-wide v8

    add-long/2addr v8, v2

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v2}, Lcn/jiguang/d/b/a/d;->c()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcn/jiguang/d/b/a/e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    const-string v5, "SisPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sis sendBuf="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v10, v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v5, v2, v10, v0, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Lcn/jiguang/d/b/a/e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    :try_start_2
    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lcn/jiguang/d/d/c;->a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    invoke-static {v8, v9}, Lcn/jiguang/d/a/a;->a(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcn/jiguang/d/b/a/e; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v8

    :try_start_3
    invoke-static {v2}, Lcn/jiguang/d/b/a/d;->a([B)Lcn/jiguang/d/b/a/b;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    iget-object v2, v2, Lcn/jiguang/d/b/a/b;->b:[B

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcn/jiguang/d/d/c;->a(Ljava/lang/String;)Lcn/jiguang/d/b/i;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcn/jiguang/d/b/a/e;

    const/4 v5, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can not parse sis info from host: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v5, v10}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcn/jiguang/d/b/a/e; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    move-wide v14, v8

    move-wide v8, v6

    move-wide v6, v14

    :goto_0
    :try_start_4
    invoke-virtual {v2}, Lcn/jiguang/d/b/a/e;->a()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v10

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v10}, Lcn/jiguang/d/b/a/d;->a(Ljava/lang/String;IJJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    move/from16 v0, p2

    invoke-virtual {v3, v4, v0, v10}, Lcn/jiguang/d/b/a/d;->a(Ljava/lang/String;II)V

    :goto_2
    throw v2

    :catch_1
    move-exception v2

    :try_start_6
    new-instance v5, Lcn/jiguang/d/b/a/e;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to package data - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v10, v2}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v5

    :catchall_1
    move-exception v2

    move v10, v3

    move-wide v14, v8

    move-wide v8, v6

    move-wide v6, v14

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12
    :try_end_6
    .catch Lcn/jiguang/d/b/a/e; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v8, v9}, Lcn/jiguang/d/a/a;->a(J)J
    :try_end_7
    .catch Lcn/jiguang/d/b/a/e; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v6

    :try_start_8
    new-instance v5, Lcn/jiguang/d/b/a/e;

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Can not get sis response from host: - "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " - "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v8, v2}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_8
    .catch Lcn/jiguang/d/b/a/e; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_3
    move-exception v2

    move-wide v8, v10

    goto :goto_0

    :cond_0
    :try_start_9
    invoke-virtual {v2}, Lcn/jiguang/d/b/i;->h()V

    const-string v5, "SisPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Get sis info succeed with host: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/a/a;->g()V

    invoke-virtual {v2}, Lcn/jiguang/d/b/i;->g()Z

    move-result v5

    invoke-static {v5}, Lcn/jiguang/d/a/a;->a(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-static {v2}, Lcn/jiguang/d/b/a/a;->a(Lcn/jiguang/d/b/i;)Lcn/jiguang/d/b/a/a;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcn/jiguang/d/b/a/d;->a(Lcn/jiguang/d/b/a/a;)V

    invoke-static {v2}, Lcn/jiguang/d/b/a/a;->b(Lcn/jiguang/d/b/i;)Lcn/jiguang/d/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/b/a/a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Lcn/jiguang/d/b/a/e;

    const/4 v5, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sis address is Empty from host:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v5, v10}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_9
    .catch Lcn/jiguang/d/b/a/e; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    new-instance v5, Lcn/jiguang/d/b/a/c;

    move/from16 v0, p2

    invoke-direct {v5, v4, v0}, Lcn/jiguang/d/b/a/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Lcn/jiguang/d/b/a/d;->c(Lcn/jiguang/d/b/a/c;)V

    return-object v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    new-instance v5, Lcn/jiguang/d/b/a/c;

    move/from16 v0, p2

    invoke-direct {v5, v4, v0}, Lcn/jiguang/d/b/a/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Lcn/jiguang/d/b/a/d;->c(Lcn/jiguang/d/b/a/c;)V

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-wide v6, v8

    move-wide v8, v10

    move v10, v3

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    move-wide v8, v10

    move v10, v3

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    move v10, v3

    goto/16 :goto_1

    :catch_4
    move-exception v2

    move-wide v6, v8

    move-wide v8, v10

    goto/16 :goto_0
.end method


# virtual methods
.method abstract a()I
.end method

.method protected final a(Lcn/jiguang/d/b/a/a;)Lcn/jiguang/d/b/a/a;
    .locals 9

    const/4 v2, 0x0

    const-string v0, "SisPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sisAddresses:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/jiguang/d/b/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcn/jiguang/d/b/a/a;->b()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/d/b/a/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v1, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    invoke-static {v5}, Lcn/jiguang/d/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v0, "SisPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to resolve host - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_2
    const-string v3, "SisPolicy"

    const-string v4, "Get sis info error :"

    invoke-static {v3, v4, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    const-string v6, "SisPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "To get sis - host:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcn/jiguang/d/b/a/c;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v6, v1}, Lcn/jiguang/d/b/a/d;->a(Lcn/jiguang/d/b/a/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v0, "SisPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skip, already sis - ip:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, v1, Lcn/jiguang/d/b/a/c;->b:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_5
    throw v0

    :cond_6
    :try_start_6
    iget v1, v1, Lcn/jiguang/d/b/a/c;->b:I

    invoke-direct {p0, v5, v1, v0, v3}, Lcn/jiguang/d/b/a/a/j;->a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/net/DatagramSocket;)Lcn/jiguang/d/b/a/a;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "SisPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when close udp socket - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "SisPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "singleSendSis failed, error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_7
    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const-string v1, "SisPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when close udp socket - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v1, "SisPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when close udp socket - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v1

    const-string v2, "SisPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when close udp socket - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method

.method public final b(Lcn/jiguang/d/b/a/a;)I
    .locals 14

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    const-string v0, "SisPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - openConnection, addressesList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/jiguang/d/b/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v11

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcn/jiguang/d/b/a/a;->b()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v0}, Lcn/jiguang/d/b/a/d;->e()Lcn/jiguang/d/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcn/jiguang/d/b/a/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v9, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v9, Lcn/jiguang/d/b/a/c;->b:I

    if-lez v1, :cond_5

    move v1, v12

    :goto_1
    if-nez v1, :cond_6

    move v8, v12

    :cond_4
    :goto_2
    if-nez v8, :cond_2

    iget-object v0, v9, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    iget v1, v9, Lcn/jiguang/d/b/a/c;->b:I

    invoke-static {v0, v1}, Lcn/jiguang/d/a/a;->a(Ljava/lang/String;I)V

    const-string v0, "SisPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Succeed to open connection - ip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcn/jiguang/d/b/a/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    goto :goto_0

    :cond_5
    move v1, v10

    goto :goto_1

    :cond_6
    iget-object v2, v9, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    iget v3, v9, Lcn/jiguang/d/b/a/c;->b:I

    iget-object v1, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v1, v9}, Lcn/jiguang/d/b/a/d;->b(Lcn/jiguang/d/b/a/c;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "SisPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Skip, already opened connection - ip:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v12

    goto :goto_2

    :cond_7
    const-string v1, "SisPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Open connection with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " - ip:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", port:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v4}, Lcn/jiguang/d/b/a/d;->e()Lcn/jiguang/d/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/d/b/f;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v4, "ConnectingHelper"

    const-string v5, "action - injectConnection, unexpected..."

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, -0x3df

    :cond_8
    :goto_3
    if-eqz v8, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v0, v1}, Lcn/jiguang/d/a/a;->a(J)J

    move-result-wide v4

    iget-object v1, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual/range {v1 .. v8}, Lcn/jiguang/d/b/a/d;->b(Ljava/lang/String;IJJI)V

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/j;->a:Lcn/jiguang/d/b/a/d;

    invoke-virtual {v0, v2, v3, v8}, Lcn/jiguang/d/b/a/d;->b(Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcn/jiguang/d/f/a;->a(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v4}, Lcn/jiguang/d/b/f;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "ConnectingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Open connection failed - ret:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v4, "ConnectingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Open connection failed - ret:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v0, v11

    goto/16 :goto_0
.end method
