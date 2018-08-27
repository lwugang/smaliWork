.class public final Lcn/jiguang/d/e/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)Lcn/jiguang/api/JResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "JCommands"

    const-string v2, ""

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "JCommands"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseResponseInbound - head:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/d/e/a/a/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/d/e/a/a/c;->c:I

    sparse-switch v1, :sswitch_data_0

    const-string v1, "JCommands"

    const-string v2, "Unknown command for parsing inbound."

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcn/jiguang/d/e/a/e;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/d/e/a/e;-><init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcn/jiguang/d/e/a/d;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/d/e/a/d;-><init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcn/jiguang/d/e/a/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/d/e/a/a;-><init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcn/jiguang/d/e/a/b;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/d/e/a/b;-><init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcn/jiguang/d/e/a/f;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/d/e/a/f;-><init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x13 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public static a([B)Lcn/jiguang/api/JResponse;
    .locals 2

    invoke-static {p0}, Lcn/jiguang/d/e/a/a/a;->b([B)Lcn/jiguang/d/e/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jiguang/d/e/a/c;->a()Lcn/jiguang/d/e/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jiguang/d/e/a/c;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/d/e/a/a/a;->a(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)Lcn/jiguang/api/JResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcn/jiguang/d/e/a/a/a;->b([B)Lcn/jiguang/d/e/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    invoke-virtual {v0}, Lcn/jiguang/d/e/a/c;->a()Lcn/jiguang/d/e/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcn/jiguang/d/e/a/c;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcn/jiguang/d/d/b;->a(Landroid/content/Context;Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "JCommands"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchMessage error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([B)Lcn/jiguang/d/e/a/c;
    .locals 9

    const/4 v0, 0x0

    const/16 v8, 0x14

    const/4 v7, 0x0

    const-string v1, "JCommands"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "total bytes - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/g/k;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, p0

    if-ge v1, v8, :cond_0

    const-string v1, "JCommands"

    const-string v2, "Error: received body-length short than common head-length, return null"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v8, [B

    invoke-static {p0, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v2, v1, v7

    and-int/lit16 v2, v2, 0x80

    new-instance v3, Lcn/jiguang/d/e/a/a/c;

    invoke-direct {v3, v7, v1}, Lcn/jiguang/d/e/a/a/c;-><init>(Z[B)V

    const-string v1, "JCommands"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parsed head - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/jiguang/d/e/a/a/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v3, Lcn/jiguang/d/e/a/a/c;->a:I

    add-int/lit8 v1, v1, -0x14

    if-ltz v1, :cond_1

    array-length v4, p0

    if-ge v4, v8, :cond_2

    :cond_1
    const-string v1, "JCommands"

    const-string v2, "Error: totalBytes length error with no encrypted, return null"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "JCommands"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "body size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v1, [B

    invoke-static {p0, v8, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v2, :cond_3

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/g/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcn/jiguang/d/g/a/a;->b(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Lcn/jiguang/d/e/a/c;

    invoke-direct {v1, v3, v0}, Lcn/jiguang/d/e/a/c;-><init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JCommands"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decryptBytes error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v8, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method
