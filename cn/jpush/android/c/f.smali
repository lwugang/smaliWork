.class public Lcn/jpush/android/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/c/f$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcn/jpush/android/c/f;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcn/jpush/android/c/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private a(J)Lcn/jpush/android/c/f$a;
    .locals 7

    .prologue
    .line 123
    iget-object v0, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/c/f$a;

    iget-wide v4, v1, Lcn/jpush/android/c/f$a;->c:J

    cmp-long v1, v4, p1

    if-nez v1, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/c/f$a;

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_1
    const-string v0, "PluginPlatformRidUpdate"

    const-string v1, "can not find uploadBean by rid"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcn/jpush/android/c/f;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcn/jpush/android/c/f;->b:Lcn/jpush/android/c/f;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcn/jpush/android/c/f;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcn/jpush/android/c/f;->b:Lcn/jpush/android/c/f;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/jpush/android/c/f;

    invoke-direct {v0}, Lcn/jpush/android/c/f;-><init>()V

    sput-object v0, Lcn/jpush/android/c/f;->b:Lcn/jpush/android/c/f;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcn/jpush/android/c/f;->b:Lcn/jpush/android/c/f;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcn/jpush/android/c/f$a;)V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/jpush/android/a;->a:Ljava/lang/String;

    const/16 v1, 0x2710

    iget-object v2, p2, Lcn/jpush/android/c/f$a;->d:[B

    invoke-static {p1, v0, v1, v2}, Lcn/jiguang/api/JCoreInterface;->sendRequestData(Landroid/content/Context;Ljava/lang/String;I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 140
    invoke-direct {p0, p2, p3}, Lcn/jpush/android/c/f;->a(J)Lcn/jpush/android/c/f$a;

    move-result-object v0

    .line 141
    const-string v1, "PluginPlatformRidUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpdateRidSuccess rid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,pluginPlatformRegIDBean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget-byte v1, v0, Lcn/jpush/android/c/f$a;->a:B

    iget-object v2, v0, Lcn/jpush/android/c/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 144
    iget-byte v1, v0, Lcn/jpush/android/c/f$a;->a:B

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    .line 146
    iget-object v1, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    iget-byte v0, v0, Lcn/jpush/android/c/f$a;->a:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;JI)V
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0, p2, p3}, Lcn/jpush/android/c/f;->a(J)Lcn/jpush/android/c/f$a;

    move-result-object v0

    .line 110
    const-string v1, "PluginPlatformRidUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpdateRidFailed rid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,pluginPlatformRegIDBean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget v1, v0, Lcn/jpush/android/c/f$a;->e:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 113
    iget v1, v0, Lcn/jpush/android/c/f$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/jpush/android/c/f$a;->e:I

    .line 114
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;Lcn/jpush/android/c/f$a;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v1, "PluginPlatformRidUpdate"

    const-string v2, "updateRegId failed"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    iget-byte v0, v0, Lcn/jpush/android/c/f$a;->a:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    const-string v0, "plugin.platform.type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->isTcpConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "PluginPlatformRidUpdate"

    const-string v1, "tcp disconnected"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    const-string v0, "plugin.platform.regid "

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    iget-object v0, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/c/f$a;

    iget-object v0, v0, Lcn/jpush/android/c/f$a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "PluginPlatformRidUpdate"

    const-string v1, "same regid request, drop it"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_1
    :try_start_2
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getNextRid()J

    move-result-wide v4

    .line 86
    const-string v0, "PluginPlatformRidUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "sendUpdateRidInfo regid:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",rid:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getUid()J

    move-result-wide v0

    .line 1073
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getSid()I

    move-result v6

    .line 1074
    new-instance v7, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v8, 0x5000

    invoke-direct {v7, v8}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    .line 1075
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    .line 1076
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 1077
    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 1078
    invoke-virtual {v7, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 1079
    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    .line 1080
    invoke-virtual {v7, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 1082
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v7, v0}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    .line 1083
    invoke-virtual {v7, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 1084
    invoke-virtual {v7}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    .line 1085
    invoke-virtual {v7}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v6

    .line 89
    new-instance v0, Lcn/jpush/android/c/f$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcn/jpush/android/c/f$a;-><init>(Lcn/jpush/android/c/f;BLjava/lang/String;J[B)V

    .line 90
    iget-object v1, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;Lcn/jpush/android/c/f$a;)V

    goto/16 :goto_0

    .line 1082
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_3
    const-string v0, "PluginPlatformRidUpdate"

    const-string v1, "unknown plugin platform type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final b(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 151
    invoke-direct {p0, p2, p3}, Lcn/jpush/android/c/f;->a(J)Lcn/jpush/android/c/f$a;

    move-result-object v0

    .line 152
    const-string v1, "PluginPlatformRidUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpdateRidTimeout rid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,pluginPlatformRegIDBean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget v1, v0, Lcn/jpush/android/c/f$a;->e:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 155
    iget v1, v0, Lcn/jpush/android/c/f$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/jpush/android/c/f$a;->e:I

    .line 156
    invoke-direct {p0, p1, v0}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;Lcn/jpush/android/c/f$a;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v1, "PluginPlatformRidUpdate"

    const-string v2, "updateRegId failed by timeout"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcn/jpush/android/c/f;->a:Ljava/util/Map;

    iget-byte v0, v0, Lcn/jpush/android/c/f$a;->a:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
