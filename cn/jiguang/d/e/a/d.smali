.class public final Lcn/jiguang/d/e/a/d;
.super Lcn/jiguang/api/JResponse;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/e/a/a/c;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jiguang/api/JResponse;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcn/jiguang/d/e/a/d;->d:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LoginResponse"

    return-object v0
.end method

.method public final getSid()I
    .locals 1

    iget v0, p0, Lcn/jiguang/d/e/a/d;->a:I

    return v0
.end method

.method protected final isNeedParseeErrorMsg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final parseBody()V
    .locals 4

    invoke-super {p0}, Lcn/jiguang/api/JResponse;->parseBody()V

    iget v0, p0, Lcn/jiguang/d/e/a/d;->code:I

    if-lez v0, :cond_0

    const-string v0, "LoginResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response error - code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/d/e/a/d;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/e/a/d;->body:Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    iput v1, p0, Lcn/jiguang/d/e/a/d;->e:I

    iget v1, p0, Lcn/jiguang/d/e/a/d;->code:I

    if-nez v1, :cond_2

    invoke-static {v0, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->getInt(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)I

    move-result v1

    iput v1, p0, Lcn/jiguang/d/e/a/d;->a:I

    invoke-static {v0, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->getShort(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)S

    move-result v1

    iput v1, p0, Lcn/jiguang/d/e/a/d;->b:I

    invoke-static {v0, p0}, Lcn/jiguang/api/utils/ProtocolUtil;->getTlv2(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/d/e/a/d;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->getInt(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)I

    move-result v1

    iput v1, p0, Lcn/jiguang/d/e/a/d;->d:I

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcn/jiguang/d/e/a/d;->e:I

    const-string v0, "LoginResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idc parse success, value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/d/e/a/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget v0, p0, Lcn/jiguang/d/e/a/d;->e:I

    invoke-static {v0}, Lcn/jiguang/d/a/a;->a(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LoginResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse idc failed, error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcn/jiguang/d/e/a/d;->code:I

    const/16 v2, 0x3f4

    if-ne v1, v2, :cond_1

    invoke-static {v0, p0}, Lcn/jiguang/api/utils/ProtocolUtil;->getTlv2(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/e/a/d;->f:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/d/e/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LoginResponse] - sid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jiguang/d/e/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jiguang/d/e/a/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/e/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jiguang/d/e/a/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jiguang/d/e/a/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/e/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeBody()V
    .locals 1

    invoke-super {p0}, Lcn/jiguang/api/JResponse;->writeBody()V

    iget v0, p0, Lcn/jiguang/d/e/a/d;->a:I

    invoke-virtual {p0, v0}, Lcn/jiguang/d/e/a/d;->writeInt4(I)V

    iget v0, p0, Lcn/jiguang/d/e/a/d;->b:I

    invoke-virtual {p0, v0}, Lcn/jiguang/d/e/a/d;->writeInt2(I)V

    iget-object v0, p0, Lcn/jiguang/d/e/a/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/jiguang/d/e/a/d;->writeTlv2(Ljava/lang/String;)V

    iget v0, p0, Lcn/jiguang/d/e/a/d;->d:I

    invoke-virtual {p0, v0}, Lcn/jiguang/d/e/a/d;->writeInt4(I)V

    return-void
.end method
