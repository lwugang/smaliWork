.class public final Lcn/jiguang/g/h;
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

    iput-object v0, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcn/jiguang/g/h;->b:I

    iput v1, p0, Lcn/jiguang/g/h;->c:I

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Lcn/jiguang/g/o;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Lcn/jiguang/g/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/jiguang/g/h;->b(I)V

    iget-object v0, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final a(I)[B
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcn/jiguang/g/h;->b(I)V

    new-array v0, v3, [B

    iget-object v1, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final b()J
    .locals 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/jiguang/g/h;->b(I)V

    iget-object v0, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()[B
    .locals 4

    iget-object v0, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcn/jiguang/g/h;->a:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method
