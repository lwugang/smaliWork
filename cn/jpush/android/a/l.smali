.class public final Lcn/jpush/android/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/a/l$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcn/jpush/android/a/l;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/jpush/android/a/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/a/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 309
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcn/jpush/android/a/l$a;)Lcn/jpush/android/a/l$a;
    .locals 4

    .prologue
    .line 163
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onUpdateCacheNode,responseJson:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tagAliasCacheNode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez p1, :cond_1

    .line 165
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "tagAliasCacheNode was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 p1, 0x0

    .line 192
    :cond_0
    :goto_0
    return-object p1

    .line 168
    :cond_1
    const-string v0, "op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string v1, "get"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget v0, p1, Lcn/jpush/android/a/l$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 172
    :try_start_0
    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 176
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p1, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse tag list failed - error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_3
    const-string v0, "alias"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iput-object v0, p1, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a()Lcn/jpush/android/a/l;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    if-nez v0, :cond_1

    .line 45
    sget-object v1, Lcn/jpush/android/a/l;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcn/jpush/android/a/l;

    invoke-direct {v0}, Lcn/jpush/android/a/l;-><init>()V

    sput-object v0, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcn/jpush/android/a/l;->a:Lcn/jpush/android/a/l;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static a(Landroid/content/Context;IJ)Z
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v10, -0x1

    .line 301
    if-eq p1, v4, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 3228
    :cond_0
    const-string v0, "TAFreezeEndTime"

    invoke-static {p0, v0, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3229
    const-wide/16 v6, 0x708

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    move-wide v0, v2

    .line 3232
    :cond_1
    const-string v6, "TAFreezeSetTime"

    invoke-static {p0, v6, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 3234
    cmp-long v8, v0, v10

    if-eqz v8, :cond_2

    cmp-long v8, v6, v10

    if-nez v8, :cond_3

    :cond_2
    move v0, v5

    .line 301
    :goto_0
    if-eqz v0, :cond_6

    .line 302
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "tag/alias action was freezed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->u:I

    invoke-static {p0, p1, v0, p2, p3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    move v0, v4

    .line 306
    :goto_1
    return v0

    .line 3241
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long v2, v8, v2

    if-ltz v2, :cond_4

    .line 3242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-lez v0, :cond_5

    .line 3243
    :cond_4
    const-string v0, "TAFreezeSetTime"

    invoke-static {p0, v0, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3244
    const-string v0, "TAFreezeEndTime"

    invoke-static {p0, v0, v10, v11}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3245
    const-string v0, "JPushCommon"

    const-string v1, "incorrect timestamp"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 3246
    goto :goto_0

    :cond_5
    move v0, v5

    .line 3248
    goto :goto_0

    :cond_6
    move v0, v5

    .line 306
    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcn/jpush/android/a/l$a;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 242
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onSendAgain, tagAliasCacheNode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-nez p2, :cond_0

    .line 244
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "onSendAgain - tagAliasCacheNode was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 270
    :goto_0
    return v0

    .line 248
    :cond_0
    iget v0, p2, Lcn/jpush/android/a/l$a;->a:I

    if-ne v0, v7, :cond_1

    .line 249
    iget-object v1, p2, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    iget-wide v2, p2, Lcn/jpush/android/a/l$a;->c:J

    iget v4, p2, Lcn/jpush/android/a/l$a;->b:I

    iget v5, p2, Lcn/jpush/android/a/l$a;->g:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/util/List;JII)Lcn/jpush/a/c;

    move-result-object v0

    .line 257
    :goto_1
    if-eqz v0, :cond_4

    .line 258
    iget v1, p2, Lcn/jpush/android/a/l$a;->h:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_3

    .line 259
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p2, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v0, p2, Lcn/jpush/android/a/l$a;->a:I

    sget v1, Lcn/jpush/android/api/JPushInterface$a;->o:I

    iget-wide v2, p2, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {p1, v0, v1, v2, v3}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;IIJ)V

    .line 261
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "same tag/alias request times greate than 200"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v7

    .line 268
    goto :goto_0

    .line 251
    :cond_1
    iget v0, p2, Lcn/jpush/android/a/l$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 252
    iget-object v0, p2, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    iget-wide v2, p2, Lcn/jpush/android/a/l$a;->c:J

    iget v1, p2, Lcn/jpush/android/a/l$a;->a:I

    invoke-static {p1, v0, v2, v3, v1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;JI)Lcn/jpush/a/c;

    move-result-object v0

    goto :goto_1

    .line 254
    :cond_2
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "unsupport proto type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 255
    goto :goto_0

    .line 263
    :cond_3
    invoke-static {p1, v0}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Lcn/jpush/a/c;)V

    .line 264
    iget v0, p2, Lcn/jpush/android/a/l$a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcn/jpush/android/a/l$a;->h:I

    .line 265
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p2, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "send request success"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v6

    .line 270
    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    .prologue
    .line 198
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onTagAliasTimeOut :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/l$a;

    .line 200
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTagAliasTimeOut,removed cachenode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget v0, v0, Lcn/jpush/android/a/l$a;->a:I

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;JILorg/json/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 79
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - onTagAliasResponse, seqID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/l$a;

    .line 81
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tagAliasCacheNode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    if-nez v0, :cond_1

    .line 94
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "tagAliasCacheNode was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return-object p6

    .line 1223
    :cond_1
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action - CheckAndSendAgain, errorCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",tagAliasCacheNode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 v1, 0x1

    if-ne p4, v1, :cond_3

    iget v1, v0, Lcn/jpush/android/a/l$a;->h:I

    if-nez v1, :cond_3

    .line 1226
    iget v1, v0, Lcn/jpush/android/a/l$a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/jpush/android/a/l$a;->h:I

    .line 1227
    iget v1, v0, Lcn/jpush/android/a/l$a;->a:I

    iget-wide v2, v0, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {p1, v1, v2, v3}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;IJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1228
    const/4 v1, 0x1

    .line 98
    :goto_1
    if-eqz v1, :cond_4

    .line 99
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "retry action was sended"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 p6, 0x0

    goto :goto_0

    .line 1230
    :cond_2
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Lcn/jpush/android/a/l$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1231
    const/4 v1, 0x1

    goto :goto_1

    .line 1234
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 103
    :cond_4
    if-eqz p4, :cond_9

    .line 105
    const/16 v1, 0x64

    if-ne p4, v1, :cond_5

    .line 106
    const-string v1, "wait"

    const-wide/16 v2, -0x1

    invoke-virtual {p5, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 107
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set tag/alias action will freeze "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 2213
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_7

    .line 2214
    const-string v1, "JPushCommon"

    const-string v2, "freeze end time was incorrect!"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_5
    :goto_2
    iget v0, v0, Lcn/jpush/android/a/l$a;->a:I

    .line 2274
    if-eqz v0, :cond_6

    .line 2277
    sparse-switch p4, :sswitch_data_0

    .line 113
    :cond_6
    :goto_3
    :sswitch_0
    const-string v0, "tagalias_errorcode"

    invoke-virtual {p6, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v0, "TagAliasNewProtoRetryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mapped errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2217
    :cond_7
    const-wide/16 v4, 0x708

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    .line 2218
    const-string v1, "JPushCommon"

    const-string v2, "freeze end time was greate than half an hour"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    const-wide/16 v2, 0x708

    .line 2221
    :cond_8
    const-string v1, "TAFreezeSetTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1, v1, v4, v5}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2222
    const-string v1, "TAFreezeEndTime"

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {p1, v1, v2, v3}, Lcn/jiguang/api/MultiSpHelper;->commitLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_2

    .line 2282
    :sswitch_1
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->o:I

    goto :goto_3

    .line 2284
    :sswitch_2
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->p:I

    goto :goto_3

    .line 2286
    :sswitch_3
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->q:I

    goto :goto_3

    .line 2288
    :sswitch_4
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->r:I

    goto :goto_3

    .line 2290
    :sswitch_5
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->s:I

    goto :goto_3

    .line 2293
    :sswitch_6
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->t:I

    goto :goto_3

    .line 2295
    :sswitch_7
    sget p4, Lcn/jpush/android/api/JPushInterface$a;->u:I

    goto :goto_3

    .line 118
    :cond_9
    const/4 v1, 0x0

    iput v1, v0, Lcn/jpush/android/a/l$a;->h:I

    .line 120
    iget v1, v0, Lcn/jpush/android/a/l$a;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    .line 121
    const-string v1, "total"

    const/4 v2, -0x1

    invoke-virtual {p5, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/jpush/android/a/l$a;->f:I

    .line 122
    const-string v1, "curr"

    const/4 v2, -0x1

    invoke-virtual {p5, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcn/jpush/android/a/l$a;->g:I

    .line 123
    invoke-static {p5, v0}, Lcn/jpush/android/a/l;->a(Lorg/json/JSONObject;Lcn/jpush/android/a/l$a;)Lcn/jpush/android/a/l$a;

    .line 3208
    :cond_a
    if-nez v0, :cond_b

    .line 3209
    const-string v1, "TagAliasNewProtoRetryHelper"

    const-string v2, "tagAlias cache was null"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const/4 v1, 0x0

    .line 126
    :goto_4
    if-eqz v1, :cond_e

    .line 127
    iget v1, v0, Lcn/jpush/android/a/l$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/jpush/android/a/l$a;->g:I

    .line 128
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load next page, currpage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcn/jpush/android/a/l$a;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",totalPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcn/jpush/android/a/l$a;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget v1, v0, Lcn/jpush/android/a/l$a;->a:I

    iget-wide v2, v0, Lcn/jpush/android/a/l$a;->c:J

    invoke-static {p1, v1, v2, v3}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;IJ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 130
    const/4 p6, 0x0

    goto/16 :goto_0

    .line 3212
    :cond_b
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action - onTagAliasResponse, tagAliasCacheNode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    iget v1, v0, Lcn/jpush/android/a/l$a;->g:I

    iget v2, v0, Lcn/jpush/android/a/l$a;->f:I

    if-lt v1, v2, :cond_c

    .line 3214
    const-string v1, "TagAliasNewProtoRetryHelper"

    const-string v2, "all tags info was loaded"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const/4 v1, 0x0

    goto :goto_4

    .line 3217
    :cond_c
    const/4 v1, 0x1

    goto :goto_4

    .line 132
    :cond_d
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/a/l;->a(Landroid/content/Context;Lcn/jpush/android/a/l$a;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "get next page request was sended"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 p6, 0x0

    goto/16 :goto_0

    .line 138
    :cond_e
    iget v1, v0, Lcn/jpush/android/a/l$a;->b:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    .line 139
    iget v1, v0, Lcn/jpush/android/a/l$a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 140
    iget-object v1, v0, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    const-string v1, "tags"

    iget-object v0, v0, Lcn/jpush/android/a/l$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p6, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 143
    :cond_f
    iget v1, v0, Lcn/jpush/android/a/l$a;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v1, v0, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "alias"

    iget-object v0, v0, Lcn/jpush/android/a/l$a;->e:Ljava/lang/String;

    invoke-virtual {p6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 148
    :cond_10
    iget v1, v0, Lcn/jpush/android/a/l$a;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 149
    iget v0, v0, Lcn/jpush/android/a/l$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 150
    const-string v0, "validated"

    const-string v1, "validated"

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 152
    :cond_11
    const-string v0, "TagAliasNewProtoRetryHelper"

    const-string v1, "unsupport  proto type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2277
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(IIJLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcn/jpush/android/a/l$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/jpush/android/a/l$a;-><init>(Lcn/jpush/android/a/l;IIJLjava/util/ArrayList;Ljava/lang/String;)V

    .line 59
    const-string v1, "TagAliasNewProtoRetryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action - createNewCacheNode, tagAliasCacheNode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcn/jpush/android/a/l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/a/l$a;

    .line 66
    if-eqz v0, :cond_0

    iget v0, v0, Lcn/jpush/android/a/l$a;->a:I

    if-ne v0, p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
