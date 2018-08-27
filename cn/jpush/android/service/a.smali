.class public final Lcn/jpush/android/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/jpush/android/service/a;

.field private static b:Ljava/util/concurrent/ExecutorService;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/service/a;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    .line 31
    iput-object v0, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    .line 40
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "Constructor : JPushLocalNotificationCenter"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/service/a;
    .locals 2

    .prologue
    .line 47
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    if-nez v0, :cond_1

    .line 49
    sget-object v1, Lcn/jpush/android/service/a;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcn/jpush/android/service/a;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcn/jpush/android/service/a;->a:Lcn/jpush/android/service/a;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(JJ)V
    .locals 5

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "LocalNotification scheduleReadiedLN"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcn/jpush/android/service/a$2;

    invoke-direct {v0, p0, p1, p2}, Lcn/jpush/android/service/a$2;-><init>(Lcn/jpush/android/service/a;J)V

    .line 249
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1

    .line 250
    const-string v1, "JPushLocalNotificationCenter"

    const-string v2, "post right now "

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_1
    :try_start_1
    const-string v1, "JPushLocalNotificationCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post delayed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcn/jpush/android/service/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "start LocalNotification broadCastToPushReceiver"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    const-string v1, "senderId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    const-string v1, "appId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1271
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    const-string v1, "notificaion_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 264
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "end LocalNotification broadCastToPushReceiver"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcn/jpush/android/service/a;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z
    .locals 14

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "add LocalNotification"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getBroadcastTime()J

    move-result-wide v0

    sub-long v12, v0, v10

    .line 107
    invoke-static {p1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "push has stopped"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getNotificationId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 113
    :try_start_1
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v1

    .line 114
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcn/jpush/android/data/d;->a(JI)Lcn/jpush/android/data/e;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->toJSON()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getBroadcastTime()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_0
    const-wide/32 v0, 0x493e0

    cmp-long v0, v12, v0

    if-gez v0, :cond_2

    .line 126
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getNotificationId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, v12, v13}, Lcn/jpush/android/service/a;->a(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    const/4 v0, 0x1

    .line 131
    :goto_1
    monitor-exit p0

    return v0

    .line 118
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->toJSON()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcn/jpush/android/data/JPushLocalNotification;->getBroadcastTime()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/d;->a(JIIILjava/lang/String;JJ)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 122
    const-string v1, "JPushLocalNotificationCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcn/jpush/android/service/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e(Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "triggerLNKillProcess"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v1

    .line 178
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/jpush/android/data/d;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const/4 v2, 0x0

    .line 181
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 182
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v4, v5}, Lcn/jpush/android/data/d;->a(IJ)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 183
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    :cond_0
    invoke-static {v12}, Lcn/jpush/android/data/d;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/service/a;->e:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {p0, p1, v2, v3, v4}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v8

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J

    .line 190
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :cond_2
    if-eqz v12, :cond_3

    .line 196
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/jpush/android/data/d;->b(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :goto_1
    :try_start_4
    const-string v3, "JPushLocalNotificationCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "triggerLNKillProcess: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 195
    if-eqz v2, :cond_4

    .line 196
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcn/jpush/android/data/d;->b(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :catchall_1
    move-exception v0

    move-object v12, v2

    :goto_2
    if-eqz v12, :cond_5

    .line 196
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jpush/android/data/d;->b(Z)V

    throw v0

    .line 201
    :cond_6
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "init LocalNotification cast expt: db open failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 195
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v12, v2

    goto :goto_2

    .line 192
    :catch_1
    move-exception v0

    move-object v2, v12

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 71
    monitor-enter p0

    :try_start_0
    const-string v1, "JPushLocalNotificationCenter"

    const-string v2, "remove LocalNotification "

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v1

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Lcn/jpush/android/data/d;->a(JI)Lcn/jpush/android/data/e;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    const-string v3, "JPushLocalNotificationCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remove local count : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/jpush/android/data/e;->b()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p2, p3}, Lcn/jpush/android/data/d;->a(J)I

    .line 79
    iget-object v1, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    long-to-int v2, p2

    invoke-static {v1, v2}, Lcn/jpush/android/api/JPushInterface;->clearNotificationById(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const/4 v0, 0x1

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    :try_start_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 86
    const-string v2, "JPushLocalNotificationCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;Z)Z
    .locals 3

    .prologue
    .line 91
    monitor-enter p0

    if-eqz p3, :cond_0

    .line 92
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 94
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    const-string v1, "intent.MULTI_PROCESS"

    invoke-static {p1, v0, v1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 96
    const-string v1, "multi_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v1, "local_notification"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "clear all local notification "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/data/d;->a()[I

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 63
    const-string v0, "JPushLocalNotificationCenter"

    const-string v2, " success"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 65
    iget-object v4, p0, Lcn/jpush/android/service/a;->d:Landroid/content/Context;

    invoke-static {v4, v3}, Lcn/jpush/android/api/JPushInterface;->clearNotificationById(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "init LocalNotification"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v2

    .line 137
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcn/jpush/android/data/d;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 141
    const-wide/32 v6, 0x493e0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcn/jpush/android/data/d;->a(JJ)Landroid/database/Cursor;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_0
    invoke-static {v1}, Lcn/jpush/android/data/d;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-direct {p0, v6, v7, v8, v9}, Lcn/jpush/android/service/a;->a(JJ)V

    .line 148
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :cond_2
    if-eqz v1, :cond_3

    .line 154
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcn/jpush/android/data/d;->b(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    :try_start_3
    const-string v3, "JPushLocalNotificationCenter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init LocalNotification cast expt:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcn/jpush/android/data/d;->b(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 154
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcn/jpush/android/data/d;->b(Z)V

    throw v0

    .line 159
    :cond_6
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "init LocalNotification cast expt: db open failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 164
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "LocalNotification onHeartBeat"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcn/jpush/android/service/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/service/a$1;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/service/a$1;-><init>(Lcn/jpush/android/service/a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method
