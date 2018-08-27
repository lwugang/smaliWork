.class public final Lcn/jiguang/d/b/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:D

.field private g:D

.field private h:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;DDJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/jiguang/d/b/a/g;->a:I

    iput-object p2, p0, Lcn/jiguang/d/b/a/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/jiguang/d/b/a/g;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcn/jiguang/d/b/a/g;->d:J

    iput-object p6, p0, Lcn/jiguang/d/b/a/g;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcn/jiguang/d/b/a/g;->f:D

    iput-wide p9, p0, Lcn/jiguang/d/b/a/g;->g:D

    iput-wide p11, p0, Lcn/jiguang/d/b/a/g;->h:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcn/jiguang/d/b/a/g;->a:I

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/d/b/a/g;->d:J

    return-wide v0
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/d/b/a/g;->f:D

    return-wide v0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/d/b/a/g;->g:D

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/d/b/a/g;->h:J

    return-wide v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    iget v3, p0, Lcn/jiguang/d/b/a/g;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "appkey"

    iget-object v3, p0, Lcn/jiguang/d/b/a/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkver"

    iget-object v3, p0, Lcn/jiguang/d/b/a/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcn/jiguang/d/b/a/g;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-string v2, "uid"

    iget-wide v4, p0, Lcn/jiguang/d/b/a/g;->d:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-object v2, p0, Lcn/jiguang/d/b/a/g;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "opera"

    iget-object v3, p0, Lcn/jiguang/d/b/a/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-wide v2, p0, Lcn/jiguang/d/b/a/g;->f:D

    iget-wide v4, p0, Lcn/jiguang/d/b/a/g;->g:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "lat"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/g;->f:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "lng"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/g;->g:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "time"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/g;->h:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
