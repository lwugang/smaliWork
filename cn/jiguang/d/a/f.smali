.class public final Lcn/jiguang/d/a/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/g/b/e;


# direct methods
.method public static declared-synchronized a()J
    .locals 8

    const-wide/16 v6, -0x1

    const-class v2, Lcn/jiguang/d/a/f;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/jiguang/d/a/f;->b(Landroid/content/Context;)Lcn/jiguang/g/b/e;

    move-result-object v0

    const-string v1, "next_rid"

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/jiguang/g/b/e;->a(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lcn/jiguang/d/a/f;->a(J)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {v3}, Lcn/jiguang/d/a/f;->b(Landroid/content/Context;)Lcn/jiguang/g/b/e;

    move-result-object v3

    const-string v4, "next_rid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/jiguang/g/b/e;->b(Ljava/lang/String;Ljava/io/Serializable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcn/jiguang/d/a/f;->a(J)J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {v3}, Lcn/jiguang/d/a/f;->b(Landroid/content/Context;)Lcn/jiguang/g/b/e;

    move-result-object v3

    const-string v4, "next_rid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/jiguang/g/b/e;->b(Ljava/lang/String;Ljava/io/Serializable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(J)J
    .locals 6

    const-wide/16 v4, 0x2

    rem-long v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    :goto_0
    const-wide/16 v2, 0x7fff

    rem-long/2addr v0, v2

    return-wide v0

    :cond_0
    add-long v0, p0, v4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cn.jpush.preferences.v2.rid"

    invoke-static {p0, v0}, Lcn/jiguang/g/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/g/b/e;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/a/f;->a:Lcn/jiguang/g/b/e;

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcn/jiguang/g/b/e;
    .locals 1

    sget-object v0, Lcn/jiguang/d/a/f;->a:Lcn/jiguang/g/b/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/f;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcn/jiguang/d/a/f;->a:Lcn/jiguang/g/b/e;

    return-object v0
.end method
