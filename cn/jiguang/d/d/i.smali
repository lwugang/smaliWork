.class public final Lcn/jiguang/d/d/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcn/jiguang/net/SSLTrustManager;


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZI)I
    .locals 8

    const/16 v3, 0x7530

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gtz p4, :cond_0

    const-string v1, "HttpHelper"

    const-string v2, "sendLogs has retry but failed"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v5, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v5, p1}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcn/jiguang/net/HttpRequest;->setConnectTimeout(I)V

    invoke-virtual {v5, v3}, Lcn/jiguang/net/HttpRequest;->setReadTimeout(I)V

    invoke-virtual {v5, v2}, Lcn/jiguang/net/HttpRequest;->setDoOutPut(Z)V

    invoke-virtual {v5, v2}, Lcn/jiguang/net/HttpRequest;->setDoInPut(Z)V

    invoke-virtual {v5, v1}, Lcn/jiguang/net/HttpRequest;->setUseCaches(Z)V

    :try_start_0
    const-string v3, ""

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_1
    invoke-static {v4}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "HttpHelper"

    const-string v2, "report content is null or empty,give up http report"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const-string v3, "Accept"

    const-string v6, "application/jason"

    invoke-virtual {v5, v3, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v5, v3, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v5, v3, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "X-App-Key"

    invoke-static {p0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_2

    invoke-static {}, Lcn/jiguang/d/d/o;->a()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v2, "HttpHelper"

    const-string v3, "generate report token failed"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez v1, :cond_5

    const-string v1, "HttpHelper"

    const-string v2, "generate basic64 authorization token failed,give up http report"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    invoke-static {v4, v3}, Lcn/jiguang/d/d/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcn/jiguang/d/d/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v2, "HttpHelper"

    const-string v3, "generate basic authorization failed"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ProtocolException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v1, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Basic "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v5, v1, v3}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_8

    const-string v1, "UTF-8"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/d/g/h;->a([B)[B

    move-result-object v1

    :goto_4
    invoke-virtual {v5, v1}, Lcn/jiguang/net/HttpRequest;->setBody(Ljava/lang/Object;)V

    const-string v2, "Content-Length"

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcn/jiguang/net/HttpRequest;->setHaveRspData(Z)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcn/jiguang/net/HttpRequest;->setNeedRetryIfHttpsFailed(Z)V

    sget-object v1, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    if-nez v1, :cond_6

    const-string v1, ""
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {}, Lcn/jiguang/service/Protocol;->getCerTificate()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    :goto_5
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcn/jiguang/net/SSLTrustManager;

    invoke-direct {v2, v1}, Lcn/jiguang/net/SSLTrustManager;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    :cond_6
    sget-object v1, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    if-eqz v1, :cond_7

    sget-object v1, Lcn/jiguang/d/d/i;->a:Lcn/jiguang/net/SSLTrustManager;

    invoke-virtual {v5, v1}, Lcn/jiguang/net/HttpRequest;->setSslTrustManager(Lcn/jiguang/net/SSLTrustManager;)V

    :cond_7
    invoke-static {p0, v5}, Lcn/jiguang/net/HttpUtils;->httpPost(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v1

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    div-int/lit8 v0, v1, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/16 v0, 0x1f4

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_4

    :sswitch_0
    const/16 v0, 0xc8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "HttpHelper"

    const-string v2, "401:authorization failed."

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x191

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x194

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1ad

    goto/16 :goto_0

    :sswitch_4
    add-int/lit8 v1, p4, -0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZI)I
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    goto/16 :goto_0

    :cond_9
    const/4 v0, -0x5

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException:debug"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Catch AssertionError to avoid http close crash - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_5

    :cond_a
    move-object v4, v3

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x194 -> :sswitch_2
        0x1ad -> :sswitch_3
        0xbbd -> :sswitch_4
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Z)I
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v6}, Lcn/jiguang/d/d/o;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendLogs url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HttpHelper"

    const-string v4, "Action - checkURLisValide"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-nez v0, :cond_4

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    invoke-static {v2}, Lcn/jiguang/d/d/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HttpHelper"

    const-string v4, "The report Url is invalid, give up this http report"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "HttpHelper"

    const-string v4, "The report Url is invalid, give up this https report"

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0, v2, p1, v1, v6}, Lcn/jiguang/d/d/i;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result v0

    goto :goto_1
.end method
