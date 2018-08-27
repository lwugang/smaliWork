.class public final Lcn/jpush/a/d;
.super Lcn/jiguang/api/JResponse;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcn/jiguang/api/JResponse;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/jpush/a/d;->b:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/jpush/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "TagaliasResponse"

    return-object v0
.end method

.method protected final isNeedParseeErrorMsg()Z
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcn/jpush/a/d;->getCommand()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final parseBody()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lcn/jiguang/api/JResponse;->parseBody()V

    .line 48
    iget v0, p0, Lcn/jpush/a/d;->code:I

    if-lez v0, :cond_0

    .line 49
    const-string v0, "ContentValues"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response error - code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jpush/a/d;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/jpush/a/d;->body:Ljava/nio/ByteBuffer;

    .line 54
    invoke-static {v0, p0}, Lcn/jiguang/api/utils/ProtocolUtil;->getTlv2(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/a/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TagaliasResponse] - action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-super {p0}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeBody()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcn/jiguang/api/JResponse;->writeBody()V

    .line 32
    return-void
.end method
