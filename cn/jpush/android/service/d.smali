.class public final Lcn/jpush/android/service/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/jpush/android/service/d;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private b:Lcn/jpush/android/service/TagAliasReceiver;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/jpush/android/api/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/service/d;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jpush/android/service/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method

.method private a(J)Lcn/jpush/android/api/a;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/api/a;

    return-object v0
.end method

.method public static a()Lcn/jpush/android/service/d;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcn/jpush/android/service/d;->a:Lcn/jpush/android/service/d;

    if-nez v0, :cond_1

    .line 47
    sget-object v1, Lcn/jpush/android/service/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcn/jpush/android/service/d;->a:Lcn/jpush/android/service/d;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcn/jpush/android/service/d;

    invoke-direct {v0}, Lcn/jpush/android/service/d;-><init>()V

    sput-object v0, Lcn/jpush/android/service/d;->a:Lcn/jpush/android/service/d;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcn/jpush/android/service/d;->a:Lcn/jpush/android/service/d;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcn/jpush/android/api/a;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 265
    if-nez p0, :cond_0

    .line 266
    const-string v0, "TagAliasOperator"

    const-string v2, "callBack was null"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 276
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v2, "TagAliasOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get origin check tag failed, error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 276
    goto :goto_0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 202
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onTimeout rid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, p2, p3}, Lcn/jpush/android/service/d;->a(J)Lcn/jpush/android/api/a;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tagalias callback is null; rid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    sget v1, Lcn/jpush/android/api/JPushInterface$a;->c:I

    invoke-static {v0, v1}, Lcn/jpush/android/service/d;->a(Lcn/jpush/android/api/a;I)V

    .line 209
    invoke-direct {p0, p2, p3}, Lcn/jpush/android/service/d;->b(J)V

    goto :goto_0
.end method

.method private static a(Lcn/jpush/android/api/a;I)V
    .locals 3

    .prologue
    .line 254
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - invokeUserCallback, errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",callBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcn/jpush/android/api/a;->e:I

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcn/jpush/android/api/a;->c:Lcn/jpush/android/api/TagAliasCallback;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/jpush/android/api/a;->c:Lcn/jpush/android/api/TagAliasCallback;

    iget-object v1, p0, Lcn/jpush/android/api/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1, v1, v2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v0, "TagAliasOperator"

    const-string v1, "new proto type do not call user callback"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/api/a;

    .line 84
    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v4, v5}, Lcn/jpush/android/api/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 89
    const-string v2, "TagAliasOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cleanTimeOutCallback timeout rid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;J)V

    goto :goto_1

    .line 93
    :cond_2
    return-void
.end method

