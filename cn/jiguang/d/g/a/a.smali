.class public final Lcn/jiguang/d/g/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcn/jiguang/d/g/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcn/jiguang/d/g/a/a;->b:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jiguang/d/g/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4

    long-to-int v0, p0

    rem-int/lit8 v0, v0, 0xa

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x8

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x4a

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JCKP"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x5

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x58

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x17

    mul-long/2addr v0, p0

    const-wide/16 v2, 0xf

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x3

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x49

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0xd

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x60

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_4
    const-wide/16 v0, 0x11

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x31

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_5
    const-wide/16 v0, 0x7

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x44

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_6
    const-wide/16 v0, 0x1f

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x27

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_7
    const-wide/16 v0, 0x1d

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x29

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_8
    const-wide/16 v0, 0x25

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x5b

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    const-string v1, "DFA84B10B7ACDD25"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "ASCII"

    invoke-static {v1, v2}, Lcn/jiguang/d/g/a/a;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/d/g/a/a;->a([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, ""

    const-string v2, "Unexpected - failed to AES encrypt."

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const-string v1, "ASCII"

    invoke-static {p1, v1}, Lcn/jiguang/d/g/a/a;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/d/g/a/a;->a([B)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static a([B)Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, [B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v2, v1, v0}, Lcn/jiguang/f/b;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcn/jiguang/d/g/a/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;[B)[B
    .locals 3

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcn/jiguang/d/g/a/a;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x18

    const/4 v4, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x18

    new-array v2, v5, [B

    new-array v3, v0, [B

    invoke-static {p0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, ""

    if-ne p1, v6, :cond_1

    invoke-static {v1}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcn/jiguang/d/g/a/a;->b(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {v0, v3}, Lcn/jiguang/d/g/a/a;->a(Ljava/lang/String;[B)[B

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v4, v0, 0x18

    new-array v0, v4, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    :try_start_1
    invoke-static {v2, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/16 v2, 0x18

    array-length v5, v3

    invoke-static {v3, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    ushr-int/lit8 v2, v4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_1
    if-nez p1, :cond_0

    sget v0, Lcn/jiguang/d/g/a/a;->b:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcn/jiguang/d/g/a/a;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static b()I
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x8

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x4a

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JCKP"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/g/a/a;->a:Ljava/lang/String;

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x5

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x58

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x17

    mul-long/2addr v0, p0

    const-wide/16 v2, 0xf

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x3

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x49

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0xd

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x60

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_4
    const-wide/16 v0, 0x11

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x31

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_5
    const-wide/16 v0, 0x7

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x44

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_6
    const-wide/16 v0, 0x1f

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x27

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_7
    const-wide/16 v0, 0x1d

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x29

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    :pswitch_8
    const-wide/16 v0, 0x25

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x5b

    rem-long v2, p0, v2

    add-long/2addr v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "DFA84B10B7ACDD25"

    invoke-static {p0, v0}, Lcn/jiguang/d/g/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v0, ""

    const-string v1, "Unexpected - failed to AES decrypt."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;[B)[B
    .locals 3

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcn/jiguang/d/g/a/a;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, v2

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
