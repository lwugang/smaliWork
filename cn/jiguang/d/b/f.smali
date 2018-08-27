.class public final Lcn/jiguang/d/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicLong;

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private volatile e:Z

.field private f:Z

.field private g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jiguang/d/b/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/d/b/f;->e:Z

    iput-object p1, p0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/d/b/f;->f:Z

    return-void
.end method

.method private a(I)Z
    .locals 28

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/jiguang/d/b/f;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    if-gtz p1, :cond_1

    const-string v2, "NetworkingClient"

    const-string v3, "login error,retry login too many times"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "NetworkingClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loginTimes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/g/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v4

    iget-object v4, v4, Lcn/jiguang/d/g/b;->a:Ljava/lang/String;

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/d/g/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v6

    invoke-virtual {v6}, Lcn/jiguang/d/g/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jiguang/d/d/e;->c()S

    move-result v7

    const-string v8, "ConnectingHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Register with: key:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apkVersion:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", clientInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", extKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",reg business:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/a/a;->h()J

    move-result-wide v8

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v10}, Lcn/jiguang/d/g/a/a;->a(I)V

    new-instance v11, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v12, 0x5000

    invoke-direct {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v11, v8, v9}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    int-to-long v8, v10

    invoke-virtual {v11, v8, v9}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    const-wide/16 v8, 0x0

    invoke-virtual {v11, v8, v9}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v11, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/d/e;->d()S

    invoke-virtual {v11, v7}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v11}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual {v11}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcn/jiguang/d/e/a/a/b;->a([BI)[B

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_c

    invoke-static {}, Lcn/jiguang/d/a/a;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "NetworkingClient"

    const-string v3, "Registe failed, stop the service!"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcn/jiguang/d/b/f;->f()V

    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/jiguang/d/f/a;->a([B)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v2

    const/16 v4, 0x4e20

    invoke-virtual {v2, v4}, Lcn/jiguang/d/f/a;->a(I)Lcn/jiguang/d/f/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->a()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "ConnectingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Register failed - recv msg failed with error code:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/d/e/a/a/a;->a([B)Lcn/jiguang/api/JResponse;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "ConnectingHelper"

    const-string v3, "Register failed - unknown command"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_6
    const-string v4, "ConnectingHelper"

    invoke-virtual {v2}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/jiguang/api/JResponse;->getCommand()I

    move-result v4

    if-eqz v4, :cond_7

    const-string v2, "ConnectingHelper"

    const-string v3, "Register failed - it is not register response."

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    check-cast v2, Lcn/jiguang/d/e/a/e;

    iget v4, v2, Lcn/jiguang/d/e/a/e;->code:I

    invoke-static {v3, v4}, Lcn/jiguang/d/a/a;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/jiguang/d/b/d;->b(I)V

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/e;->getJuid()J

    move-result-wide v4

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/e;->c()Ljava/lang/String;

    move-result-object v8

    const-string v2, "ConnectingHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Register succeed - juid:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", registrationId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deviceId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ConnectingHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "password:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v10, 0x0

    cmp-long v2, v10, v4

    if-nez v2, :cond_9

    :cond_8
    const-string v2, "ConnectingHelper"

    const-string v3, "Unexpected: registrationId/juid should not be empty. "

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-static {v3, v8}, Lcn/jiguang/g/a;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static/range {v3 .. v8}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cn.jpush.android.intent.REGISTRATION"

    const-string v4, "cn.jpush.android.REGISTRATION_ID"

    invoke-static {v3, v2, v4, v7}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x1

    invoke-static {v3, v4, v2}, Lcn/jiguang/d/d/c;->a(Landroid/content/Context;IZ)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_b
    const-string v2, "NetworkingClient"

    const-string v3, "Registe failed, close the connection!"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jiguang/a/a/c/b;->b(Landroid/content/Context;Lcn/jiguang/d/g/b;)V

    invoke-static {}, Lcn/jiguang/d/a/a;->l()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "ConnectingHelper"

    const-string v3, "Action: restoreRtcWhenRegisterSucceed"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/a/a;->j()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/16 v3, 0x407

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "NetworkingClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/d/h/f;->b()Lcn/jiguang/d/h/e;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcn/jiguang/d/h/e;->b(J)V

    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    const/4 v9, 0x0

    invoke-static {v10}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v10}, Lcn/jiguang/d/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/g/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, ""

    :cond_10
    invoke-static {v10}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    sget-object v7, Lcn/jiguang/api/SdkType;->JCORE:Lcn/jiguang/api/SdkType;

    invoke-virtual {v7}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcn/jiguang/d/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v7}, Lcn/jiguang/g/a;->c(Ljava/lang/String;)I

    move-result v3

    :cond_11
    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    sget-object v7, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v7}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcn/jiguang/d/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v7}, Lcn/jiguang/g/a;->c(Ljava/lang/String;)I

    move-result v4

    :cond_12
    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    sget-object v7, Lcn/jiguang/api/SdkType;->JSHARE:Lcn/jiguang/api/SdkType;

    invoke-virtual {v7}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcn/jiguang/d/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {v7}, Lcn/jiguang/g/a;->c(Ljava/lang/String;)I

    move-result v5

    :cond_13
    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    sget-object v7, Lcn/jiguang/api/SdkType;->JPUSH:Lcn/jiguang/api/SdkType;

    invoke-virtual {v7}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Lcn/jiguang/d/d/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {v7}, Lcn/jiguang/g/a;->c(Ljava/lang/String;)I

    move-result v6

    :cond_14
    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    invoke-static {v10}, Lcn/jiguang/d/g/b;->c(Landroid/content/Context;)B

    move-result v14

    const-string v7, "ConnectingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "Login with - juid:"

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", appKey:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", sdkVersion:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", pushVersion:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", analyticsVersion:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, " ,shareVersion:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ", pluginPlatformType:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jiguang/d/d/e;->d()S

    move-result v15

    invoke-static {v10}, Lcn/jiguang/g/m;->a(Landroid/content/Context;)I

    move-result v18

    invoke-static {v10}, Lcn/jiguang/g/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v10}, Lcn/jiguang/a/a/b/f;->a(Landroid/content/Context;)Lcn/jiguang/a/a/b/e;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcn/jiguang/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-static {v10}, Lcn/jiguang/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/jiguang/g/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_17

    const-string v8, ""

    :goto_6
    const-string v20, "ConnectingHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "login - juid:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", flag:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " netType:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " deviceId:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " locInfo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " countryCode:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/a/a;->h()J

    move-result-wide v20

    int-to-long v0, v3

    move-wide/from16 v22, v0

    int-to-long v0, v6

    move-wide/from16 v24, v0

    int-to-long v0, v4

    move-wide/from16 v26, v0

    int-to-long v4, v5

    new-instance v3, Lcn/jiguang/api/utils/OutputDataUtil;

    const/16 v6, 0x5000

    invoke-direct {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v3, v12, v13}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU64(J)V

    const/16 v6, 0x61

    invoke-virtual {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v3, v4, v5}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU32(J)V

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v3, v15}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual {v3, v14}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU8(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/jiguang/api/utils/OutputDataUtil;->writeByteArrayincludeLength([B)V

    invoke-virtual {v3}, Lcn/jiguang/api/utils/OutputDataUtil;->current()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcn/jiguang/api/utils/OutputDataUtil;->writeU16At(II)V

    invoke-virtual {v3}, Lcn/jiguang/api/utils/OutputDataUtil;->toByteArray()[B

    move-result-object v2

    const-string v3, "ConnectingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pluginPlatformType:0b"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v5, v14, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/jiguang/d/e/a/a/b;->a([BI)[B

    move-result-object v2

    if-eqz v2, :cond_15

    array-length v3, v2

    if-gtz v3, :cond_18

    :cond_15
    const/4 v2, -0x1

    :goto_7
    if-gez v2, :cond_1f

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_16
    const-string v7, ""

    goto/16 :goto_5

    :cond_17
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    :cond_18
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/jiguang/d/f/a;->a([B)I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, -0x1

    goto :goto_7

    :cond_19
    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Lcn/jiguang/d/f/a;->a(I)Lcn/jiguang/d/f/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->a()I

    move-result v3

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->a()I

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "ConnectingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Login failed - recv msg failed wit error code:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    const/4 v2, 0x1

    invoke-static {v10, v3, v4, v5, v2}, Lcn/jiguang/d/g/e;->a(Landroid/content/Context;IJI)V

    const/4 v2, -0x1

    goto :goto_7

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcn/jiguang/d/f/e;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/d/e/a/a/a;->a([B)Lcn/jiguang/api/JResponse;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string v2, "ConnectingHelper"

    const-string v6, "Login failed - unknown command"

    invoke-static {v2, v6}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v4, v4, v16

    const/4 v2, 0x1

    invoke-static {v10, v3, v4, v5, v2}, Lcn/jiguang/d/g/e;->a(Landroid/content/Context;IJI)V

    const/4 v2, -0x1

    goto/16 :goto_7

    :cond_1b
    instance-of v6, v2, Lcn/jiguang/d/e/a/d;

    if-nez v6, :cond_1c

    const-string v2, "ConnectingHelper"

    const-string v6, "Login failed - it is not LoginResponse"

    invoke-static {v2, v6}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v4, v4, v16

    const/4 v2, 0x1

    invoke-static {v10, v3, v4, v5, v2}, Lcn/jiguang/d/g/e;->a(Landroid/content/Context;IJI)V

    const/4 v2, -0x1

    goto/16 :goto_7

    :cond_1c
    check-cast v2, Lcn/jiguang/d/e/a/d;

    const-string v3, "ConnectingHelper"

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/d;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v2, Lcn/jiguang/d/e/a/d;->code:I

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcn/jiguang/d/b/d;->a(I)V

    if-nez v3, :cond_1d

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/d;->getSid()I

    move-result v6

    invoke-virtual {v2}, Lcn/jiguang/d/e/a/d;->a()I

    move-result v2

    int-to-long v12, v2

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v10, v6}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;I)V

    invoke-static {v12, v13}, Lcn/jiguang/d/a/a;->b(J)V

    const-string v2, "ConnectingHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login succeed - sid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverTime;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v12, v13}, Lcn/jiguang/d/d/c;->a(Landroid/content/Context;J)V

    move v2, v9

    :goto_8
    sub-long v4, v4, v16

    invoke-static {v10, v3, v4, v5, v2}, Lcn/jiguang/d/g/e;->a(Landroid/content/Context;IJI)V

    move v2, v3

    goto/16 :goto_7

    :cond_1d
    const/4 v2, 0x1

    const/16 v6, 0x2710

    if-ne v3, v6, :cond_1e

    const-string v6, "ConnectingHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login failed with Local error - code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    const-string v6, "ConnectingHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Login failed with server error - code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcn/jiguang/g/i;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1f
    if-lez v2, :cond_23

    sget-object v3, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-string v3, "NetworkingClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Action - onLoginFailed - respCode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/16 v6, 0x1c8a

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcn/jiguang/d/d/c;->a(Landroid/os/Message;J)V

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/g/a;->m(Landroid/content/Context;)V

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x66

    if-ne v2, v3, :cond_22

    invoke-static {}, Lcn/jiguang/d/a/a;->k()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/16 v3, 0x3eb

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_21
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_22
    const/16 v3, 0x3f4

    if-ne v2, v3, :cond_21

    invoke-static {}, Lcn/jiguang/d/a/a;->c()V

    goto :goto_9

    :cond_23
    const-wide/16 v2, 0x0

    sget-object v4, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-string v4, "NetworkingClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Action - onLoggedIn - connection:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/16 v5, 0x1c88

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcn/jiguang/d/d/c;->a(Landroid/os/Message;J)V

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/jiguang/d/d/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "NetworkingClient"

    const-string v3, "need not keep tcp connect,will close connection"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_24
    const-string v2, "NetworkingClient"

    const-string v3, "mConnection is reset to 0 when state between login and onLoggedOn. Exit directly."

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_25
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x0

    invoke-static {}, Lcn/jiguang/d/g/b;->d()Lcn/jiguang/d/g/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/jiguang/d/g/b;->a(Landroid/content/Context;)V

    :try_start_0
    sget-object v1, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const-string v1, "NetworkingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created connection - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcn/jiguang/d/b/a/a/f;

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {v1, p1, p0, v2, v3}, Lcn/jiguang/d/b/a/a/f;-><init>(Landroid/content/Context;Lcn/jiguang/d/b/f;J)V

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/a/f;->b()I

    move-result v2

    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_0

    const-string v2, "NetworkingClient"

    const-string v3, "unexpected! PushProtocol.Stop"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcn/jiguang/d/b/a/a/f;->a()V

    invoke-direct {p0}, Lcn/jiguang/d/b/f;->f()V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "NetworkingClient"

    const-string v3, "\u957f\u8fde\u63a5\u5931\u8d25, jpush.so\u52a0\u8f7d\u5f02\u5e38"

    invoke-static {v2, v3, v1}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcn/jiguang/d/b/f;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/a/f;->a()V

    invoke-direct {p0}, Lcn/jiguang/d/b/f;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/jiguang/d/b/a/a/f;->a()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-string v0, "NetworkingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - closeConnection - connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcn/jiguang/d/b/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/f/a;->a()V

    sget-object v0, Lcn/jiguang/d/b/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v4, p0, Lcn/jiguang/d/b/f;->f:Z

    invoke-static {}, Lcn/jiguang/d/d/e;->a()Lcn/jiguang/d/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/d/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/f;->d:Landroid/os/Handler;

    const/16 v1, 0x1c85

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/jiguang/d/d/c;->a(Landroid/os/Message;J)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NetworkingClient"

    const-string v2, "Close connection error"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "NetworkingClient"

    const-string v1, "Unexpected - No connection to close. "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "NetworkingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action - tryStop - connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/d/b/f;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/d/b/f;->f:Z

    sget-object v0, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/f/a;->a()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/jiguang/d/b/f;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/b/f;->g:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/d/b/f;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "NetworkingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute networkingClient exception :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/d/b/f;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/jiguang/d/b/f;->a()V

    invoke-static {}, Lcn/jiguang/d/g/g;->a()Lcn/jiguang/d/g/g;

    iget-object v0, p0, Lcn/jiguang/d/b/f;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcn/jiguang/d/g/g;->a(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/b/f;->e:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/b/f;->f:Z

    return v0
.end method

.method public final run()V
    .locals 6

    const-string v0, "NetworkingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Begin to run in ConnectingThread - id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/jiguang/d/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NetworkingClient"

    const-string v1, "prepare Push Channel failed , returned"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/jiguang/d/b/f;->e:Z

    if-nez v0, :cond_1

    const-string v0, "NetworkingClient"

    const-string v1, "Network listening..."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/f/d;->a()Lcn/jiguang/d/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/f/d;->b()Lcn/jiguang/d/f/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jiguang/d/f/a;->a(I)Lcn/jiguang/d/f/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/jiguang/d/f/e;->a()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "NetworkingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " recv failed with error code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/d/f/e;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/jiguang/d/f/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",No Break!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcn/jiguang/d/b/f;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "NetworkingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Break receiving by wantStop - connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcn/jiguang/d/b/f;->f()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcn/jiguang/d/f/e;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcn/jiguang/d/b/f;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lcn/jiguang/d/e/a/a/a;->a(Landroid/content/Context;[B)Z

    const-string v1, "NetworkingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received bytes - len:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", connection:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jiguang/d/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object v2, Lcn/jiguang/d/b/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "NetworkingClient"

    const-string v1, "mConnection is reset to 0 when network listening. Break now."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkingClient"

    const-string v2, "run exception"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
