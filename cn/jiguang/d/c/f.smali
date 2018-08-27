.class public final Lcn/jiguang/d/c/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/jiguang/d/c/p;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/c/o;->b()Lcn/jiguang/d/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/c/o;->a()[Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcn/jiguang/d/c/j;->a(Ljava/lang/String;)Lcn/jiguang/d/c/j;

    move-result-object v0

    sget-object v1, Lcn/jiguang/d/c/j;->a:Lcn/jiguang/d/c/j;

    invoke-static {v0, v1}, Lcn/jiguang/d/c/j;->a(Lcn/jiguang/d/c/j;Lcn/jiguang/d/c/j;)Lcn/jiguang/d/c/j;

    move-result-object v0

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/jiguang/d/c/m;->a(Lcn/jiguang/d/c/j;II)Lcn/jiguang/d/c/m;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/c/h;->a(Lcn/jiguang/d/c/m;)Lcn/jiguang/d/c/h;

    move-result-object v0

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcn/jiguang/d/c/h;->b(I)[B

    move-result-object v5

    array-length v6, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v4, v1
    :try_end_0
    .catch Lcn/jiguang/d/c/s; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcn/jiguang/d/c/k; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    const/16 v8, 0x35

    invoke-direct {v2, v0, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-static {v0, v2, v5, v8, v9}, Lcn/jiguang/d/c/r;->a(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v0

    new-instance v2, Lcn/jiguang/d/c/h;

    invoke-direct {v2, v0}, Lcn/jiguang/d/c/h;-><init>([B)V

    invoke-virtual {v2}, Lcn/jiguang/d/c/h;->a()Lcn/jiguang/d/c/m;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcn/jiguang/d/c/h;->a(I)[Lcn/jiguang/d/c/l;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_3

    aget-object v0, v9, v2

    invoke-virtual {v0}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v11

    invoke-virtual {v11}, Lcn/jiguang/d/c/m;->e()I

    move-result v11

    invoke-virtual {v8}, Lcn/jiguang/d/c/m;->e()I

    move-result v12

    if-ne v11, v12, :cond_4

    invoke-virtual {v0}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v11

    invoke-virtual {v11}, Lcn/jiguang/d/c/m;->d()I

    move-result v11

    invoke-virtual {v0}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v12

    invoke-virtual {v12}, Lcn/jiguang/d/c/m;->b()Lcn/jiguang/d/c/j;

    move-result-object v12

    invoke-virtual {v8}, Lcn/jiguang/d/c/m;->c()I

    move-result v13

    if-ne v11, v13, :cond_4

    invoke-virtual {v8}, Lcn/jiguang/d/c/m;->b()Lcn/jiguang/d/c/j;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcn/jiguang/d/c/j;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Lcn/jiguang/d/c/l;->a()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/c/p;

    invoke-virtual {v0}, Lcn/jiguang/d/c/p;->h()I

    move-result v12

    if-lez v12, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v12, "DNSSrvUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "srv:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/d/c/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcn/jiguang/d/c/s; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcn/jiguang/d/c/k; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "DNSSrvUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get default ports error at "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", with UnknownHostException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v2, "DNSSrvUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Get default ports error at "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", with IOException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcn/jiguang/d/c/s; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcn/jiguang/d/c/k; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v0, "DNSSrvUtils"

    const-string v1, "Get default ports error with TextParseException"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v0, "DNSSrvUtils"

    const-string v1, "Get default ports error with NameTooLongException"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v0, "DNSSrvUtils"

    const-string v1, "Get default ports error with Exception"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
