.class public Lcn/jpush/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/jiguang/api/JAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;JILjava/lang/Object;Ljava/nio/ByteBuffer;)J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 41
    const-string v0, "JPushDataAction"

    const-string v1, "Action - dispatchMessage"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "JPushDataAction"

    const-string v1, "Action - onEvent , JPush init failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 86
    :goto_0
    return-wide v0

    .line 1069
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 1084
    const-string v0, "ContentValues"

    const-string v1, "Unknown command for parsing inbound."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x0

    .line 47
    :goto_1
    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "JPushDataAction"

    const-string v4, "JPush was stoped"

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz v1, :cond_1

    instance-of v0, v1, Lcn/jpush/a/b;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcn/jpush/a/b;

    .line 51
    invoke-virtual {v0}, Lcn/jpush/a/b;->a()I

    move-result v0

    const/16 v4, 0x14

    if-eq v0, v4, :cond_1

    move-wide v0, v2

    .line 52
    goto :goto_0

    .line 1074
    :sswitch_0
    new-instance v1, Lcn/jpush/a/d;

    invoke-direct {v1, p5, p6}, Lcn/jpush/a/d;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1077
    :sswitch_1
    new-instance v1, Lcn/jpush/a/b;

    invoke-direct {v1, p5, p6}, Lcn/jpush/a/b;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 1081
    :sswitch_2
    new-instance v1, Lcn/jpush/a/a;

    invoke-direct {v1, p5, p6}, Lcn/jpush/a/a;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 55
    :cond_1
    if-eqz v1, :cond_2

    .line 56
    const-string v0, "JPushDataAction"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 80
    const-string v0, "JPushDataAction"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unhandled response command - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_0

    .line 61
    :sswitch_3
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {v0, p2, p3, v1}, Lcn/jpush/android/a/h;->a(Landroid/content/Context;JLcn/jiguang/api/JResponse;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 63
    :sswitch_4
    const-string v0, "JPushDataAction"

    const-string v4, "Should not exist - ignore tag alias response."

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :sswitch_5
    iget v0, v1, Lcn/jiguang/api/JResponse;->code:I

    if-nez v0, :cond_3

    .line 67
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object v0

    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;J)V

    goto :goto_2

    .line 69
    :cond_3
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object v0

    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v1, Lcn/jiguang/api/JResponse;->code:I

    invoke-virtual {v0, p1, v4, v5, v6}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;JI)V

    goto :goto_2

    :sswitch_6
    move-object v0, v1

    .line 74
    check-cast v0, Lcn/jpush/a/d;

    invoke-virtual {v0}, Lcn/jpush/a/d;->a()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v0

    const/16 v3, 0x1c

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 74
    invoke-static {p1, v2, v0, v4, v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;IJ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 75
    :cond_4
    const/4 v0, 0x2

    goto :goto_3

    .line 77
    :sswitch_7
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    move-result-object v0

    invoke-virtual {v1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v1, Lcn/jiguang/api/JResponse;->code:I

    invoke-virtual {v0, p1, v4, v5, v6}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;JI)V

    goto :goto_2

    :cond_5
    move-wide v0, v2

    .line 86
    goto/16 :goto_0

    .line 1069
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_2
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch

    .line 59
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0xa -> :sswitch_4
        0x1a -> :sswitch_7
        0x1b -> :sswitch_5
        0x1c -> :sswitch_6
        0x1d -> :sswitch_6
    .end sparse-switch
.end method

.method public dispatchTimeOutMessage(Landroid/content/Context;JJI)V
    .locals 2

    .prologue
    .line 169
    const-string v0, "JPushDataAction"

    const-string v1, "dispatchTimeOutMessage"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string v0, "JPushDataAction"

    const-string v1, "Action - dispatchTimeOutMessage , jpush init failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 174
    :cond_0
    sparse-switch p6, :sswitch_data_0

    .line 187
    const-string v0, "JPushDataAction"

    const-string v1, "unhandle command"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :sswitch_0
    invoke-static {p1}, Lcn/jpush/android/a/e;->a(Landroid/content/Context;)Lcn/jpush/android/a/e;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcn/jpush/android/a/e;->a(J)V

    goto :goto_0

    .line 181
    :sswitch_1
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p5}, Lcn/jpush/android/c/f;->b(Landroid/content/Context;J)V

    goto :goto_0

    .line 184
    :sswitch_2
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    move-result-object v0

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->c:I

    invoke-virtual {v0, p1, p4, p5, v1}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;JI)V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public getBinderByType(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "3.1.1"

    return-object v0
.end method

.method public handleMessage(Landroid/content/Context;JLjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-string v0, "JPushDataAction"

    const-string v1, "Action - handleMessage , jpush init failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz p4, :cond_0

    .line 147
    instance-of v0, p4, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 148
    invoke-static {p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;)Lcn/jpush/android/service/c;

    check-cast p4, Landroid/os/Bundle;

    .line 1198
    if-nez p4, :cond_2

    .line 1199
    const-string v0, "PushServiceCore"

    const-string v1, "Action - handleMessage unexcepted, bundle was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    :cond_2
    const-string v0, "PushServiceCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v0, "what"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1206
    const-string v0, "PushServiceCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected: unhandled msg - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    instance-of v0, p4, Landroid/content/Intent;

    if-eqz v0, :cond_12

    .line 150
    invoke-static {}, Lcn/jpush/android/service/b;->a()Lcn/jpush/android/service/b;

    check-cast p4, Landroid/content/Intent;

    .line 2038
    if-nez p4, :cond_4

    .line 2039
    const-string v0, "PushReceiverCore"

    const-string v1, "Received null intent broadcast. Give up processing."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2045
    :cond_4
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2046
    const-string v1, "PushReceiverCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2055
    const-string v1, "cn.jpush.android.intent.plugin.platform.REFRESSH_REGID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2056
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/g;->e(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2048
    :catch_0
    move-exception v0

    const-string v0, "PushReceiverCore"

    const-string v1, "Received no action intent broadcast. Give up processing."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2058
    :cond_5
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2060
    :try_start_1
    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2061
    const-string v0, "PushReceiverCore"

    const-string v1, "push has stoped"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2084
    :catch_1
    move-exception v0

    .line 2085
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2065
    :cond_6
    :try_start_2
    const-string v0, "notificaion_type"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2066
    const-string v1, "PushReceiverCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_NOTIFICATION_RECEIVED_PROXY   notification_type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const-string v0, "message"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2068
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2069
    const-string v0, "PushReceiverCore"

    const-string v1, "Got an empty notification, don\'t show it!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2072
    :cond_7
    const-string v1, "senderId"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2073
    const-string v2, "appId"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2074
    const-string v3, "msg_id"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2075
    invoke-static {p1, v0, v2, v1, v3}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object v0

    .line 2078
    if-nez v0, :cond_8

    .line 2079
    const-string v0, "PushReceiverCore"

    const-string v1, "Transform notification content to BasicEntity failed!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2082
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/jpush/android/data/a;->i:Z

    .line 2083
    invoke-static {p1, v0}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2088
    :cond_9
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2091
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2092
    const-string v0, "networkInfo"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2093
    if-nez v0, :cond_a

    .line 2094
    const-string v0, "PushReceiverCore"

    const-string v1, "Not found networkInfo"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2098
    :cond_a
    const-string v1, "PushReceiverCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection state changed to - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v1, v2, :cond_b

    const/4 v1, 0x3

    .line 2100
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_c

    .line 2101
    :cond_b
    const-string v0, "PushReceiverCore"

    const-string v1, "MMS or SUPL network state change, to do nothing!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2104
    :cond_c
    const-string v1, "noConnectivity"

    invoke-virtual {p4, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2107
    if-eqz v1, :cond_d

    .line 2108
    const-string v0, "PushReceiverCore"

    const-string v1, "No any network is connected"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2110
    :cond_d
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_e

    .line 2111
    const-string v0, "PushReceiverCore"

    const-string v1, "Network is connected."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2112
    :cond_e
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_f

    .line 2113
    const-string v0, "PushReceiverCore"

    const-string v1, "Network is disconnected."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2115
    :cond_f
    const-string v1, "PushReceiverCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "other network state - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Do nothing."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2118
    :cond_10
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2119
    invoke-static {p1, p4}, Lcn/jpush/android/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2120
    :cond_11
    const-string v1, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2121
    const-string v0, "PushReceiverCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Click notification action with extra: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2121
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2130
    :catch_2
    move-exception v0

    .line 2131
    const-string v1, "PushReceiverCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Click notification sendBroadcast :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_12
    const-string v0, "JPushDataAction"

    const-string v1, "handleMessage unknown object "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isSupportedCMD(I)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionRun(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 98
    const-string v0, "JPushDataAction"

    const-string v1, "Action - onActionRun"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "JPushDataAction"

    const-string v1, "Action - onActionRun , JPush init failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;)Lcn/jpush/android/service/c;

    move-result-object v0

    check-cast p5, Landroid/os/Handler;

    invoke-virtual {v0, p4, p5}, Lcn/jpush/android/service/c;->a(Landroid/os/Bundle;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onEvent(Landroid/content/Context;JI)V
    .locals 2

    .prologue
    .line 123
    invoke-static {p1}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "JPushDataAction"

    const-string v1, "Action - onEvent , jpush init failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    :sswitch_0
    return-void

    .line 127
    :cond_0
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/g;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-static {p1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;)Lcn/jpush/android/service/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/service/c;->a()V

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method
