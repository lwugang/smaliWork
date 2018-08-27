.class public final Lcn/jiguang/d/g/h;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)[B
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    invoke-static {v3}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v3}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static b([B)[B
    .locals 6

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x100

    :try_start_1
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v3}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p0

    invoke-static {v3}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcn/jiguang/g/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
