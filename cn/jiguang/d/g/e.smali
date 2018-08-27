.class public final Lcn/jiguang/d/g/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "net"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "conn_ip"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "local_dns"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "times"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "count_0_1"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count_1_3"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->i()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "count_3_"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->j()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "success_details"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/d/g/e;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/g/e;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;IJI)V
    .locals 16

    const-class v14, Lcn/jiguang/d/g/e;

    monitor-enter v14

    :try_start_0
    const-string v2, "IndexStats"

    const-string v3, "insertData"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcn/jiguang/d/a/a;->d()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, ""

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "IndexStats"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sort_key : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    login_costime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez p4, :cond_3

    const-wide/16 v6, 0x3e8

    cmp-long v2, p2, v6

    if-gtz v2, :cond_1

    const/4 v10, 0x1

    :cond_1
    const-wide/16 v6, 0x3e8

    cmp-long v2, p2, v6

    if-lez v2, :cond_2

    const-wide/16 v6, 0xbb8

    cmp-long v2, p2, v6

    if-gtz v2, :cond_2

    const/4 v11, 0x1

    :cond_2
    const-wide/16 v6, 0xbb8

    cmp-long v2, p2, v6

    if-lez v2, :cond_3

    const/4 v12, 0x1

    :cond_3
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a/g;->a(Landroid/content/Context;)Lcn/jiguang/d/a/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/jiguang/d/a/g;->a(Ljava/lang/String;)Lcn/jiguang/d/a/h;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v6, "IndexStats"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sort_key:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is exists : update"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcn/jiguang/d/a/h;->f()I

    move-result v8

    add-int v8, v8, p4

    invoke-virtual {v13}, Lcn/jiguang/d/a/h;->g()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v13}, Lcn/jiguang/d/a/h;->h()I

    move-result v15

    add-int/2addr v10, v15

    invoke-virtual {v13}, Lcn/jiguang/d/a/h;->i()I

    move-result v15

    add-int/2addr v11, v15

    invoke-virtual {v13}, Lcn/jiguang/d/a/h;->j()I

    move-result v15

    add-int/2addr v12, v15

    invoke-virtual {v13}, Lcn/jiguang/d/a/h;->k()I

    move-result v13

    add-int/lit8 v13, v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcn/jiguang/d/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v14

    return-void

    :cond_4
    :try_start_2
    const-string v6, "IndexStats"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sort_key:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exists : insert"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v13, 0x0

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v13}, Lcn/jiguang/d/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "IndexStats"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertData exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2
.end method

.method private static b(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "net"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "conn_ip"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "local_dns"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "times"

    invoke-virtual {p0}, Lcn/jiguang/d/a/h;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 10

    const-class v2, Lcn/jiguang/d/g/e;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/jiguang/d/a/g;->a(Landroid/content/Context;)Lcn/jiguang/d/a/g;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcn/jiguang/d/a/g;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IndexStats"

    const-string v1, "buildStatisticsAndReport exception: db open failed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sdk_index"

    invoke-static {p0, v0, v4}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v4, "date"

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Lcn/jiguang/d/a/a;->b()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "login_total"

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcn/jiguang/d/a/g;->c(Z)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "login_failed"

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcn/jiguang/d/a/g;->c(Z)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Lcn/jiguang/d/a/g;->a()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {v1}, Lcn/jiguang/d/a/g;->a(Landroid/database/Cursor;)Lcn/jiguang/d/a/h;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcn/jiguang/d/a/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    const-string v5, "IndexStats"

    const-string v6, "FailedTop3 is null "

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v5, "failed_top"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Lcn/jiguang/d/a/g;->b()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-static {v1}, Lcn/jiguang/d/a/g;->a(Landroid/database/Cursor;)Lcn/jiguang/d/a/h;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcn/jiguang/d/a/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_6
    const-string v5, "IndexStats"

    const-string v6, "SucceedTop3 is null "

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v5, "succeed_top"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_8

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_4
    invoke-static {v5}, Lcn/jiguang/d/g/e;->b(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v4, "IndexStats"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildStatisticsAndReport exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_a

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_b
    :try_start_7
    invoke-static {v5}, Lcn/jiguang/d/g/e;->a(Lcn/jiguang/d/a/h;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_c

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcn/jiguang/d/a/g;->b(Z)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static declared-synchronized c(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcn/jiguang/d/g/e;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/d/a/g;->a(Landroid/content/Context;)Lcn/jiguang/d/a/g;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcn/jiguang/d/a/g;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "delete from jpush_statistics"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lcn/jiguang/d/a/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2, v0}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "StatisticsDB"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteTable exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v2, v0}, Lcn/jiguang/d/a/g;->b(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :try_start_5
    invoke-virtual {v2, v3}, Lcn/jiguang/d/a/g;->b(Z)V

    throw v0

    :cond_0
    const-string v0, "StatisticsDB"

    const-string v2, "deleteTable exception: db open failed"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
