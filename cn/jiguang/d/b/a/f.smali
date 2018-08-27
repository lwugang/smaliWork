.class public final Lcn/jiguang/d/b/a/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lcn/jiguang/d/b/a/c;

.field c:J

.field d:J

.field e:J

.field f:I

.field g:D

.field h:D

.field i:J

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcn/jiguang/d/b/a/f;
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lcn/jiguang/d/b/a/f;

    invoke-direct {v0}, Lcn/jiguang/d/b/a/f;-><init>()V

    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcn/jiguang/d/b/a/f;->a:I

    const-string v2, "addr"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/d/b/a/c;->a(Ljava/lang/String;)Lcn/jiguang/d/b/a/c;

    move-result-object v2

    iput-object v2, v0, Lcn/jiguang/d/b/a/f;->b:Lcn/jiguang/d/b/a/c;

    const-string v2, "rtime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->d:J

    const-string v2, "interval"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->e:J

    const-string v2, "net"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcn/jiguang/d/b/a/f;->f:I

    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcn/jiguang/d/b/a/f;->j:I

    const-string v2, "uid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->c:J

    const-string v2, "lat"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->g:D

    const-string v2, "lng"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->h:D

    const-string v2, "ltime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->i:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/jiguang/d/b/a/f;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/d/b/a/f;->a(Lorg/json/JSONObject;)Lcn/jiguang/d/b/a/f;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    iget v2, p0, Lcn/jiguang/d/b/a/f;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "addr"

    iget-object v2, p0, Lcn/jiguang/d/b/a/f;->b:Lcn/jiguang/d/b/a/c;

    invoke-virtual {v2}, Lcn/jiguang/d/b/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rtime"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "interval"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->e:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "net"

    iget v2, p0, Lcn/jiguang/d/b/a/f;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "code"

    iget v2, p0, Lcn/jiguang/d/b/a/f;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const-string v0, "uid"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->g:D

    iget-wide v4, p0, Lcn/jiguang/d/b/a/f;->h:D

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v2, v6

    if-lez v0, :cond_2

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_2

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "lat"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->g:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "lng"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->h:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "ltime"

    iget-wide v2, p0, Lcn/jiguang/d/b/a/f;->i:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
