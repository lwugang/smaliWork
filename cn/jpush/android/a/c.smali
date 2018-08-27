.class public Lcn/jpush/android/a/c;
.super Lcn/jiguang/api/JActionExtra;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/jiguang/api/JActionExtra;-><init>()V

    return-void
.end method


# virtual methods
.method public beforLogin(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x0

    .line 21
    if-nez p1, :cond_1

    .line 22
    const-string v1, "JPushProtocolAction"

    const-string v2, "context was null"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 25
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    const-string v1, "JPushProtocolAction"

    const-string v2, " filed name was empty"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    const-string v1, "platformtype"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    const/16 v1, 0x10

    if-lt p2, v1, :cond_0

    .line 31
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    invoke-static {p1, v0}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {p1, v0}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result v2

    .line 35
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 41
    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 43
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    :cond_4
    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 52
    :cond_5
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/jpush/android/c/g;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 56
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 57
    invoke-static {p1, v4}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p1, v4}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 65
    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 69
    :cond_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_7
    const-string v1, "platformregid"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p1}, Lcn/jpush/android/c/i;->a(Landroid/content/Context;)B

    move-result v0

    .line 73
    invoke-static {p1, v0}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
