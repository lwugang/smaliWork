.class public final Lcn/jpush/android/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private static a(J)I
    .locals 8

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x0

    .line 174
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-ge v0, v6, :cond_0

    .line 175
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    .line 193
    :goto_0
    return v0

    .line 179
    :cond_0
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 180
    sub-long v2, p0, v2

    .line 181
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 182
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 183
    const/4 v0, 0x2

    goto :goto_0

    .line 185
    :cond_1
    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 187
    :goto_1
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lt v0, v6, :cond_2

    .line 188
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_1

    .line 190
    :cond_2
    sget-object v0, Lcn/jpush/android/a/k;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;IJ)J
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 536
    const-string v0, "TagAliasHelper"

    const-string v1, "action - onRecvTagAliasCallBack"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v0, "code"

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 540
    if-nez p2, :cond_3

    .line 541
    const-string v0, "sequence"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 543
    :goto_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 544
    sget-object v0, Lcn/jpush/android/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v0, "proto_type"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    if-nez p2, :cond_1

    .line 552
    const-string v0, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    :goto_1
    const-string v0, "tagalias_errorcode"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    const-string v0, "tagalias_seqid"

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 566
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;JILorg/json/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 574
    :cond_0
    :goto_2
    return-wide v2

    .line 554
    :cond_1
    const-string v0, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    if-ne p2, v7, :cond_2

    .line 556
    const-string v0, "message_type"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 572
    :catch_0
    move-exception v0

    const-string v0, "TagAliasHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tagalias msgContent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 559
    :cond_2
    :try_start_1
    const-string v0, "message_type"

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move-wide v2, p3

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;JI)Lcn/jpush/a/c;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 445
    .line 1526
    if-eq p4, v8, :cond_0

    const/4 v3, 0x3

    if-eq p4, v3, :cond_0

    const/4 v3, 0x5

    if-ne p4, v3, :cond_1

    :cond_0
    move v3, v1

    .line 445
    :goto_0
    if-eqz v3, :cond_7

    .line 447
    :try_start_0
    invoke-static {p4}, Lcn/jpush/android/a/k;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2520
    if-ne p4, v8, :cond_2

    .line 448
    :goto_1
    if-eqz v1, :cond_5

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    const-string v1, "TagAliasHelper"

    const-string v2, "alias was empty. Give up action."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x2

    sget v2, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, v1, v2, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    move-object v1, v0

    .line 476
    :goto_2
    return-object v1

    :cond_1
    move v3, v2

    .line 1526
    goto :goto_0

    :cond_2
    move v1, v2

    .line 2520
    goto :goto_1

    .line 455
    :cond_3
    const/4 v1, 0x2

    invoke-static {p0, v1, p1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v0

    .line 456
    goto :goto_2

    .line 458
    :cond_4
    const-string v1, "alias"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 461
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alias str:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 463
    new-instance v1, Lcn/jpush/a/c;

    const/4 v2, 0x1

    const/16 v3, 0x1d

    .line 464
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v6

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcn/jpush/a/c;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 468
    :catch_0
    move-exception v1

    .line 469
    const-string v2, "TagAliasHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alias exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    sget v1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v8, v1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    :goto_3
    move-object v1, v0

    .line 476
    goto :goto_2

    .line 466
    :cond_6
    :try_start_1
    const-string v1, "TagAliasHelper"

    const-string v2, "alias request action was empty"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 473
    :cond_7
    const-string v1, "TagAliasHelper"

    const-string v2, "unsupport alias action type"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    sget v1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v8, v1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    goto :goto_3
.end method

.method protected static a(Landroid/content/Context;Ljava/util/List;JII)Lcn/jpush/a/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JII)",
            "Lcn/jpush/a/c;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 384
    if-eqz p4, :cond_d

    .line 386
    :try_start_0
    invoke-static {p4}, Lcn/jpush/android/a/k;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1510
    if-eq p4, v9, :cond_0

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    const/4 v0, 0x3

    if-eq p4, v0, :cond_0

    if-ne p4, v3, :cond_2

    :cond_0
    move v0, v9

    .line 387
    :goto_0
    if-eqz v0, :cond_7

    .line 388
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    :cond_1
    const-string v0, "TagAliasHelper"

    const-string v1, "tags was empty. Give up action."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, v0, v1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    move-object v1, v8

    .line 439
    :goto_1
    return-object v1

    .line 1510
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 395
    const/4 v2, 0x1

    invoke-static {p0, v2, v0, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;J)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v1, v8

    .line 396
    goto :goto_1

    .line 399
    :cond_4
    invoke-static {v0}, Lcn/jpush/android/a/k;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 401
    const/4 v2, 0x1

    invoke-static {p0, v0, p2, p3, v2}, Lcn/jpush/android/a/k;->b(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v1, v8

    .line 402
    goto :goto_1

    .line 404
    :cond_5
    if-ne p4, v3, :cond_a

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    const-string v0, "TagAliasHelper"

    const-string v1, "stags was empty. Give up action."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, v0, v1, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    move-object v1, v8

    .line 408
    goto :goto_1

    .line 410
    :cond_6
    const-string v2, "tags"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    :cond_7
    :goto_2
    const/4 v0, 0x5

    if-ne p4, v0, :cond_9

    .line 421
    const-string v0, "curr"

    const/4 v2, -0x1

    if-ne p5, v2, :cond_8

    move p5, v9

    :cond_8
    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 423
    :cond_9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 424
    const-string v0, "TagAliasHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag str:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 426
    new-instance v1, Lcn/jpush/a/c;

    const/4 v2, 0x1

    const/16 v3, 0x1c

    .line 427
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v6

    move-wide v4, p2

    invoke-direct/range {v1 .. v7}, Lcn/jpush/a/c;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v9, v0, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    :goto_3
    move-object v1, v8

    .line 439
    goto/16 :goto_1

    .line 413
    :cond_a
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 417
    :cond_b
    const-string v0, "tags"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 429
    :cond_c
    const-string v0, "TagAliasHelper"

    const-string v1, "tag request action was empty"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 436
    :cond_d
    const-string v0, "TagAliasHelper"

    const-string v1, "unsupport tag action type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v9, v0, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)Lcn/jpush/a/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcn/jpush/a/c;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 336
    .line 337
    if-eqz p1, :cond_7

    .line 338
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 340
    :goto_0
    if-eqz p2, :cond_0

    invoke-static {p0, v8, p2, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 378
    :goto_1
    return-object v1

    .line 343
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p0, v8, v1, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;J)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 344
    goto :goto_1

    .line 347
    :cond_1
    invoke-static {v1}, Lcn/jpush/android/a/k;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {p0, v2, p3, p4, v8}, Lcn/jpush/android/a/k;->b(Landroid/content/Context;Ljava/lang/String;JI)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v0

    .line 349
    goto :goto_1

    .line 351
    :cond_2
    if-nez v2, :cond_3

    if-nez p2, :cond_3

    .line 352
    const-string v1, "TagAliasHelper"

    const-string v2, "NULL alias and tags. Give up action."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget v1, Lcn/jpush/android/api/JPushInterface$a;->b:I

    invoke-static {p0, v8, v1, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    move-object v1, v0

    .line 354
    goto :goto_1

    .line 356
    :cond_3
    const-string v3, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action:setAliasAndTags - alias:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tags:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 359
    const-string v4, "platform"

    const-string v5, "a"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    if-eqz p2, :cond_4

    .line 361
    const-string v4, "alias"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_4
    if-eqz v1, :cond_5

    .line 364
    const-string v1, "tags"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 367
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tagalias str:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 369
    new-instance v1, Lcn/jpush/a/c;

    const/4 v2, 0x4

    const/16 v3, 0xa

    .line 370
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v6

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcn/jpush/a/c;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    const-string v2, "TagAliasHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tagalias exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget v1, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v8, v1, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    :goto_2
    move-object v1, v0

    .line 378
    goto/16 :goto_1

    .line 372
    :cond_6
    :try_start_1
    const-string v1, "TagAliasHelper"

    const-string v2, "tagalias request action was empty"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 115
    :cond_0
    :goto_0
    return-object p0

    .line 99
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcn/jpush/android/d/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v1, 0x1

    .line 107
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_3

    .line 108
    const-string v0, "TagAliasHelper"

    const-string v1, "The lenght of tags maybe more than 1000."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    const-string v4, "TagAliasHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid tag : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    move v1, v0

    .line 114
    goto :goto_1

    :cond_4
    move-object p0, v2

    .line 115
    goto :goto_0
.end method

.method private static a(I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 480
    const-string v0, "platform"

    const-string v2, "a"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v2, "op"

    .line 3488
    packed-switch p0, :pswitch_data_0

    .line 3502
    const/4 v0, 0x0

    .line 481
    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    return-object v1

    .line 3490
    :pswitch_0
    const-string v0, "add"

    goto :goto_0

    .line 3492
    :pswitch_1
    const-string v0, "set"

    goto :goto_0

    .line 3494
    :pswitch_2
    const-string v0, "del"

    goto :goto_0

    .line 3496
    :pswitch_3
    const-string v0, "clean"

    goto :goto_0

    .line 3498
    :pswitch_4
    const-string v0, "get"

    goto :goto_0

    .line 3500
    :pswitch_5
    const-string v0, "valid"

    goto :goto_0

    .line 3488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;IIJ)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 275
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v1, "cn.jpush.android.intent.TAG_ALIAS_CALLBACK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :goto_0
    const-string v1, "tagalias_errorcode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "tagalias_seqid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    :goto_1
    return-void

    .line 281
    :cond_0
    const-string v1, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    if-ne p1, v2, :cond_1

    .line 283
    const-string v1, "message_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NotifyTagAliasError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_1
    :try_start_1
    const-string v1, "message_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 8

    .prologue
    .line 149
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcn/jpush/android/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    move v2, p1

    move-object v3, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/jpush/android/api/a;-><init>(ILjava/lang/String;JII)V

    invoke-static {p0, p2, v0, v1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V

    .line 151
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/util/Set;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 153
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcn/jpush/android/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/jpush/android/api/a;-><init>(ILjava/util/Set;JII)V

    invoke-static {p0, v0, p2, v1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V

    .line 155
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 204
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 205
    const-string v0, "tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 206
    const-string v0, "seq_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 210
    :try_start_0
    const-string v0, "proto_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 216
    :goto_0
    :try_start_1
    const-string v0, "protoaction_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 221
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/jpush/android/a/k;->a(J)I

    move-result v0

    .line 222
    if-eqz v0, :cond_2

    .line 223
    if-ne v0, v10, :cond_0

    .line 224
    const-string v1, "TagAliasHelper"

    const-string v4, "set tags/alias too soon,over 10 times in 10s"

    invoke-static {v1, v4}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_2
    if-ne v0, v10, :cond_1

    sget v0, Lcn/jpush/android/api/JPushInterface$a;->l:I

    :goto_3
    invoke-static {p0, v6, v0, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 261
    :goto_4
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v5, "TagAliasHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "load tag/alias proto type failed - error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v4, v0, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    move v6, v4

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    .line 218
    const-string v5, "TagAliasHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "load tag/alias action type failed - error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, v6, v0, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    goto :goto_1

    .line 226
    :cond_0
    const-string v1, "TagAliasHelper"

    const-string v4, "set tags/alias failed,time shaft error\uff0cplease try again"

    invoke-static {v1, v4}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :cond_1
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->n:I

    goto :goto_3

    .line 233
    :cond_2
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    invoke-static {p0, v6, v2, v3}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->u:I

    invoke-static {p0, v6, v0, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    goto :goto_4

    .line 237
    :cond_3
    const/4 v0, 0x0

    .line 238
    if-nez v6, :cond_7

    .line 239
    const-string v0, "TagAliasHelper"

    const-string v5, "old tag/alias proto"

    invoke-static {v0, v5}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {p0, v1, v11, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;J)Lcn/jpush/a/c;

    move-result-object v0

    .line 247
    :cond_4
    :goto_5
    if-eqz v0, :cond_6

    if-eq v6, v10, :cond_5

    if-ne v6, v12, :cond_6

    .line 248
    :cond_5
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcn/jpush/android/a/l;->a(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 249
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v5

    move v7, v4

    move-wide v8, v2

    move-object v10, v1

    invoke-virtual/range {v5 .. v11}, Lcn/jpush/android/a/l;->a(IIJLjava/util/ArrayList;Ljava/lang/String;)V

    .line 260
    :cond_6
    invoke-static {p0, v0}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Lcn/jpush/a/c;)V

    goto :goto_4

    .line 241
    :cond_7
    if-ne v6, v10, :cond_8

    .line 242
    const/4 v5, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/util/List;JII)Lcn/jpush/a/c;

    move-result-object v0

    goto :goto_5

    .line 243
    :cond_8
    if-ne v6, v12, :cond_4

    .line 244
    invoke-static {p0, v11, v2, v3, v4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;JI)Lcn/jpush/a/c;

    move-result-object v0

    goto :goto_5

    .line 252
    :cond_9
    const-string v1, "TagAliasHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v6, v10, :cond_a

    const-string v0, "tag"

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is operatoring, please wait last operator complete"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-ne v6, v10, :cond_b

    sget v0, Lcn/jpush/android/api/JPushInterface$a;->v:I

    :goto_7
    invoke-static {p0, v6, v0, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    goto/16 :goto_4

    .line 252
    :cond_a
    const-string v0, "alias"

    goto :goto_6

    .line 253
    :cond_b
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->w:I

    goto :goto_7
.end method

.method protected static a(Landroid/content/Context;Lcn/jpush/a/c;)V
    .locals 3

    .prologue
    .line 266
    const-string v0, "TagAliasHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tagalias:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p1, :cond_0

    .line 268
    invoke-static {p0}, Lcn/jpush/android/a/e;->a(Landroid/content/Context;)Lcn/jpush/android/a/e;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-virtual {v0, p1, v1}, Lcn/jpush/android/a/e;->a(Lcn/jiguang/api/JRequest;I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v0, "TagAliasHelper"

    const-string v1, "tagaliasRequest was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 144
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    new-instance v0, Lcn/jpush/android/api/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcn/jpush/android/api/a;-><init>(Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;JII)V

    invoke-static {p0, p1, p2, v0}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V

    .line 146
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/a;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getNextRid()J

    move-result-wide v6

    .line 69
    if-eqz p3, :cond_0

    .line 70
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v2, p0, v3, v0}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;Ljava/lang/Long;Lcn/jpush/android/api/a;)V

    .line 72
    :cond_0
    const-string v2, "TagAliasHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tag alias rid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v3

    sget v5, Lcn/jpush/android/api/JPushInterface$a;->m:I

    move-object v4, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;IJLcn/jpush/android/api/a;)V

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_1
    instance-of v2, p0, Landroid/app/Application;

    if-nez v2, :cond_4

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 83
    :goto_1
    invoke-static {v4}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v3

    sget v5, Lcn/jpush/android/api/JPushInterface$a;->j:I

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;IJLcn/jpush/android/api/a;)V

    goto :goto_0

    .line 88
    :cond_2
    move-object/from16 v0, p3

    iget v2, v0, Lcn/jpush/android/api/a;->e:I

    if-nez v2, :cond_3

    .line 89
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;)V

    :cond_3
    move-object v9, v4

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide v12, v6

    move-object/from16 v14, p3

    .line 91
    invoke-static/range {v9 .. v14}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;JLcn/jpush/android/api/a;)V

    goto :goto_0

    :cond_4
    move-object v4, p0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;J)Z
    .locals 5

    .prologue
    .line 301
    invoke-static {p2}, Lcn/jpush/android/d/g;->b(Ljava/lang/String;)I

    move-result v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    const-string v1, "TagAliasHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid alias: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", will not set alias this time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p0, p1, v0, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILjava/util/Set;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p2}, Lcn/jpush/android/d/g;->a(Ljava/util/Set;)I

    move-result v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    const-string v1, "TagAliasHelper"

    const-string v2, "Invalid tags, will not set tags this time."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0, p1, v0, p3, p4}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    if-nez p0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, ""

    goto :goto_0

    .line 122
    :cond_2
    const/4 v1, 0x0

    .line 123
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lcn/jpush/android/d/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    if-nez v2, :cond_3

    move-object v2, v0

    .line 130
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 131
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move v1, v0

    .line 136
    goto :goto_1

    .line 128
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 134
    :cond_4
    const-string v4, "TagAliasHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid tag: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;JI)Z
    .locals 10

    .prologue
    const/16 v5, 0x1b58

    const/16 v4, 0x1388

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    if-eqz p1, :cond_5

    const-string v0, ","

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_0

    move v0, v1

    .line 1162
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x0

    .line 1163
    :goto_1
    const-string v6, "TagAliasHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tags length:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    if-eqz v0, :cond_2

    if-gt v3, v4, :cond_1

    move v0, v1

    .line 325
    :goto_2
    if-nez v0, :cond_5

    .line 326
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->i:I

    invoke-static {p0, p4, v0, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 327
    const-string v1, "TagAliasHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "The length of tags should be less than "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_4

    move v0, v4

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_4
    return v2

    :cond_0
    move v0, v2

    .line 325
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1164
    goto :goto_2

    :cond_2
    if-gt v3, v5, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v5

    .line 327
    goto :goto_3

    :cond_5
    move v2, v1

    .line 330
    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_1
.end method
