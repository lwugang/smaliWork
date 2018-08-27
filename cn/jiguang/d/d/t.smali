.class public final Lcn/jiguang/d/d/t;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "VersionHelper"

    const-string v1, "action - handleUpgrade"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1.1.9"

    invoke-static {p0}, Lcn/jiguang/a/a/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcn/jiguang/d/a/a;->s()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "VersionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdk version - curVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "VersionHelper"

    const-string v2, "It\'s a new app, first installed"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v1}, Lcn/jiguang/d/a/a;->i(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lcn/jiguang/a/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "VersionHelper"

    const-string v2, "action - onUpgrade"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/d/d/t;->b(Landroid/content/Context;)Z

    invoke-static {p0}, Lcn/jiguang/d/a/a;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Z
    .locals 13

    const-wide/16 v4, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x0

    const-class v7, Lcn/jiguang/d/d/t;

    monitor-enter v7

    :try_start_0
    const-string v1, "VersionHelper"

    const-string v2, "Action - copyRegisterUserInfo"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    invoke-static {p0}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VersionHelper"

    const-string v2, "No RegistrationID."

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    return v0

    :cond_1
    const/16 v1, 0x8

    :try_start_1
    new-array v8, v1, [B

    const-string v1, "PrefsFile"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v9, v8, v1, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    move-wide v2, v4

    :goto_1
    if-ge v1, v12, :cond_2

    shl-long v10, v2, v12

    :try_start_2
    aget-byte v2, v8, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v2, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->read()I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "VersionHelper"

    const-string v2, "No saved user info."

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    move-wide v2, v4

    :goto_3
    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {p0, v2, v3, v1}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-wide v2, v4

    :goto_4
    :try_start_5
    const-string v8, "VersionHelper"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcn/jiguang/e/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_2
    move-exception v1

    goto :goto_4
.end method
