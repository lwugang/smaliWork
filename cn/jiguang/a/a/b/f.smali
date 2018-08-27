.class public final Lcn/jiguang/a/a/b/f;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcn/jiguang/a/a/b/f;

.field private static final d:Ljava/lang/Object;


# instance fields
.field public a:Z

.field protected b:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcn/jiguang/a/a/b/a;

.field private m:Lcn/jiguang/a/a/b/c;

.field private n:Lcn/jiguang/a/a/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/b/f;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "all"

    iput-object v0, p0, Lcn/jiguang/a/a/b/f;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/b/f;->g:Z

    iput-boolean v2, p0, Lcn/jiguang/a/a/b/f;->a:Z

    iput-object v1, p0, Lcn/jiguang/a/a/b/f;->h:Ljava/lang/String;

    iput-object v1, p0, Lcn/jiguang/a/a/b/f;->i:Ljava/lang/String;

    iput-object v1, p0, Lcn/jiguang/a/a/b/f;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/jiguang/a/a/b/f;->k:Z

    iput-object p1, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    new-instance v0, Lcn/jiguang/a/a/b/a;

    invoke-direct {v0, p1, p0}, Lcn/jiguang/a/a/b/a;-><init>(Landroid/content/Context;Lcn/jiguang/a/a/b/f;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/f;->l:Lcn/jiguang/a/a/b/a;

    new-instance v0, Lcn/jiguang/a/a/b/h;

    invoke-direct {v0, p1}, Lcn/jiguang/a/a/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/f;->n:Lcn/jiguang/a/a/b/h;

    new-instance v0, Lcn/jiguang/a/a/b/c;

    invoke-direct {v0, p1, p0}, Lcn/jiguang/a/a/b/c;-><init>(Landroid/content/Context;Lcn/jiguang/a/a/b/f;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/f;->m:Lcn/jiguang/a/a/b/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jiguang/a/a/b/e;
    .locals 14

    const/4 v8, 0x0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    const/4 v1, 0x0

    sget-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    invoke-direct {v0}, Lcn/jiguang/a/a/b/f;->d()Lcn/jiguang/a/a/b/e;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcn/jiguang/d/a/d;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/a/a/b/e;->a(Ljava/lang/String;)Lcn/jiguang/a/a/b/e;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/e;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v1, Lcn/jiguang/a/a/b/e;

    const-wide/16 v6, 0x0

    const-string v10, ""

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-wide v4, v2

    move v9, v8

    invoke-direct/range {v1 .. v13}, Lcn/jiguang/a/a/b/e;-><init>(DDDFFLjava/lang/String;JZ)V

    :cond_4
    return-object v1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "MyLocationManager"

    const-string v1, "#unexcepted - context was null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    if-nez v0, :cond_2

    sget-object v1, Lcn/jiguang/a/a/b/f;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    if-nez v0, :cond_1

    new-instance v0, Lcn/jiguang/a/a/b/f;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    iput-boolean p1, v0, Lcn/jiguang/a/a/b/f;->a:Z

    sget-object v0, Lcn/jiguang/a/a/b/f;->c:Lcn/jiguang/a/a/b/f;

    :try_start_1
    iget-object v1, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    if-nez v1, :cond_3

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "location"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcn/jiguang/a/a/b/g;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcn/jiguang/a/a/b/g;-><init>(Lcn/jiguang/a/a/b/f;Landroid/os/Looper;)V

    iput-object v2, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    :cond_3
    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start load loc-info failed - error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/a/a/b/f;->k:Z

    return v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/f;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/b/f;->k:Z

    return v0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p3}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->j:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "MyLocationManager"

    const-string v2, "cell do not changed"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->h:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "ssid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcn/jiguang/a/a/b/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcn/jiguang/a/a/b/f;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->l:Lcn/jiguang/a/a/b/a;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/a;->c()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->n:Lcn/jiguang/a/a/b/h;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/h;->a()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->m:Lcn/jiguang/a/a/b/c;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/c;->b()V

    return-void
.end method

.method private c()V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->n:Lcn/jiguang/a/a/b/h;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/h;->c()Lorg/json/JSONArray;

    move-result-object v5

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->l:Lcn/jiguang/a/a/b/a;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/a;->b()Lorg/json/JSONArray;

    move-result-object v6

    iget-boolean v0, p0, Lcn/jiguang/a/a/b/f;->a:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    const-string v4, "MyLocationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "gpsAddress:"

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/e;->g()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MyLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "wifiTower :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MyLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "cellTowner :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/e;->f()Lorg/json/JSONObject;

    move-result-object v0

    move-object v4, v0

    :goto_3
    if-nez v4, :cond_4

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    const-string v0, "MyLocationManager"

    const-string v1, "All of location info was null, give up report"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/jiguang/a/a/b/f;->d()Lcn/jiguang/a/a/b/e;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_2

    :cond_3
    move-object v4, v1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_4
    invoke-direct {p0, v5, v6, v2}, Lcn/jiguang/a/a/b/f;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MyLocationManager"

    const-string v1, "Location not changed, give up report"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    move-object v2, v0

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    const-string v7, "loc_info"

    invoke-static {v0, v4, v7}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v0, "network_type"

    iget-object v7, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v7}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "local_dns"

    invoke-static {}, Lcn/jiguang/g/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "wifi"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "ssid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/b/f;->h:Ljava/lang/String;

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "cell"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/b/f;->i:Ljava/lang/String;

    :cond_9
    iget-boolean v0, p0, Lcn/jiguang/a/a/b/f;->a:Z

    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "gps"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v2, p0, Lcn/jiguang/a/a/b/f;->j:Ljava/lang/String;

    :cond_a
    iget-object v5, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    const-string v0, "jpush_lbs_info.json"

    invoke-static {v5, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    :goto_5
    const-string v0, "content"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    :goto_6
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "last_report_location"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v5, v0, v4}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v5}, Lcn/jiguang/a/b/a;->a(Landroid/content/Context;)J

    move-result-wide v10

    sub-long v6, v8, v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_c

    const-string v0, "last_report_location"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_b

    const-string v0, "lbs_report_now"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_b
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lcn/jiguang/a/b/a;->b(Landroid/content/Context;Z)V

    const-string v0, "last_report_location"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {v5, v1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    const-string v0, "jpush_lbs_info.json"

    const/4 v1, 0x0

    invoke-static {v5, v0, v1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "jpush_lbs_info.json"

    invoke-virtual {v5, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "MyLocationManager"

    const-string v1, "delete file success, filename:jpush_lbs_info.json"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MyLocationManager"

    const-string v2, "unexpected on lbs reportPrepare"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_7

    :cond_d
    :try_start_3
    const-string v0, "MyLocationManager"

    const-string v1, "delete file failed, filename:jpush_lbs_info.json"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "MyLocationManager"

    const-string v1, "lbs-info log clear succeed"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "content"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "jpush_lbs_info.json"

    invoke-static {v5, v0, v2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_10
    move-object v1, v0

    goto/16 :goto_6

    :cond_11
    move-object v2, v0

    goto/16 :goto_5
.end method

.method static synthetic c(Lcn/jiguang/a/a/b/f;)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->l:Lcn/jiguang/a/a/b/a;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/a;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/jiguang/a/a/b/f;->a()V

    goto :goto_0
.end method

.method static synthetic d(Lcn/jiguang/a/a/b/f;)Lcn/jiguang/a/a/b/c;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->m:Lcn/jiguang/a/a/b/c;

    return-object v0
.end method

.method private d()Lcn/jiguang/a/a/b/e;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->m:Lcn/jiguang/a/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->m:Lcn/jiguang/a/a/b/c;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/c;->a()Lcn/jiguang/a/a/b/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->n:Lcn/jiguang/a/a/b/h;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/h;->b()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->m:Lcn/jiguang/a/a/b/c;

    iget-object v1, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jiguang/a/a/b/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected final b()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v0, "MyLocationManager"

    const-string v2, "Action - onCollectGPSDone"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcn/jiguang/a/a/b/f;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcn/jiguang/a/a/b/f;->k:Z

    :goto_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v1, p0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    :cond_0
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->f:Ljava/lang/String;

    const-string v2, "cell_towers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->l:Lcn/jiguang/a/a/b/a;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/a;->b()Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "loc_cell"

    invoke-static {v2, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v2, "MyLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    iput-boolean v5, p0, Lcn/jiguang/a/a/b/f;->k:Z

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->f:Ljava/lang/String;

    const-string v2, "wifi_towers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->n:Lcn/jiguang/a/a/b/h;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/h;->c()Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "loc_wifi"

    invoke-static {v2, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v2, "MyLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wifi length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MyLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "MyLocationManager"

    const-string v3, "Get error loc info"

    invoke-static {v2, v3, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v5, p0, Lcn/jiguang/a/a/b/f;->k:Z

    goto/16 :goto_0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->f:Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/jiguang/a/a/b/f;->a:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcn/jiguang/a/a/b/f;->d()Lcn/jiguang/a/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/e;->f()Lorg/json/JSONObject;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "loc_gps"

    invoke-static {v0, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcn/jiguang/a/a/b/f;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v2, "MyLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcn/jiguang/a/a/b/f;->k:Z

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcn/jiguang/a/a/b/f;->f:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/jiguang/a/a/b/f;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v2, "MyLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#unexcepted - looper quit failed cause by :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
