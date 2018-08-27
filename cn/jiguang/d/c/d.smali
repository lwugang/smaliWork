.class public final Lcn/jiguang/d/c/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcn/jiguang/d/c/d;->b:I

    iput v1, p0, Lcn/jiguang/d/c/d;->c:I

    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Lcn/jiguang/d/c/t;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Lcn/jiguang/d/c/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a([BII)V
    .locals 2

    invoke-direct {p0, p3}, Lcn/jiguang/d/c/d;->c(I)V

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcn/jiguang/d/c/d;->b:I

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcn/jiguang/d/c/d;->c:I

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcn/jiguang/d/c/d;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcn/jiguang/d/c/d;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcn/jiguang/d/c/d;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iput v2, p0, Lcn/jiguang/d/c/d;->b:I

    iput v2, p0, Lcn/jiguang/d/c/d;->c:I

    return-void
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/jiguang/d/c/d;->c(I)V

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final g()I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/jiguang/d/c/d;->c(I)V

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final h()J
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/jiguang/d/c/d;->c(I)V

    iget-object v0, p0, Lcn/jiguang/d/c/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
