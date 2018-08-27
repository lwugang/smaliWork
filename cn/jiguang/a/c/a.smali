.class public final Lcn/jiguang/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x35

    if-ne p1, v1, :cond_1

    invoke-static {p0}, Lcn/jiguang/d/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceInfo from sp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/d/g/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/a/a/c/b;->a(Landroid/content/Context;Lcn/jiguang/d/g/b;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceInfo :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    :try_start_1
    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    invoke-static {p0}, Lcn/jiguang/d/g/b;->c(Landroid/content/Context;)B

    move-result v2

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    invoke-static {p0}, Lcn/jiguang/d/g/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "rom_type"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v2, "regid"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rom_info"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "get rom_info :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v2, "cmd"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare device report:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jiguang/d/g/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonObject:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(I)V
    .locals 4

    :try_start_0
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "processCtrlReportByCmd failed because JCore.mApplicationContext is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    :cond_0
    sparse-switch p0, :sswitch_data_0

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected: unknown push msg type -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processCtrlReport exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/a/c/k;->a(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/b/d;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/a/c/a;->a(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/c/c;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_0
        0x9 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;JLcn/jiguang/api/JResponse;)V
    .locals 11

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - parseCtrlResponse"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p4, Lcn/jiguang/d/e/a/b;

    invoke-virtual {p4}, Lcn/jiguang/d/e/a/b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "action - processLocation, msgContent:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v2}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcn/jiguang/a/c/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "cmd"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    invoke-virtual {p4}, Lcn/jiguang/d/e/a/b;->a()J

    move-result-wide v2

    invoke-static {p0, v0}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Lcn/jiguang/d/a/a;->h()J

    move-result-wide v6

    invoke-static {}, Lcn/jiguang/d/a/d;->a()I

    move-result v8

    new-instance v9, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v10, 0x5000

    invoke-direct {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v9, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    int-to-long v6, v8

    invoke-virtual {v9, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v9, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    invoke-virtual {v9, v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    :cond_1
    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcn/jiguang/d/e/a/a/b;->a([BI)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "CtrlMessageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reportCtrlReceived to report received failed - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_5

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "msgContent is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    :sswitch_0
    return-void

    :cond_3
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/jiguang/d/f/a;->a([B)I

    move-result v0

    const-string v4, "CtrlMessageProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reportCtrlReceived - ret:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v0, "CtrlMessageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to report received - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v0, "CtrlMessageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Succeed to report received - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_0
    const-string v0, "cmd"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ctrl - cmd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected: unknown push ctrl cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected!"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :sswitch_1
    :try_start_1
    invoke-static {p0, p1, v1}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;Landroid/os/Handler;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :sswitch_2
    invoke-static {p0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_3
    invoke-static {p0}, Lcn/jiguang/a/c/c;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_4
    invoke-static {p0}, Lcn/jiguang/a/a/c/k;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :sswitch_5
    invoke-static {p0, v1}, Lcn/jiguang/a/c/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :sswitch_6
    invoke-static {p0, v1}, Lcn/jiguang/a/c/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :sswitch_7
    invoke-static {p0, v1}, Lcn/jiguang/a/c/a;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :sswitch_8
    invoke-static {p0, v1}, Lcn/jiguang/a/c/a;->e(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :sswitch_9
    invoke-static {p0, v1}, Lcn/jiguang/a/c/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x9 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x2c -> :sswitch_4
        0x2d -> :sswitch_5
        0x32 -> :sswitch_6
        0x33 -> :sswitch_7
        0x34 -> :sswitch_8
        0x35 -> :sswitch_0
        0x36 -> :sswitch_9
    .end sparse-switch
.end method

.method private static a(Landroid/content/Context;Landroid/os/Handler;Lorg/json/JSONObject;)V
    .locals 6

    const-wide/16 v4, 0x0

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "lbs disabled..."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CtrlMessageProcessor"

    const-string v2, "lbs enabled..."

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;Z)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/jiguang/a/b/a;->b(Landroid/content/Context;Z)V

    const-string v1, "frequency"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_1
    const-string v2, "report_location_frequency"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p1}, Lcn/jiguang/a/c/a;->a(Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected! has wrong with JSONException"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const-wide/16 v6, 0x0

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const-string v0, "app_running_collect_enable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "app_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "process_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    new-instance v4, Lcn/jiguang/g/b/a;

    invoke-direct {v4}, Lcn/jiguang/g/b/a;-><init>()V

    const-string v5, "app_running_collect_enable"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v4

    const-string v5, "app_running_collect_interval"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v0

    const-string v1, "app_running_collect_app_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v0

    const-string v1, "app_running_collect_process_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Lcn/jiguang/g/b/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configReportRunningApp exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p0, v2, v3}, Lcn/jiguang/g/d;->a(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - processLocation"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ea

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - processLocationCollect"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "interval"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    invoke-static {p0}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    mul-long/2addr v0, v6

    const-string v2, "location_collect_frequency"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "JAnalyticsCommonConfigs"

    const-string v1, "unexpected!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected! has wrong with JSONException"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "action - processStartThirdService"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/h/f;->c()Lcn/jiguang/d/h/h;

    move-result-object v2

    sparse-switch v1, :sswitch_data_0

    const-string v0, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected: unknown type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "serviceName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcn/jiguang/d/d/a;

    invoke-direct {v3}, Lcn/jiguang/d/d/a;-><init>()V

    iput-object v1, v3, Lcn/jiguang/d/d/a;->a:Ljava/lang/String;

    iput-object v0, v3, Lcn/jiguang/d/d/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcn/jiguang/d/h/h;->a(Landroid/content/Context;Lcn/jiguang/d/d/a;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "Can not start PushService due to SecurityException."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "serviceName"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcn/jiguang/d/d/a;

    invoke-direct {v3}, Lcn/jiguang/d/d/a;-><init>()V

    iput-object v1, v3, Lcn/jiguang/d/d/a;->a:Ljava/lang/String;

    iput-object v0, v3, Lcn/jiguang/d/d/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcn/jiguang/d/h/h;->b(Landroid/content/Context;Lcn/jiguang/d/d/a;)V

    const-string v0, "CtrlMessageProcessor"

    const-string v1, "bind remote service"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected! has wrong with JSONException"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_2
    :try_start_2
    const-string v0, "CtrlMessageProcessor"

    const-string v1, "start push service..."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected!"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private static d(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 12

    const/4 v0, 0x0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "action - updateDetchPhoneNumberConfig"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CtrlMessageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsonContent:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uploadnumber"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "version"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_secret"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "carriers"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    move v1, v0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v7, "carrier"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "url"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Lcn/jiguang/a/a/c/i;->a(Ljava/lang/String;)I

    move-result v8

    const-string v9, "http://"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    if-ltz v8, :cond_2

    const/4 v9, 0x3

    if-lt v8, v9, :cond_4

    :cond_2
    :goto_1
    const-string v9, "CtrlMessageProcessor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "carrier:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " url:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " providerindex:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "number_url"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9, v0}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected!"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    :try_start_1
    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "number_version"

    invoke-static {p0, v0, v3}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {v4}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "number_appid"

    invoke-static {p0, v0, v4}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {v5}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "number_appsecret"

    invoke-static {p0, v0, v5}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "CtrlMessageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "version:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n appID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n appSecret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n reportnumber:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/a/b/a;->c(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static e(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CtrlMessageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "jsonContent:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "disable"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v3, "frequency"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "frequency"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v2, v0

    :goto_0
    if-nez v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "arpinfo_report_enable"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    const-string v2, "report_arpinfo_frequency"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {p0}, Lcn/jiguang/a/a/a/c;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CtrlMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportMacListInfo error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "CtrlMessageProcessor"

    const-string v2, "unexpected! has wrong with JSONException"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-wide v2, v0

    goto :goto_0
.end method
