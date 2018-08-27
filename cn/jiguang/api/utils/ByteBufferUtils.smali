.class public Lcn/jiguang/api/utils/ByteBufferUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_CODE:I = 0x2710


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/jiguang/api/JResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "|bytebuffer:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string v0, "byteBuffer is null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "ByteBufferUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "byteBuffer info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ByteBufferUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parse data error stackTrace:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static get(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)Ljava/lang/Byte;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_0

    const/16 v0, 0x2710

    iput v0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static get(Ljava/nio/ByteBuffer;[BLcn/jiguang/api/JResponse;)Ljava/nio/ByteBuffer;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_0

    const/16 v0, 0x2710

    iput v0, p2, Lcn/jiguang/api/JResponse;->code:I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static getInt(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_0

    const/16 v0, 0x2710

    iput v0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static getLong(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_0

    const/16 v0, 0x2710

    iput v0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static getShort(Ljava/nio/ByteBuffer;Lcn/jiguang/api/JResponse;)S
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferUnderflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_0

    const/16 v0, 0x2710

    iput v0, p1, Lcn/jiguang/api/JResponse;->code:I

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcn/jiguang/api/utils/ByteBufferUtils;->a(Ljava/lang/Throwable;Lcn/jiguang/api/JResponse;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    goto :goto_1
.end method
