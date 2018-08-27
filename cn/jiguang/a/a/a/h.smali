.class final Lcn/jiguang/a/a/a/h;
.super Ljava/lang/Thread;


# static fields
.field private static final i:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/net/wifi/WifiManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcn/jiguang/a/a/a/h;->g:I

    iput-object p1, p0, Lcn/jiguang/a/a/a/h;->c:Landroid/net/wifi/WifiManager;

    iput p6, p0, Lcn/jiguang/a/a/a/h;->a:I

    iput-object p5, p0, Lcn/jiguang/a/a/a/h;->b:Landroid/content/Context;

    iput p7, p0, Lcn/jiguang/a/a/a/h;->g:I

    iput-object p3, p0, Lcn/jiguang/a/a/a/h;->d:Ljava/lang/String;

    iput-object p4, p0, Lcn/jiguang/a/a/a/h;->e:Ljava/lang/String;

    iput-object p2, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    if-ne p7, v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/jiguang/a/a/a/h;->h:[Z

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIB)V
    .locals 8

    const/16 v6, 0x12c

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcn/jiguang/a/a/a/h;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/a/a/a/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jiguang/a/a/a/b;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "cat /proc/net/arp"

    invoke-static {v0}, Lcn/jiguang/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_4
    invoke-static {v1}, Lcn/jiguang/a/a/a/h;->b(Ljava/lang/String;)Lcn/jiguang/a/a/a/b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/jiguang/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0x2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcn/jiguang/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lcn/jiguang/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "00:00:00:00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ArpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "arpInfo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/jiguang/a/a/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string v4, "ArpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getArpInfo parseArp :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    :try_start_6
    const-string v4, "ArpUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getArpInfo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    :cond_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_4
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v3, "ArpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getArpInfo  close inputstream"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v1

    const-string v3, "ArpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getArpInfo  close inputstream"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_7
    throw v0

    :catch_4
    move-exception v1

    const-string v3, "ArpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getArpInfo  close inputstream"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v3, v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jiguang/a/a/a/b;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/a/a/a/h;->b:Landroid/content/Context;

    const-string v3, "mac_list"

    invoke-static {v1, v2, v3}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v1, "ssid"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bssid"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "local_ip"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "local_mac"

    invoke-virtual {v2, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "netmask"

    invoke-virtual {v2, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const-string v3, "dns"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gateway"

    move-object/from16 v0, p8

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dhcp"

    move-object/from16 v0, p9

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/a/a/a/b;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ip"

    invoke-virtual {v1}, Lcn/jiguang/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "mac"

    invoke-virtual {v1}, Lcn/jiguang/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ArpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "formatReportData :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2

    :cond_2
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 9

    const/4 v7, 0x0

    const-string v0, "ArpUtil"

    const-string v1, "PING............"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/jiguang/a/a/a/h;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v6, v7

    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->h:[Z

    aput-boolean v7, v0, v6

    mul-int/lit8 v0, v6, 0x55

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v3, 0x55

    new-instance v0, Lcn/jiguang/g/n;

    invoke-direct {v0}, Lcn/jiguang/g/n;-><init>()V

    new-instance v1, Lcn/jiguang/a/a/a/d;

    iget v2, p0, Lcn/jiguang/a/a/a/h;->a:I

    invoke-direct {v1, p1, v2}, Lcn/jiguang/a/a/a/d;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcn/jiguang/a/a/a/j;

    invoke-direct {v5, p0, v0, v6}, Lcn/jiguang/a/a/a/j;-><init>(Lcn/jiguang/a/a/a/h;Lcn/jiguang/g/n;I)V

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcn/jiguang/a/a/a/f;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcn/jiguang/a/a/a/f;-><init>(Lcn/jiguang/a/a/a/d;[BIILcn/jiguang/a/a/a/g;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/Object;

    monitor-enter v1

    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcn/jiguang/a/a/a/h;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcn/jiguang/a/a/a/h;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ArpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doPing :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const-string v0, "ArpUtil"

    const-string v1, "finish PING"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcn/jiguang/a/a/a/d;

    iget v1, p0, Lcn/jiguang/a/a/a/h;->a:I

    invoke-direct {v0, p1, v1}, Lcn/jiguang/a/a/a/d;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0xff

    invoke-virtual {v0, p2, v7, v1}, Lcn/jiguang/a/a/a/d;->a([BII)V

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)Lcn/jiguang/a/a/a/b;
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ArpUtil"

    const-string v1, "arpinfo line is empty, give up parse."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-instance v3, Lcn/jiguang/a/a/a/b;

    invoke-direct {v3}, Lcn/jiguang/a/a/a/b;-><init>()V

    move v1, v0

    move v2, v0

    :cond_1
    :goto_1
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7

    add-int/lit8 v2, v2, 0x1

    aget-byte v5, v4, v2

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    sub-int v5, v2, v1

    if-le v5, v7, :cond_3

    new-instance v5, Ljava/lang/String;

    sub-int v6, v2, v1

    invoke-direct {v5, v4, v1, v6}, Ljava/lang/String;-><init>([BII)V

    if-nez v0, :cond_4

    invoke-virtual {v3, v5}, Lcn/jiguang/a/a/a/b;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_5

    invoke-virtual {v3, v5}, Lcn/jiguang/a/a/a/b;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {v3, v5}, Lcn/jiguang/a/a/a/b;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {v3, v5}, Lcn/jiguang/a/a/a/b;->d(Ljava/lang/String;)V

    :cond_7
    move-object v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcn/jiguang/a/a/a/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->h:[Z

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-boolean v4, v2, v1

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcn/jiguang/a/a/a/h;)[Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->h:[Z

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcn/jiguang/a/a/a/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ArpUtil"

    const-string v1, "DhcpInfo is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "ArpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DhcpInfo is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/DhcpInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcn/jiguang/a/a/a/c;->a(J)[B

    move-result-object v1

    iget v2, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v2}, Lcn/jiguang/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "0.0.0.0"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, ""

    :cond_1
    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->b:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v2, v4}, Lcn/jiguang/g/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v2, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v2}, Lcn/jiguang/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "0.0.0.0"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v5, ""

    :cond_2
    iget v2, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v2}, Lcn/jiguang/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "0.0.0.0"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v6, ""

    :cond_3
    iget v2, v0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v2}, Lcn/jiguang/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "0.0.0.0"

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v7, ""

    :cond_4
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v2}, Lcn/jiguang/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "0.0.0.0"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v8, ""

    :cond_5
    iget v0, v0, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v0}, Lcn/jiguang/a/a/a/c;->a(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "0.0.0.0"

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v9, ""

    :cond_6
    new-instance v0, Lcn/jiguang/g/n;

    invoke-direct {v0}, Lcn/jiguang/g/n;-><init>()V

    :try_start_0
    invoke-direct {p0, v9, v1}, Lcn/jiguang/a/a/a/h;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "ArpUtil"

    const-string v2, "ping"

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/g/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_1
    invoke-direct {p0, v9}, Lcn/jiguang/a/a/a/h;->a(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v1, p0, Lcn/jiguang/a/a/a/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/jiguang/a/a/a/h;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcn/jiguang/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ArpUtil"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/a/a/a/h;->b:Landroid/content/Context;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Lcn/jiguang/a/a/a/i;

    invoke-direct {v2, p0}, Lcn/jiguang/a/a/a/i;-><init>(Lcn/jiguang/a/a/a/h;)V

    invoke-static {v1, v0, v2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Lcn/jiguang/d/d/q;)V

    :goto_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/jiguang/a/a/a/c;->b(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ArpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "doPing :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ArpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "getArpInfo :"

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "ArpUtil"

    const-string v1, "arp info is empty, give up report."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
