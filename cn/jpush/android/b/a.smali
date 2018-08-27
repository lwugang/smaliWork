.class public final Lcn/jpush/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;IJ)Lcn/jiguang/net/HttpResponse;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 31
    const-string v1, "HttpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action:httpSimpleGet - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-wide/16 v2, 0xc8

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    const-wide/32 v2, 0xea60

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    .line 35
    :cond_0
    const-wide/16 p2, 0x7d0

    .line 36
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 41
    :goto_0
    :try_start_0
    new-instance v0, Lcn/jiguang/net/HttpRequest;

    invoke-direct {v0, p0}, Lcn/jiguang/net/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v3, "Connection"

    const-string v4, "Close"

    invoke-virtual {v0, v3, v4}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v0, v3, v4}, Lcn/jiguang/net/HttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcn/jiguang/net/HttpUtils;->httpGet(Landroid/content/Context;Lcn/jiguang/net/HttpRequest;)Lcn/jiguang/net/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 45
    :try_start_1
    invoke-virtual {v0}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v1

    .line 46
    const-string v3, "HttpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "statusCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    .line 65
    :cond_2
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 51
    :goto_1
    const-string v3, "HttpManager"

    const-string v4, "http client execute error"

    invoke-static {v3, v4, v0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 56
    :cond_3
    :goto_2
    const/4 v1, 0x5

    if-ge v2, v1, :cond_2

    .line 59
    add-int/lit8 v1, v2, 0x1

    .line 61
    :try_start_2
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    move-object v1, v0

    .line 63
    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 53
    :goto_3
    const-string v3, "HttpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Catch AssertionError to avoid http close crash - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 63
    :catch_2
    move-exception v2

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 52
    :catch_3
    move-exception v0

    goto :goto_3

    .line 50
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;IJI)[B
    .locals 5

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 72
    const/4 v0, 0x5

    const-wide/16 v2, 0x1388

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/b/a;->b(Ljava/lang/String;IJ)[B

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;IJ)[B
    .locals 12

    .prologue
    const/16 v9, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    if-lez p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 82
    :cond_0
    const/4 p1, 0x1

    .line 83
    :cond_1
    const-wide/16 v4, 0xc8

    cmp-long v0, p2, v4

    if-ltz v0, :cond_2

    const-wide/32 v4, 0xea60

    cmp-long v0, p2, v4

    if-lez v0, :cond_3

    .line 84
    :cond_2
    const-wide/16 p2, 0x7d0

    .line 85
    :cond_3
    const-string v0, "HttpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action:httpGet - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v3, -0x1

    move v6, v2

    move-object v4, v1

    move-object v5, v1

    .line 96
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    :try_start_1
    const-string v5, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v5, "Connection"

    const-string v7, "Close"

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 106
    const-string v5, "HttpManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "statusCode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-ne v3, v9, :cond_6

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 111
    if-eqz v4, :cond_14

    .line 112
    invoke-static {v4}, Lcn/jiguang/net/HttpUtils;->readInputStream(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 125
    :goto_1
    if-eqz v4, :cond_4

    .line 127
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 131
    :cond_4
    :goto_2
    if-eqz v0, :cond_17

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v5

    .line 146
    :goto_3
    if-ne v9, v3, :cond_10

    .line 148
    if-nez v2, :cond_f

    .line 149
    :try_start_3
    const-string v0, "HttpManager"

    const-string v2, "Unexpected: downloaded bytes content length is 0"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v1

    .line 172
    :cond_5
    :goto_4
    return-object v0

    .line 125
    :cond_6
    if-eqz v4, :cond_7

    .line 127
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 131
    :cond_7
    :goto_5
    if-eqz v0, :cond_13

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v0

    .line 136
    :cond_8
    :goto_6
    if-lt v6, p1, :cond_e

    move-object v0, v1

    .line 137
    goto :goto_4

    .line 117
    :catch_0
    move-exception v5

    move v10, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v0

    move v0, v10

    :goto_7
    :try_start_5
    const-string v5, "HttpManager"

    const-string v7, "Catch SSLPeerUnverifiedException, http client execute error!"

    invoke-static {v5, v7}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    if-eqz v3, :cond_9

    .line 127
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 131
    :cond_9
    :goto_8
    if-eqz v4, :cond_16

    .line 132
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v0

    goto :goto_6

    .line 119
    :catch_1
    move-exception v5

    :goto_9
    :try_start_7
    const-string v5, "HttpManager"

    const-string v6, "Catch SSLHandshakeException, http client execute error!"

    invoke-static {v5, v6}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 125
    if-eqz v4, :cond_a

    .line 127
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 131
    :cond_a
    :goto_a
    if-eqz v0, :cond_15

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_3

    .line 122
    :catch_2
    move-exception v5

    move-object v10, v5

    move-object v5, v0

    move-object v0, v10

    .line 123
    :goto_b
    :try_start_9
    const-string v7, "HttpManager"

    const-string v8, "http client execute error"

    invoke-static {v7, v8, v0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 125
    if-eqz v4, :cond_b

    .line 127
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 131
    :cond_b
    :goto_c
    if-eqz v5, :cond_8

    .line 132
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 125
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_d
    if-eqz v4, :cond_c

    .line 127
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 131
    :cond_c
    :goto_e
    if-eqz v5, :cond_d

    .line 132
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v0

    .line 139
    :cond_e
    add-int/lit8 v0, v6, 0x1

    .line 141
    int-to-long v6, v0

    mul-long/2addr v6, p2

    :try_start_c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3

    move v6, v0

    .line 143
    goto/16 :goto_0

    :catch_3
    move-exception v6

    move v6, v0

    goto/16 :goto_0

    .line 153
    :cond_f
    :try_start_d
    array-length v3, v0

    if-ge v3, v2, :cond_5

    .line 154
    const-string v0, "HttpManager"

    const-string v2, "Download bytes failed. Got bytes len < header content length."

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object v0, v1

    .line 155
    goto :goto_4

    .line 160
    :catch_4
    move-exception v0

    .line 161
    const-string v2, "HttpManager"

    const-string v3, "parse response error"

    invoke-static {v2, v3, v0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 162
    goto/16 :goto_4

    .line 164
    :cond_10
    const/16 v0, 0x190

    if-ne v0, v3, :cond_11

    .line 165
    const-string v0, "HttpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server response failure - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 166
    goto/16 :goto_4

    .line 167
    :cond_11
    const/16 v0, 0x194

    if-ne v0, v3, :cond_12

    .line 168
    const-string v0, "HttpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request path does not exist: 404 - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 169
    goto/16 :goto_4

    .line 171
    :cond_12
    const-string v0, "HttpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Other wrong response status - "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 172
    goto/16 :goto_4

    :catch_5
    move-exception v4

    goto/16 :goto_2

    :catch_6
    move-exception v5

    goto/16 :goto_5

    :catch_7
    move-exception v5

    goto/16 :goto_8

    :catch_8
    move-exception v4

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_c

    :catch_a
    move-exception v1

    goto/16 :goto_e

    .line 125
    :catchall_1
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    goto/16 :goto_d

    .line 122
    :catch_b
    move-exception v0

    goto/16 :goto_b

    .line 119
    :catch_c
    move-exception v0

    move-object v0, v5

    goto/16 :goto_9

    .line 117
    :catch_d
    move-exception v0

    move v0, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_7

    :cond_13
    move-object v5, v0

    goto/16 :goto_6

    :cond_14
    move-object v5, v1

    goto/16 :goto_1

    :cond_15
    move-object v0, v1

    goto/16 :goto_3

    :cond_16
    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move v2, v0

    goto/16 :goto_6

    :cond_17
    move-object v0, v5

    goto/16 :goto_3
.end method
