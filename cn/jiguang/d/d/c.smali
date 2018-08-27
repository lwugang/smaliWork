.class public final Lcn/jiguang/d/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcn/jiguang/d/b/i;
    .locals 3

    :try_start_0
    const-string v0, "ConnectingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sisResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/d/b/i;

    invoke-direct {v0}, Lcn/jiguang/d/b/i;-><init>()V

    invoke-virtual {v0, p0}, Lcn/jiguang/d/b/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcn/jiguang/d/b/i;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/d/b/i;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ConnectingHelper"

    const-string v2, "parseSisInfo crash:"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    const-string v0, "ConnectingHelper"

    const-string v1, "Action: setRtcToDayTimesWhenRegisterFailed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/a/a;->k()V

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 5

    const/4 v4, -0x1

    if-eqz p2, :cond_0

    const-string v0, "ConnectingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Register Failed with server error - code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/g/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ConnectingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local error description: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ee

    if-ne v1, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5305\u540d: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/d/d/c;->a()V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x3ef

    if-ne v1, p1, :cond_2

    const-string v0, "ConnectingHelper"

    const-string v1, "IMEI is duplicated reported by server. Give up now. "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x3ed

    if-ne v1, p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5305\u540d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e0e AppKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e0d\u5339\u914d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/d/d/c;->a()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x3f1

    if-ne v1, p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " AppKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u975eandroid AppKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcn/jiguang/d/d/c;->a()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x3f0

    if-ne v1, p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " AppKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u662f\u65e0\u6548\u7684AppKey,\u8bf7\u786e\u8ba4\u4e0eJIGUANG web\u7aef\u7684AppKey\u4e00\u81f4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x2711

    if-ne v0, p1, :cond_6

    const-string v0, " \u672a\u5728manifest\u4e2d\u914d\u7f6eAppKey"

    invoke-static {p0, v0, v4}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x3f4

    if-ne v0, p1, :cond_7

    invoke-static {}, Lcn/jiguang/d/a/a;->c()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "ConnectingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled server response error code - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 7

    const-string v0, "ConnectingHelper"

    const-string v1, "Action - sendServerTimer"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "push_login_server_time"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "push_login_local_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "push_to_im_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cn.jpush.im.android.action.IM_RESPONSE"

    invoke-static {p0, v1, v0}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "ConnectingHelper"

    const-string v1, "Action - sendConnectionChanged"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cn.jpush.android.CONNECTION_CHANGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "cn.jpush.android.intent.CONNECTION"

    invoke-static {p0, v1, v0}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/os/Message;J)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "connection"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;I[BZI)[B
    .locals 6

    const/4 v0, 0x0

    const-class v1, Lcn/jiguang/d/d/c;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "flag or body length error"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    new-instance v2, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArray([B)V

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v2, p4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    invoke-virtual {v2, p2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArray([B)V

    invoke-virtual {v2}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8At(II)V

    invoke-virtual {v2}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B
    .locals 4

    const/16 v2, 0x400

    const/4 v3, 0x0

    const/16 v0, 0x1770

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-array v0, v2, [B

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    const-string v0, "ConnectingHelper"

    const-string v2, "SIS Receiving..."

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ConnectingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resolved DNS - host:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "((2[0-4]\\d|25[0-5]|[01]?\\d{1,2})\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d{1,2})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    const-string v1, "ConnectingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resolved DNS - result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcn/jiguang/d/d/d;

    invoke-direct {v1, p0}, Lcn/jiguang/d/d/d;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Lcn/jiguang/d/d/d;->start()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcn/jiguang/d/d/d;->join(J)V

    invoke-virtual {v1}, Lcn/jiguang/d/d/d;->a()Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "ConnectingHelper"

    const-string v2, "DNS checking thread has been interrupted !"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ConnectingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DNS checking thread has been Exception error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method
