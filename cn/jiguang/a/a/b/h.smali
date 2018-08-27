.class public final Lcn/jiguang/a/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcn/jiguang/a/a/b/h;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/jiguang/a/a/b/i;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "WifiInfoManager"

    const-string v1, "wifi dump"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcn/jiguang/a/a/b/i;

    invoke-direct {v0, p0, v1, v3, v4}, Lcn/jiguang/a/a/b/i;-><init>(Lcn/jiguang/a/a/b/h;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WifiInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentWifi:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "tag"

    const-string v4, "connect"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/16 v4, -0xc8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v2, Lcn/jiguang/a/a/b/i;

    invoke-direct {v2, p0, v0}, Lcn/jiguang/a/a/b/i;-><init>(Lcn/jiguang/a/a/b/h;Landroid/net/wifi/ScanResult;)V

    const-string v0, "WifiInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "wifi:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/jiguang/a/a/b/i;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    const-string v0, "WifiInfoManager"

    const-string v2, "currentWIFI is null"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v3}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2}, Lcn/jiguang/a/a/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiInfoManager"

    const-string v2, "this wifiInfo same with connect wifiInfo"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcn/jiguang/a/a/b/i;->c:Ljava/lang/String;

    iget-object v7, v1, Lcn/jiguang/a/a/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, v2, Lcn/jiguang/a/a/b/i;->b:I

    if-le v0, v4, :cond_9

    iget v0, v2, Lcn/jiguang/a/a/b/i;->b:I

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_4
    move-object v3, v0

    move v4, v2

    goto :goto_3

    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v0, 0xa

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcn/jiguang/a/a/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "tag"

    const-string v4, "strongest"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v0, 0x9

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    move-object v2, v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v5

    goto :goto_5

    :cond_9
    move-object v0, v3

    move v2, v4

    goto :goto_4

    :cond_a
    move-object v0, v2

    goto/16 :goto_2

    :cond_b
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private d()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "WifiInfoManager"

    const-string v2, "Wifi Error"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/a/a/b/h;->c:Lorg/json/JSONArray;

    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v1, v2}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "WifiInfoManager"

    const-string v1, "Require the permissionandroid.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v1, v2}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {v1, v2}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/jiguang/a/a/b/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/g/a;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcn/jiguang/a/a/b/h;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "WifiInfoManager"

    const-string v1, "wifi was disabled"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-direct {p0, v1}, Lcn/jiguang/a/a/b/h;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_2
    const-string v3, "WifiInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wifi count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/a/a/b/i;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "WifiInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "WifiInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "report wifi info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/jiguang/a/a/b/h;->c:Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2
.end method

.method public final c()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/h;->c:Lorg/json/JSONArray;

    return-object v0
.end method
