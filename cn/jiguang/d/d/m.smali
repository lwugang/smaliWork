.class public final Lcn/jiguang/d/d/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nowrap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;)V

    const-string v0, "ReportHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wrap data, move to"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Ljava/io/File;
    .locals 10

    const/4 v1, 0x0

    const-class v6, Lcn/jiguang/d/d/m;

    monitor-enter v6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_0

    array-length v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_0
    monitor-exit v6

    return-object v1

    :cond_1
    move-object v5, v1

    goto :goto_0

    :cond_2
    :try_start_1
    array-length v7, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    cmp-long v2, v8, v2

    if-lez v2, :cond_4

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jpush_stat_history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/jiguang/d/d/l;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/d/m;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v0, Lcn/jiguang/d/d/l;

    invoke-direct {v0, v2}, Lcn/jiguang/d/d/l;-><init>(Ljava/io/File;)V

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcn/jiguang/d/d/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "ReportHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/jiguang/d/d/l;

    invoke-direct {v1, v0, p2}, Lcn/jiguang/d/d/l;-><init>(Ljava/io/File;Lorg/json/JSONObject;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    invoke-virtual {v0}, Lcn/jiguang/d/d/l;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcn/jiguang/d/d/l;->c()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcn/jiguang/d/d/l;->a()J

    move-result-wide v6

    invoke-static {p2}, Lcn/jiguang/d/g/f;->b(Lorg/json/JSONObject;)I

    move-result v2

    int-to-long v8, v2

    add-long/2addr v6, v8

    const-wide/32 v8, 0xa000

    cmp-long v2, v6, v8

    if-gez v2, :cond_6

    const-string v2, "ReportHistory"

    const-string v6, "can merge"

    invoke-static {v2, v6}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v4, :cond_9

    :try_start_0
    const-string v2, "content"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0}, Lcn/jiguang/d/d/l;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_8

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v7, "uid"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "app_key"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "sdk_ver"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "core_sdk_ver"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "share_sdk_ver"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "statistics_sdk_ver"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "channel"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "app_version"

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v2, p2, v6}, Lcn/jiguang/d/g/f;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Z

    move-result v2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lcn/jiguang/d/d/l;->b(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    const-string v2, "ReportHistory"

    const-string v4, "out size"

    invoke-static {v2, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_3

    :cond_7
    const-string v2, "ReportHistory"

    const-string v4, "wrapper not match"

    invoke-static {v2, v4}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_3

    :catch_0
    move-exception v2

    :cond_8
    invoke-virtual {v0, p2}, Lcn/jiguang/d/d/l;->a(Lorg/json/JSONObject;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "ReportHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/d/d/l;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-static {v4, v0}, Lcn/jiguang/d/g/c;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/io/File;)V

    const-string v2, "prior"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/32 v2, 0x7d000

    :goto_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0, v1}, Lcn/jiguang/d/g/c;->a(Ljava/util/List;Ljava/io/File;Ljava/io/FileFilter;)V

    invoke-static {v2}, Lcn/jiguang/d/g/c;->a(Ljava/util/List;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ReportHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "over limit, delete file="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {p0, p1}, Lcn/jiguang/d/d/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcn/jiguang/d/d/l;

    invoke-direct {v3, v2, p2}, Lcn/jiguang/d/d/l;-><init>(Ljava/io/File;Lorg/json/JSONObject;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ReportHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-wide/32 v2, 0x100000

    goto :goto_6

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    new-instance v2, Lcn/jiguang/d/d/n;

    invoke-direct {v2}, Lcn/jiguang/d/d/n;-><init>()V

    invoke-static {v1, v0, v2}, Lcn/jiguang/d/g/c;->a(Ljava/util/List;Ljava/io/File;Ljava/io/FileFilter;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/jiguang/d/g/c;->a(Ljava/util/List;Ljava/io/File;Ljava/io/FileFilter;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/d/g/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    invoke-static {p0, p1}, Lcn/jiguang/d/d/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
