.class public final Lcn/jpush/android/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JLcn/jiguang/api/JResponse;)J
    .locals 11

    .prologue
    .line 37
    move-object v0, p3

    check-cast v0, Lcn/jpush/a/b;

    .line 38
    invoke-virtual {v0}, Lcn/jpush/a/b;->a()I

    move-result v1

    invoke-virtual {v0}, Lcn/jpush/a/b;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcn/jpush/a/b;->getRid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1203
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getUid()J

    move-result-wide v6

    int-to-byte v1, v1

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getSid()I

    move-result v8

    .line 2052
    new-instance v9, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v10, 0x5000

    invoke-direct {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    .line 2053
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    .line 2054
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 2055
    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 2056
    invoke-virtual {v9, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 2057
    int-to-long v4, v8

    invoke-virtual {v9, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    .line 2058
    invoke-virtual {v9, v6, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 2060
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    .line 2061
    invoke-virtual {v9, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 2062
    invoke-virtual {v9, v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 2064
    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    .line 2065
    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v1

    .line 1204
    sget-object v2, Lcn/jpush/android/a;->e:Landroid/content/Context;

    sget-object v3, Lcn/jpush/android/a;->a:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v1}, Lcn/jiguang/api/JCoreInterface;->sendData(Landroid/content/Context;Ljava/lang/String;I[B)V

    .line 40
    invoke-virtual {v0}, Lcn/jpush/a/b;->b()J

    move-result-wide v4

    .line 41
    invoke-virtual {v0}, Lcn/jpush/a/b;->a()I

    move-result v6

    .line 42
    invoke-virtual {v0}, Lcn/jpush/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "PushMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msgType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "PushMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msgContent: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 56
    :try_start_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    const-string v0, "PushMessageProcessor"

    const-string v1, "NO appId"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-wide/16 v0, -0x1

    .line 97
    :goto_0
    return-wide v0

    .line 61
    :cond_0
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 62
    if-nez v2, :cond_1

    .line 63
    const-string v0, "PushMessageProcessor"

    const-string v1, "NO senderId"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x2

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_2

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    :goto_1
    const-string v0, "PushMessageProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Message Fields - appId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", senderId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msgContent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sparse-switch v6, :sswitch_data_0

    .line 95
    invoke-static {v6}, Lcn/jiguang/api/JCoreInterface;->processCtrlReport(I)V

    .line 97
    :goto_2
    invoke-virtual {p3}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 71
    :cond_2
    :try_start_1
    const-string v0, "PushMessageProcessor"

    const-string v3, "No msgContent"

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v1, "PushMessageProcessor"

    const-string v2, "Parse msgContent failed"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2114
    :sswitch_0
    :try_start_2
    const-string v0, "PushMessageProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseNormal -  msgId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    new-instance v7, Lcn/jpush/android/d/j;

    const-string v0, "PushMessageProcessor"

    const-string v6, "Time to process received msg."

    invoke-direct {v7, v0, v6}, Lcn/jpush/android/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2123
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2124
    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JB)V

    .line 2131
    :goto_3
    invoke-virtual {v7}, Lcn/jpush/android/d/j;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    const-string v1, "PushMessageProcessor"

    const-string v2, "Unknown error"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2126
    :cond_3
    :try_start_3
    const-string v0, "PushMessageProcessor"

    const-string v1, "Empty msg. Give up parser."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2129
    :cond_4
    const-string v0, "PushMessageProcessor"

    const-string v1, "Empty senderid or appid. Give up parser."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 93
    :sswitch_1
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    invoke-static {p0, v3, v0, v4, v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;IJ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JB)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 136
    const-string v0, "PushMessageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action:receivedPushMessage msgId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, p1, p2, v0}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object v2

    .line 140
    if-nez v2, :cond_1

    .line 3185
    :cond_0
    :goto_0
    return-void

    .line 2410
    :cond_1
    new-instance v0, Lcn/jpush/android/data/c;

    invoke-direct {v0, v2}, Lcn/jpush/android/data/c;-><init>(Lcn/jpush/android/data/b;)V

    .line 144
    invoke-static {p0, v0}, Lcn/jpush/android/d/f;->a(Landroid/content/Context;Lcn/jpush/android/data/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput-byte p6, v2, Lcn/jpush/android/data/a;->e:B

    .line 149
    const/4 v0, 0x0

    .line 151
    const-string v3, "7fef6a7d76c782b1f0eda446b2c6c40a"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-static {p0, v2}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V

    .line 164
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3173
    const-string v3, "PushMessageProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processBasicEntity type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_6

    .line 3177
    const-string v3, "PushMessageProcessor"

    const-string v4, "processBasicEntity notification"

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3179
    const-string v0, "PushMessageProcessor"

    const-string v1, "Service is stoped, give up all the message"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-boolean v0, v2, Lcn/jpush/android/data/a;->f:Z

    if-eqz v0, :cond_3

    .line 157
    iget v0, v2, Lcn/jpush/android/data/a;->b:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    .line 158
    const/4 v0, 0x3

    goto :goto_1

    .line 161
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 3183
    :cond_4
    invoke-static {p0}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3184
    const-string v0, "PushMessageProcessor"

    const-string v1, "push is closed\uff0cIntercept the message"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3187
    :cond_5
    iput-boolean v1, v2, Lcn/jpush/android/data/a;->i:Z

    .line 3188
    invoke-static {p0, v2}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V

    .line 3191
    :cond_6
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3193
    const-string v0, "PushMessageProcessor"

    const-string v1, "processBasicEntity user-defined message."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iget-object v0, v2, Lcn/jpush/android/data/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcn/jpush/android/data/a;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3195
    :cond_7
    invoke-static {p0, v2}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method
