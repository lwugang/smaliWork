.class public Lcn/jiguang/a/a/d/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static volatile c:Lcn/jiguang/a/a/d/c;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jiguang/a/a/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lorg/json/JSONObject;

.field private final s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    sput-boolean v1, Lcn/jiguang/a/a/d/c;->a:Z

    sput-boolean v1, Lcn/jiguang/a/a/d/c;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    iput-object v2, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->h:J

    iput-wide v4, p0, Lcn/jiguang/a/a/d/c;->i:J

    iput-wide v4, p0, Lcn/jiguang/a/a/d/c;->j:J

    iput-boolean v6, p0, Lcn/jiguang/a/a/d/c;->k:Z

    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->l:Z

    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->m:Z

    iput-boolean v6, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iput-boolean v3, p0, Lcn/jiguang/a/a/d/c;->o:Z

    iput-wide v4, p0, Lcn/jiguang/a/a/d/c;->p:J

    iput-object v2, p0, Lcn/jiguang/a/a/d/c;->q:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->s:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcn/jiguang/a/a/d/c;
    .locals 2

    sget-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    if-nez v0, :cond_0

    const-class v1, Lcn/jiguang/a/a/d/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcn/jiguang/a/a/d/c;

    invoke-direct {v0}, Lcn/jiguang/a/a/d/c;-><init>()V

    sput-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcn/jiguang/a/a/d/c;->c:Lcn/jiguang/a/a/d/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;J)Lorg/json/JSONObject;
    .locals 4

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v1, "cur_session_start"

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Lcn/jiguang/g/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v1, "session_id"

    iget-object v2, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {v0}, Lcn/jiguang/a/a/d/c;->a(Lorg/json/JSONObject;)V

    const-string v1, "active_launch"

    invoke-static {p1, v0, v1}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v1, "session_id"

    iget-object v2, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcn/jiguang/a/a/d/c;->l:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->l:Z

    const-string v2, "JPushSA"

    const-string v3, "statistics start"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v2

    const-string v3, "last_pause"

    invoke-virtual {v2, p1, v3, v8, v9}, Lcn/jiguang/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long/2addr v4, v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->h:J

    mul-long/2addr v2, v10

    cmp-long v2, v4, v2

    if-gtz v2, :cond_5

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->k:Z

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->k:Z

    if-eqz v0, :cond_6

    const-string v0, "JPushSA"

    const-string v1, "new statistics session"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-direct {p0, p1, v2, v3}, Lcn/jiguang/a/a/d/c;->a(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_2

    :try_start_1
    const-string v3, "active_terminate"

    invoke-static {p1, v2, v3}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    const-string v3, "jpush_stat_cache.json"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :goto_2
    return-void

    :cond_4
    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    iget-wide v4, p0, Lcn/jiguang/a/a/d/c;->j:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/jiguang/a/a/d/c;->h:J

    mul-long/2addr v4, v10

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, p1, v1, v6}, Lcn/jiguang/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcn/jiguang/d/g/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, "date"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcn/jiguang/a/a/d/c;->s:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v2, "last_pause"

    iget-wide v4, p0, Lcn/jiguang/a/a/d/c;->j:J

    invoke-virtual {v0, p1, v2, v4, v5}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v2, "cur_seesion_end"

    iget-wide v4, p0, Lcn/jiguang/a/a/d/c;->j:J

    invoke-virtual {v0, p1, v2, v4, v5}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->m:Z

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->k:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "activities"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v8, Lcn/jiguang/a/a/d/a;

    invoke-direct {v8, v0, v6, v7}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v6, "JPushSA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-direct {p0, p1}, Lcn/jiguang/a/a/d/c;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_3
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/a/a/d/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, v0, Lcn/jiguang/a/a/d/a;->a:Ljava/lang/String;

    iget-wide v8, v0, Lcn/jiguang/a/a/d/a;->b:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    :try_start_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    :try_start_6
    const-string v0, "activities"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-lez v0, :cond_7

    :try_start_8
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v0

    const-string v1, "cur_session_start"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p1, v1, v4, v5}, Lcn/jiguang/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v0, 0xa

    cmp-long v6, v4, v10

    if-nez v6, :cond_9

    iget-wide v4, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v6, p0, Lcn/jiguang/a/a/d/c;->p:J

    sub-long/2addr v4, v6

    cmp-long v6, v4, v10

    if-lez v6, :cond_5

    const-wide/16 v0, 0x3e8

    div-long v0, v4, v0

    :cond_5
    invoke-static {}, Lcn/jiguang/a/b/c;->a()Lcn/jiguang/a/b/c;

    move-result-object v4

    const-string v5, "cur_session_start"

    iget-wide v6, p0, Lcn/jiguang/a/a/d/c;->p:J

    invoke-virtual {v4, p1, v5, v6, v7}, Lcn/jiguang/a/b/c;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_6
    const-string v4, "duration"

    invoke-virtual {v2, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "itime"

    invoke-static {}, Lcn/jiguang/d/a/a;->t()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "session_id"

    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcn/jiguang/a/a/d/c;->a(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_7
    :try_start_9
    iput-object v2, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_6

    :try_start_a
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;I)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    :goto_8
    :try_start_b
    const-string v0, "jpush_stat_cache.json"

    invoke-static {p1, v0, v2}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_7
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    return-void

    :cond_9
    :try_start_c
    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_d
    const-string v1, "JPushSA"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_4

    :cond_a
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/jiguang/a/a/d/c;->o:Z

    if-nez v1, :cond_0

    const-string v1, "JPushSA"

    const-string v2, "stat function has been disabled"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "JPushSA"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2

    const-string v1, "JPushSA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Context should be an Activity on this method : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "jpush_stat_cache.json"

    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->r:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "onResume"

    invoke-direct {p0, p1, v0}, Lcn/jiguang/a/a/d/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v1, Lcn/jiguang/a/a/d/c;->a:Z

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "JPushSA"

    const-string v1, "JCoreInterface.onResume() must be called after called JCoreInterface.onPause() and JPushInterface.onResume should not be called more time in last Activity or Fragment  "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcn/jiguang/a/a/d/c;->n:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/a/a/d/f;

    invoke-direct {v2, p0, v0}, Lcn/jiguang/a/a/d/f;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "JPushSA"

    const-string v1, "JCoreInterface.onResume() must be called after called JCoreInterface.onPause() in last Activity or Fragment"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iput-object p2, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->i:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/a/a/d/d;

    invoke-direct {v2, p0, v0}, Lcn/jiguang/a/a/d/d;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "onPause"

    invoke-direct {p0, p1, v0}, Lcn/jiguang/a/a/d/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v1, Lcn/jiguang/a/a/d/c;->b:Z

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-nez v0, :cond_1

    const-string v0, "JPushSA"

    const-string v1, "JCoreInterface.onPause() must be called after called JCoreInterface.onResume() and JPushInterface.onPause should not be called more time in this Activity or Fragment ; "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcn/jiguang/a/a/d/a;

    iget-object v3, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->i:J

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->p:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/a/a/d/g;

    invoke-direct {v2, p0, v0}, Lcn/jiguang/a/a/d/g;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v0, "JPushSA"

    const-string v1, "the activity pass by onPause didn\'t match last one passed by onResume"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-nez v0, :cond_0

    const-string v0, "JPushSA"

    const-string v1, "JCoreInterface.onPause() must be called after called JCoreInterface.onResume() in this Activity or Fragment"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcn/jiguang/a/a/d/a;

    iget-object v3, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/a/a/d/e;

    invoke-direct {v2, p0, v0}, Lcn/jiguang/a/a/d/e;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "JPushSA"

    const-string v1, "page name didn\'t match the last one passed by onResume"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jiguang/a/a/d/c;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v0, p0, Lcn/jiguang/a/a/d/c;->j:J

    iget-wide v2, p0, Lcn/jiguang/a/a/d/c;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcn/jiguang/a/a/d/a;

    iget-object v3, p0, Lcn/jiguang/a/a/d/c;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcn/jiguang/a/a/d/a;-><init>(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/jiguang/a/a/d/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcn/jiguang/a/a/d/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jiguang/a/a/d/h;

    invoke-direct {v2, p0, v0}, Lcn/jiguang/a/a/d/h;-><init>(Lcn/jiguang/a/a/d/c;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
