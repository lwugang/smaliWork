.class public final Lcn/jiguang/g/c/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcn/jiguang/g/c/b;


# instance fields
.field private a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Lcn/jiguang/g/c/a/a;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcn/jiguang/g/c/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcn/jiguang/g/c/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcn/jiguang/g/c/a/e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/jiguang/g/c/b;->a:[Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/g/c/b;->c:Lcn/jiguang/g/c/a/a;

    return-void
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/Class;)Lcn/jiguang/g/c/a/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcn/jiguang/g/c/a/a;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v0, "TelManager"

    const-string v2, "check class array was null"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/g/c/a/a;

    invoke-virtual {v0, p0}, Lcn/jiguang/g/c/a/a;->b(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "TelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " new instance failed:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Lcn/jiguang/g/c/b;
    .locals 2

    sget-object v0, Lcn/jiguang/g/c/b;->b:Lcn/jiguang/g/c/b;

    if-nez v0, :cond_1

    const-class v1, Landroid/telephony/TelephonyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/g/c/b;->b:Lcn/jiguang/g/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/g/c/b;

    invoke-direct {v0}, Lcn/jiguang/g/c/b;-><init>()V

    sput-object v0, Lcn/jiguang/g/c/b;->b:Lcn/jiguang/g/c/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/jiguang/g/c/b;->b:Lcn/jiguang/g/c/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jiguang/g/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/g/c/b;->c:Lcn/jiguang/g/c/a/a;

    if-nez v0, :cond_2

    new-instance v0, Lcn/jiguang/g/c/a/b;

    invoke-direct {v0}, Lcn/jiguang/g/c/a/b;-><init>()V

    invoke-virtual {v0, p1}, Lcn/jiguang/g/c/a/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcn/jiguang/g/c/b;->c:Lcn/jiguang/g/c/a/a;

    invoke-virtual {v0, p1}, Lcn/jiguang/g/c/a/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/jiguang/g/c/b;->a:[Ljava/lang/Class;

    invoke-static {p1, v1}, Lcn/jiguang/g/c/b;->a(Landroid/content/Context;[Ljava/lang/Class;)Lcn/jiguang/g/c/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcn/jiguang/g/c/b;->c:Lcn/jiguang/g/c/a/a;

    invoke-virtual {v1, p1}, Lcn/jiguang/g/c/a/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcn/jiguang/g/c/b;->c:Lcn/jiguang/g/c/a/a;

    :cond_2
    iget-object v0, p0, Lcn/jiguang/g/c/b;->c:Lcn/jiguang/g/c/a/a;

    invoke-virtual {v0, p1}, Lcn/jiguang/g/c/a/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
