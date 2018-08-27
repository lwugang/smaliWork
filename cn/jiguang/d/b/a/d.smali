.class public final Lcn/jiguang/d/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcn/jiguang/d/b/f;

.field private final c:J

.field private final d:Lcn/jiguang/d/b/a/a;

.field private final e:Lcn/jiguang/d/b/a/a;

.field private f:[B

.field private g:Lcn/jiguang/d/b/a/g;

.field private h:Lcn/jiguang/d/b/a/a;

.field private i:Lcn/jiguang/d/b/a/c;

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/jiguang/d/b/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jiguang/d/b/f;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jiguang/d/b/a/a;

    invoke-direct {v0}, Lcn/jiguang/d/b/a/a;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/a/d;->d:Lcn/jiguang/d/b/a/a;

    new-instance v0, Lcn/jiguang/d/b/a/a;

    invoke-direct {v0}, Lcn/jiguang/d/b/a/a;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/a/d;->e:Lcn/jiguang/d/b/a/a;

    iput-object p1, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/d/b/a/d;->b:Lcn/jiguang/d/b/f;

    iput-wide p3, p0, Lcn/jiguang/d/b/a/d;->c:J

    invoke-static {}, Lcn/jiguang/d/a/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/b/a/f;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/b/a/d;->j:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Lcn/jiguang/d/b/a/a;Ljava/net/DatagramSocket;[B)I
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/jiguang/d/b/a/a;->b()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/a/c;

    iget-object v1, v0, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    iget v3, v0, Lcn/jiguang/d/b/a/c;->b:I

    invoke-static {v1, v3, p2, p3}, Lcn/jiguang/d/b/a/d;->a(Ljava/lang/String;ILjava/net/DatagramSocket;[B)I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "SisContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "report at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " succeed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string v3, "SisContext"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "report at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " failed("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;ILjava/net/DatagramSocket;[B)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/d/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, p3

    invoke-direct {v2, p3, v3, v1, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-static {p2, v2}, Lcn/jiguang/d/d/c;->a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/d/b/a/d;->a([B)Lcn/jiguang/d/b/a/b;

    move-result-object v1

    iget-object v1, v1, Lcn/jiguang/d/b/a/b;->b:[B

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "byte could not be empty"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "SisContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "report failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-byte v0, v1, v2

    int-to-short v0, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    const/4 v3, 0x1

    aget-byte v0, v1, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    or-int/2addr v0, v2

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static a([B)Lcn/jiguang/d/b/a/b;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcn/jiguang/d/b/a/e;

    const-string v1, "response is empty!"

    invoke-direct {v0, v8, v1}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "SisContext"

    const-string v1, "unpackSisResp"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcn/jiguang/g/h;

    invoke-direct {v0, p0}, Lcn/jiguang/g/h;-><init>([B)V

    invoke-virtual {v0}, Lcn/jiguang/g/h;->a()I

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/jiguang/g/h;->a(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Lcn/jiguang/g/h;->b()J

    move-result-wide v2

    const/16 v4, 0x18

    ushr-long v4, v2, v4

    long-to-int v4, v4

    const-wide/32 v6, 0xffffff

    and-long/2addr v2, v6

    invoke-virtual {v0}, Lcn/jiguang/g/h;->a()I

    invoke-virtual {v0}, Lcn/jiguang/g/h;->c()[B
    :try_end_0
    .catch Lcn/jiguang/g/o; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_2

    invoke-static {v2, v3}, Lcn/jiguang/d/g/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2, v0}, Lcn/jiguang/d/g/a/a;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcn/jiguang/d/b/a/e;

    const/4 v1, 0x4

    const-string v2, "decrypt response error"

    invoke-direct {v0, v1, v2}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcn/jiguang/d/b/a/e;

    const-string v1, "decrypt response error"

    invoke-direct {v0, v9, v1}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcn/jiguang/d/b/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse head error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/g/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    and-int/lit8 v2, v4, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :try_start_2
    invoke-static {v0}, Lcn/jiguang/d/g/h;->b([B)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_3
    :goto_0
    new-instance v2, Lcn/jiguang/d/b/a/b;

    invoke-direct {v2, v1, v0}, Lcn/jiguang/d/b/a/b;-><init>(Ljava/lang/String;[B)V

    return-object v2

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v0, "SisContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "packageSisSendBuf origin size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v3}, Lcn/jiguang/d/g/h;->a([B)[B

    move-result-object v2

    array-length v4, v2

    array-length v5, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v4, v5, :cond_0

    move-object v1, v2

    :goto_0
    array-length v2, v1

    invoke-static {}, Lcn/jiguang/d/g/a/a;->b()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Lcn/jiguang/d/g/a/a;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcn/jiguang/d/g/a/a;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {p0, v3, v1, v0, v2}, Lcn/jiguang/d/d/c;->a(Ljava/lang/String;I[BZI)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method private g()Lcn/jiguang/d/b/a/g;
    .locals 14

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->g:Lcn/jiguang/d/b/a/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v5

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/g/m;->a(Landroid/content/Context;)I

    move-result v2

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/g/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/a/a/b/f;->a(Landroid/content/Context;)Lcn/jiguang/a/a/b/e;

    move-result-object v0

    new-instance v1, Lcn/jiguang/d/b/a/g;

    const-string v4, "1.1.9"

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/e;->b()D

    move-result-wide v8

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/e;->c()D

    move-result-wide v10

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/e;->d()J

    move-result-wide v12

    invoke-direct/range {v1 .. v13}, Lcn/jiguang/d/b/a/g;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;DDJ)V

    iput-object v1, p0, Lcn/jiguang/d/b/a/d;->g:Lcn/jiguang/d/b/a/g;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->g:Lcn/jiguang/d/b/a/g;

    return-object v0
.end method

.method private h()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/a/f;

    invoke-virtual {v0}, Lcn/jiguang/d/b/a/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/a/a;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcn/jiguang/d/b/a/a;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->h:Lcn/jiguang/d/b/a/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jiguang/d/a/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;)Lcn/jiguang/d/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/b/a/d;->h:Lcn/jiguang/d/b/a/a;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->h:Lcn/jiguang/d/b/a/a;

    return-object v0
.end method

.method public final a(Lcn/jiguang/d/b/a/a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->h:Lcn/jiguang/d/b/a/a;

    invoke-virtual {p1, v0}, Lcn/jiguang/d/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/jiguang/d/b/a/d;->h:Lcn/jiguang/d/b/a/a;

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->h:Lcn/jiguang/d/b/a/a;

    invoke-virtual {v0}, Lcn/jiguang/d/b/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/a/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->d:Lcn/jiguang/d/b/a/a;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;IJJI)V
    .locals 5

    invoke-static {p1, p2}, Lcn/jiguang/d/b/a/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SisContext"

    const-string v1, "addSisReportInfo"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/d/b/a/f;

    invoke-direct {v0}, Lcn/jiguang/d/b/a/f;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcn/jiguang/d/b/a/f;->a:I

    new-instance v1, Lcn/jiguang/d/b/a/c;

    invoke-direct {v1, p1, p2}, Lcn/jiguang/d/b/a/c;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcn/jiguang/d/b/a/f;->b:Lcn/jiguang/d/b/a/c;

    iput-wide p3, v0, Lcn/jiguang/d/b/a/f;->d:J

    iput-wide p5, v0, Lcn/jiguang/d/b/a/f;->e:J

    iput p7, v0, Lcn/jiguang/d/b/a/f;->j:I

    invoke-direct {p0}, Lcn/jiguang/d/b/a/d;->g()Lcn/jiguang/d/b/a/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/g;->a()I

    move-result v2

    iput v2, v0, Lcn/jiguang/d/b/a/f;->f:I

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/g;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->c:J

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/g;->c()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->g:D

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/g;->d()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->h:D

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/g;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->i:J

    :cond_1
    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/jiguang/d/b/a/d;->h()V

    goto :goto_0
.end method

.method public final a(Lcn/jiguang/d/b/a/c;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->d:Lcn/jiguang/d/b/a/a;

    invoke-virtual {v0, p1}, Lcn/jiguang/d/b/a/a;->a(Lcn/jiguang/d/b/a/c;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcn/jiguang/d/b/a/a;
    .locals 5

    invoke-static {}, Lcn/jiguang/d/a/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/b/a/c;->a(Ljava/lang/String;)Lcn/jiguang/d/b/a/c;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    new-instance v2, Lcn/jiguang/d/b/a/a;

    invoke-direct {v2}, Lcn/jiguang/d/b/a/a;-><init>()V

    sget-object v0, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {v0}, Lcn/jiguang/c/b;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v4, "hardcode"

    invoke-virtual {v2, v1, v0, v4}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    iget-object v0, v0, Lcn/jiguang/d/b/a/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    iget v1, v1, Lcn/jiguang/d/b/a/c;->b:I

    const-string v3, "last_good"

    invoke-virtual {v2, v0, v1, v3}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->e:Lcn/jiguang/d/b/a/a;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;IJJI)V
    .locals 5

    invoke-static {p1, p2}, Lcn/jiguang/d/b/a/c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "SisContext"

    const-string v1, "addConnReportInfo"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/d/b/a/f;

    invoke-direct {v0}, Lcn/jiguang/d/b/a/f;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcn/jiguang/d/b/a/f;->a:I

    new-instance v1, Lcn/jiguang/d/b/a/c;

    invoke-direct {v1, p1, p2}, Lcn/jiguang/d/b/a/c;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcn/jiguang/d/b/a/f;->b:Lcn/jiguang/d/b/a/c;

    iput-wide p3, v0, Lcn/jiguang/d/b/a/f;->d:J

    iput-wide p5, v0, Lcn/jiguang/d/b/a/f;->e:J

    iput p7, v0, Lcn/jiguang/d/b/a/f;->j:I

    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/g/m;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcn/jiguang/d/b/a/f;->f:I

    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->c:J

    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/a/a/b/f;->a(Landroid/content/Context;)Lcn/jiguang/a/a/b/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/e;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/e;->b()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->g:D

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/e;->c()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->h:D

    invoke-virtual {v1}, Lcn/jiguang/a/a/b/e;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jiguang/d/b/a/f;->i:J

    :cond_1
    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/jiguang/d/b/a/d;->h()V

    goto :goto_0
.end method

.method public final b(Lcn/jiguang/d/b/a/c;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->e:Lcn/jiguang/d/b/a/a;

    invoke-virtual {v0, p1}, Lcn/jiguang/d/b/a/a;->a(Lcn/jiguang/d/b/a/c;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcn/jiguang/d/b/a/c;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    invoke-virtual {p1, v0}, Lcn/jiguang/d/b/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->i:Lcn/jiguang/d/b/a/c;

    invoke-virtual {v0}, Lcn/jiguang/d/b/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/a/a;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()[B
    .locals 5

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->f:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/jiguang/d/b/a/d;->g()Lcn/jiguang/d/b/a/g;

    :try_start_0
    const-string v0, "UG"

    iget-object v1, p0, Lcn/jiguang/d/b/a/d;->g:Lcn/jiguang/d/b/a/g;

    invoke-virtual {v1}, Lcn/jiguang/d/b/a/g;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/d/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/b/a/d;->f:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->f:[B

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcn/jiguang/d/b/a/e;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to package data - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcn/jiguang/d/b/a/e;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final e()Lcn/jiguang/d/b/f;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/d;->b:Lcn/jiguang/d/b/f;

    return-object v0
.end method

.method public final f()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/a/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    invoke-static {}, Lcn/jiguang/d/a/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SisContext"

    const-string v1, "reportInfo is Empty, quit report"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SisContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sisReport failed, error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "SisContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sis report data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DG"

    invoke-static {v0, v2}, Lcn/jiguang/d/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0}, Lcn/jiguang/d/b/a/d;->b()Lcn/jiguang/d/b/a/a;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3}, Lcn/jiguang/d/b/a/d;->a(Lcn/jiguang/d/b/a/a;Ljava/net/DatagramSocket;[B)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {v0}, Lcn/jiguang/c/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/c/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcn/jiguang/d/b/a/a;->a(Ljava/util/List;Z)Lcn/jiguang/d/b/a/a;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3}, Lcn/jiguang/d/b/a/d;->a(Lcn/jiguang/d/b/a/a;Ljava/net/DatagramSocket;[B)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "SisContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "report succeed : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/d/a/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "SisContext"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "report failed("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