.method private declared-synchronized c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcn/jpush/android/service/d;->b(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcn/jpush/android/service/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/d;->b:Lcn/jpush/android/service/TagAliasReceiver;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/jpush/android/service/d;->b:Lcn/jpush/android/service/TagAliasReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/service/d;->b:Lcn/jpush/android/service/TagAliasReceiver;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/jpush/android/service/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    const-string v0, "TagAliasOperator"

    const-string v1, "unRegister tag alias callback"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :goto_1
    monitor-exit p0

    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_3
    const-string v1, "TagAliasOperator"

    const-string v2, "Receiver not registered, cannot call unregisterReceiver"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    :try_start_4
    const-string v1, "TagAliasOperator"

    const-string v2, "other exception"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    :cond_1
    const-string v0, "TagAliasOperator"

    const-string v1, "tagAliasCallbacks is not empty"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 149
    const-string v1, "tagalias_seqid"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 150
    const-string v1, "tagalias_errorcode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 151
    const-string v1, "TagAliasOperator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parseTagAliasResponse2JPushMessage, errorCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v2, v3}, Lcn/jpush/android/service/d;->a(J)Lcn/jpush/android/api/a;

    move-result-object v5

    .line 153
    if-nez v5, :cond_0

    .line 154
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "tagalias callback is null; rid="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v1

    invoke-direct {v1, v2, v3}, Lcn/jpush/android/service/d;->b(J)V

    .line 160
    if-nez v4, :cond_1

    .line 161
    :try_start_0
    iget v1, v5, Lcn/jpush/android/api/a;->f:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 163
    iget v1, v5, Lcn/jpush/android/api/a;->e:I

    if-ne v1, v7, :cond_2

    .line 165
    const-string v1, "tags"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_1

    .line 167
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v5, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    .line 168
    const-string v1, "TagAliasOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "all tags was loaded, value:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    :goto_1
    new-instance v1, Lcn/jpush/android/api/JPushMessage;

    invoke-direct {v1}, Lcn/jpush/android/api/JPushMessage;-><init>()V

    .line 183
    invoke-virtual {v1, v4}, Lcn/jpush/android/api/JPushMessage;->setErrorCode(I)V

    .line 184
    iget v2, v5, Lcn/jpush/android/api/a;->d:I

    invoke-virtual {v1, v2}, Lcn/jpush/android/api/JPushMessage;->setSequence(I)V

    .line 185
    iget v2, v5, Lcn/jpush/android/api/a;->e:I

    if-ne v2, v7, :cond_5

    .line 186
    iget v2, v5, Lcn/jpush/android/api/a;->f:I

    if-ne v2, v8, :cond_4

    .line 187
    invoke-static {v5}, Lcn/jpush/android/service/d;->a(Lcn/jpush/android/api/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/jpush/android/api/JPushMessage;->setCheckTag(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v0}, Lcn/jpush/android/api/JPushMessage;->setTagCheckStateResult(Z)V

    .line 189
    invoke-virtual {v1, v7}, Lcn/jpush/android/api/JPushMessage;->setTagCheckOperator(Z)V

    :goto_2
    move-object v0, v1

    .line 196
    goto :goto_0

    .line 170
    :cond_2
    :try_start_1
    iget v1, v5, Lcn/jpush/android/api/a;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 171
    const-string v1, "alias"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcn/jpush/android/api/a;->a:Ljava/lang/String;

    .line 172
    const-string v1, "TagAliasOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alias was loaded, value:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    const-string v2, "TagAliasOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "get tag or alias failed - error:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_3
    :try_start_2
    iget v1, v5, Lcn/jpush/android/api/a;->f:I

    if-ne v1, v8, :cond_1

    .line 176
    const-string v1, "validated"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_1

    .line 191
    :cond_4
    iget-object v0, v5, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcn/jpush/android/api/JPushMessage;->setTags(Ljava/util/Set;)V

    goto :goto_2

    .line 194
    :cond_5
    iget-object v0, v5, Lcn/jpush/android/api/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/jpush/android/api/JPushMessage;->setAlias(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    sget-object v1, Lcn/jpush/android/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 100
    const-string v1, "cn.jpush.android.intent.TAG_ALIAS_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcn/jpush/android/service/d;->b:Lcn/jpush/android/service/TagAliasReceiver;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcn/jpush/android/service/TagAliasReceiver;

    invoke-direct {v1}, Lcn/jpush/android/service/TagAliasReceiver;-><init>()V

    iput-object v1, p0, Lcn/jpush/android/service/d;->b:Lcn/jpush/android/service/TagAliasReceiver;

    .line 105
    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/d;->b:Lcn/jpush/android/service/TagAliasReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcn/jpush/android/service/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    const-string v1, "TagAliasOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setTagAndAlias e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_1
    :try_start_3
    const-string v0, "TagAliasOperator"

    const-string v1, "tag alias callback register is called"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;IJLcn/jpush/android/api/a;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 279
    if-eqz p5, :cond_0

    .line 280
    iget v0, p5, Lcn/jpush/android/api/a;->e:I

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p5, Lcn/jpush/android/api/a;->c:Lcn/jpush/android/api/TagAliasCallback;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p5, Lcn/jpush/android/api/a;->c:Lcn/jpush/android/api/TagAliasCallback;

    iget-object v1, p5, Lcn/jpush/android/api/a;->a:Ljava/lang/String;

    iget-object v2, p5, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-interface {v0, p2, v1, v2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    .line 283
    invoke-direct {p0, p3, p4}, Lcn/jpush/android/service/d;->b(J)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    :try_start_0
    const-string v0, "TagAliasOperator"

    const-string v1, "Action - onTagaliasTimeout"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    sget-object v1, Lcn/jpush/android/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget v1, p5, Lcn/jpush/android/api/a;->e:I

    if-ne v1, v2, :cond_2

    .line 293
    const-string v1, "message_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    :goto_1
    const-string v1, "tagalias_errorcode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v1, "tagalias_seqid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v1, "TagAliasOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTagaliasTimeout error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    :try_start_1
    const-string v1, "message_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;JILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 136
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onTagAliasResponse rid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tagAliasCallbacks :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v2

    .line 1068
    iget-object v2, v2, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "cn.jpush.android.intent.TAG_ALIAS_TIMEOUT"

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;J)V

    .line 143
    :goto_0
    invoke-direct {p0, p1}, Lcn/jpush/android/service/d;->c(Landroid/content/Context;)V

    .line 144
    return-void

    .line 1216
    :cond_0
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetAliasAndTags finish : errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0, p2, p3}, Lcn/jpush/android/service/d;->a(J)Lcn/jpush/android/api/a;

    move-result-object v1

    .line 1218
    if-nez v1, :cond_1

    .line 1219
    const-string v0, "TagAliasOperator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tagalias callback is null; rid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1222
    :cond_1
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    invoke-direct {v0, p2, p3}, Lcn/jpush/android/service/d;->b(J)V

    .line 1225
    if-eqz p5, :cond_2

    .line 1226
    :try_start_0
    iget v0, v1, Lcn/jpush/android/api/a;->f:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 1228
    iget v0, v1, Lcn/jpush/android/api/a;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1230
    const-string v0, "tags"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_2

    .line 1232
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    .line 1233
    const-string v0, "TagAliasOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "all tags was loaded, value:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :cond_2
    :goto_1
    invoke-static {v1, p4}, Lcn/jpush/android/service/d;->a(Lcn/jpush/android/api/a;I)V

    goto :goto_0

    .line 1235
    :cond_3
    :try_start_1
    iget v0, v1, Lcn/jpush/android/api/a;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1236
    const-string v0, "alias"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/api/a;->a:Ljava/lang/String;

    .line 1237
    const-string v0, "TagAliasOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alias was loaded, value:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcn/jpush/android/api/a;->b:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    const-string v2, "TagAliasOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get tag or alias failed - error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1240
    :cond_4
    :try_start_2
    iget v0, v1, Lcn/jpush/android/api/a;->f:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 1241
    const-string v0, "validated"

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Long;Lcn/jpush/android/api/a;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcn/jpush/android/service/d;->b(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcn/jpush/android/service/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
