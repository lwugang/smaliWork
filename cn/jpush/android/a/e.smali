.class public final Lcn/jpush/android/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcn/jpush/android/a/e;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/a/e;->b:Lcn/jpush/android/a/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/a/e;->a:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcn/jpush/android/a/e;->a:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcn/jpush/android/a/e;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcn/jpush/android/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jpush/android/a/e;->b:Lcn/jpush/android/a/e;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcn/jpush/android/a/e;

    invoke-direct {v0, p0}, Lcn/jpush/android/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jpush/android/a/e;->b:Lcn/jpush/android/a/e;

    .line 39
    :cond_0
    sget-object v0, Lcn/jpush/android/a/e;->b:Lcn/jpush/android/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 71
    :try_start_0
    const-string v0, "JPushRequestHelper"

    const-string v1, "Action - onTagaliasTimeout"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcn/jpush/android/a/l;->a()Lcn/jpush/android/a/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/a/l;->a(J)I

    move-result v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    sget-object v2, Lcn/jpush/android/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, p0, Lcn/jpush/android/a/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string v0, "cn.jpush.android.intent.TAG_ALIAS_TIMEOUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :goto_0
    const-string v0, "tagalias_errorcode"

    sget v2, Lcn/jpush/android/api/JPushInterface$a;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v0, "tagalias_seqid"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcn/jpush/android/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    :goto_1
    return-void

    .line 79
    :cond_0
    const-string v2, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    if-ne v0, v3, :cond_1

    .line 81
    const-string v0, "message_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "JPushRequestHelper"

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

    goto :goto_1

    .line 84
    :cond_1
    :try_start_1
    const-string v0, "message_type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Lcn/jiguang/api/JRequest;I)V
    .locals 13

    .prologue
    const/16 v12, 0x4e20

    const/4 v11, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 44
    const-string v0, "JPushRequestHelper"

    const-string v1, "sendRequest failed,request is null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "JPushRequestHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - sendJPushRequest, timeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "JPushRequestHelper"

    invoke-virtual {p1}, Lcn/jiguang/api/JRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcn/jiguang/api/JRequest;->getRid()Ljava/lang/Long;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcn/jiguang/api/JRequest;->getCommand()I

    move-result v1

    .line 53
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getUid()J

    move-result-wide v2

    .line 54
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getSid()I

    move-result v4

    .line 56
    const-string v5, "JPushRequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request params - cmd:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", juid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",rid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sparse-switch v1, :sswitch_data_0

    .line 65
    const-string v0, "JPushRequestHelper"

    const-string v1, "Unprocessed request yet."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcn/jiguang/api/JRequest;->getVersion()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {p1}, Lcn/jiguang/api/JRequest;->getCommand()I

    move-result v7

    int-to-short v7, v7

    check-cast p1, Lcn/jpush/a/c;

    invoke-virtual {p1}, Lcn/jpush/a/c;->a()Ljava/lang/String;

    move-result-object v8

    .line 1033
    new-instance v9, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v10, 0x5000

    invoke-direct {v9, v10}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    .line 1034
    invoke-virtual {v9, v11}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    .line 1035
    invoke-virtual {v9, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 1036
    invoke-virtual {v9, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    .line 1037
    invoke-virtual {v9, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 1038
    int-to-long v0, v4

    invoke-virtual {v9, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    .line 1039
    invoke-virtual {v9, v2, v3}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    .line 1040
    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 1041
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    .line 1043
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    .line 1045
    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v0

    invoke-virtual {v9, v0, v11}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    .line 1046
    invoke-virtual {v9}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcn/jpush/android/a/e;->a:Landroid/content/Context;

    sget-object v2, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v12, v0}, Lcn/jiguang/api/JCoreInterface;->sendRequestData(Landroid/content/Context;Ljava/lang/String;I[B)V

    goto/16 :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method
