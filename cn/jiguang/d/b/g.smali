.class public final Lcn/jiguang/d/b/g;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcn/jiguang/d/b/g;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/jiguang/d/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcn/jiguang/d/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcn/jiguang/d/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/g;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    return-void
.end method

.method public static a()Lcn/jiguang/d/b/g;
    .locals 1

    sget-object v0, Lcn/jiguang/d/b/g;->f:Lcn/jiguang/d/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/d/b/g;

    invoke-direct {v0}, Lcn/jiguang/d/b/g;-><init>()V

    sput-object v0, Lcn/jiguang/d/b/g;->f:Lcn/jiguang/d/b/g;

    :cond_0
    sget-object v0, Lcn/jiguang/d/b/g;->f:Lcn/jiguang/d/b/g;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lcn/jiguang/d/b/h;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "RequestCacheManager"

    const-string v1, "Action - dequeSentQueue"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/h;

    invoke-virtual {v0}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2}, Lcn/jiguang/d/b/g;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c(Lcn/jiguang/d/b/h;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "RequestCacheManager"

    const-string v1, "Action - enqueSentQueue"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "RequestCacheManager"

    const-string v1, "enqueSentQueue requesting is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/h;

    invoke-virtual {v0}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Lcn/jiguang/d/b/h;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "RequestCacheManager"

    const-string v1, "endRequestTimeout requesting is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - endRequestTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/b/g;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/h;

    if-nez v0, :cond_1

    const-string v0, "RequestCacheManager"

    const-string v1, "Unexpected - failed to remove requesting from cache."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v1, 0x1ceb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private e(Lcn/jiguang/d/b/h;)V
    .locals 10

    const-wide/16 v8, 0x0

    if-nez p1, :cond_0

    const-string v0, "RequestCacheManager"

    const-string v1, "sendCommandWithLoggedIn failed,requesting is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcn/jiguang/d/a/d;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v2

    iget-object v1, p1, Lcn/jiguang/d/b/h;->d:[B

    const-string v4, "CorePackage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action - correctDataSidAndUid,sid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v5, 0x5000

    invoke-direct {v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    invoke-virtual {v4, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArray([B)V

    int-to-long v0, v0

    const/16 v5, 0xc

    invoke-virtual {v4, v0, v1, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32At(JI)V

    cmp-long v0, v2, v8

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-virtual {v4, v2, v3, v0}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64At(JI)V

    :cond_1
    invoke-virtual {v4}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/d/e/a/a/b;->a([BI)[B

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/d/f/a;->a([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, p1}, Lcn/jiguang/d/b/g;->c(Lcn/jiguang/d/b/h;)V

    if-nez p1, :cond_3

    const-string v0, "RequestCacheManager"

    const-string v1, "startSentTimeout failed,requesting is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "RequestCacheManager"

    const-string v1, "sendCommandWithLoggedIn failed:sendData is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "RequestCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send data failed - error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - startSentTimeout :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v1, 0x1cec

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x2648

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    if-nez p4, :cond_0

    const-string v0, "RequestCacheManager"

    const-string v1, "handleResponseInternal obj  is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p4, Lcn/jiguang/d/e/a/a/c;

    if-nez v0, :cond_1

    const-string v0, "RequestCacheManager"

    const-string v1, "handleResponseInternal obj  is not JHead"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast p4, Lcn/jiguang/d/e/a/a/c;

    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - handleResponseInternal - connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcn/jiguang/d/e/a/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sdktype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-string v0, "RequestCacheManager"

    const-string v1, "Response connection is out-dated. "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p4}, Lcn/jiguang/d/e/a/a/c;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p3}, Lcn/jiguang/d/b/g;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jiguang/d/b/g;->a(Ljava/lang/String;)Lcn/jiguang/d/b/h;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "RequestCacheManager"

    const-string v1, "Not found the request in SentQueue when response."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const-string v1, "RequestCacheManager"

    const-string v2, "endSentTimeout failed,requesting is null"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcn/jiguang/d/b/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/h;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcn/jiguang/d/b/g;->d(Lcn/jiguang/d/b/h;)V

    goto :goto_0

    :cond_4
    const-string v1, "RequestCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action - endSentTimeout - requestKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v2, 0x1cec

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v0, "RequestCacheManager"

    const-string v1, "Not found requesting in RequestingCache when response."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/b/g;->e:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcn/jiguang/d/b/h;)V
    .locals 4

    if-nez p1, :cond_1

    const-string v0, "RequestCacheManager"

    const-string v1, "onSentTimeout requesting is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - onSentTimeout - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jiguang/d/b/g;->a(Ljava/lang/String;)Lcn/jiguang/d/b/h;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "RequestCacheManager"

    const-string v1, "not found sent request in SentQueue, drop it"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Lcn/jiguang/d/b/h;->a:I

    if-lez v0, :cond_4

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    invoke-static {}, Lcn/jiguang/d/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retry to send request - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcn/jiguang/d/b/h;->a:I

    add-int/lit16 v0, v0, -0x2710

    iput v0, p1, Lcn/jiguang/d/b/h;->a:I

    iget v0, p1, Lcn/jiguang/d/b/h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/jiguang/d/b/h;->b:I

    invoke-direct {p0, p1}, Lcn/jiguang/d/b/g;->e(Lcn/jiguang/d/b/h;)V

    :goto_1
    iget v0, p1, Lcn/jiguang/d/b/h;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v1, 0x3ed

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-string v0, "RequestCacheManager"

    const-string v1, "Want retry to send but not logged in. Sent move to RequestingQueue"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcn/jiguang/d/b/g;->b(Lcn/jiguang/d/b/h;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v1, 0x1cea

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "connection"

    sget-object v3, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "request_sdktype"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a([BLjava/lang/String;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "RequestCacheManager"

    const-string v1, "sendRequest failed,request data is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request_timeout"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "request_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "request_sdktype"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v2, 0x1ce9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - restoreSentQueue - sentQueueSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v1, 0x1cec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object v0, p0, Lcn/jiguang/d/b/g;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcn/jiguang/d/b/h;)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "RequestCacheManager"

    const-string v1, "onRequestTimeout requesting is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - onRequestTimeout - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/d/b/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/d/b/g;->d(Lcn/jiguang/d/b/h;)V

    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    iget-object v1, p0, Lcn/jiguang/d/b/g;->e:Landroid/content/Context;

    iget-object v2, p1, Lcn/jiguang/d/b/h;->f:Ljava/lang/String;

    iget-wide v4, p1, Lcn/jiguang/d/b/h;->c:J

    iget v6, p1, Lcn/jiguang/d/b/h;->e:I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ActionManager"

    const-string v2, "sdktype is null,will dispatchTimeoutRequest to others"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4, v5, v6}, Lcn/jiguang/d/d/b;->b(Landroid/content/Context;JI)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jiguang/d/d/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/api/JAction;

    if-nez v0, :cond_2

    const-string v0, "ActionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "can not found action with"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",will dispatchTimeoutRequest to others"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4, v5, v6}, Lcn/jiguang/d/d/b;->b(Landroid/content/Context;JI)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface/range {v0 .. v6}, Lcn/jiguang/api/JAction;->dispatchTimeOutMessage(Landroid/content/Context;JJI)V

    goto :goto_0
.end method

.method public final b([BLjava/lang/String;I)V
    .locals 6

    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - sendRequestInternal - connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sdkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "RequestCacheManager"

    const-string v1, "sendRequestInternal failed,request data is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/b/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    const-string v0, "RequestCacheManager"

    const-string v1, "sendRequestInternal failed,cache is full"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/jiguang/d/b/h;

    invoke-direct {v0, p1, p2, p3}, Lcn/jiguang/d/b/h;-><init>([BLjava/lang/String;I)V

    iget-object v1, p0, Lcn/jiguang/d/b/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2710

    if-le p3, v1, :cond_2

    const-string v1, "RequestCacheManager"

    const-string v2, "Action - startRequestTimeout"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    const/16 v2, 0x1ceb

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/d/b/g;->d:Landroid/os/Handler;

    iget v3, v0, Lcn/jiguang/d/b/h;->a:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    invoke-direct {p0, v0}, Lcn/jiguang/d/b/g;->e(Lcn/jiguang/d/b/h;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const-string v0, "RequestCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - resendRequestingQueue - size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/h;

    if-eqz v0, :cond_1

    iget v1, v0, Lcn/jiguang/d/b/h;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/jiguang/d/b/g;->b:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/jiguang/d/b/g;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcn/jiguang/d/b/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcn/jiguang/d/b/g;->e(Lcn/jiguang/d/b/h;)V

    goto :goto_0

    :cond_1
    return-void
.end method
