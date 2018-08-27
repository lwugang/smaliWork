.class final Lcn/jpush/android/a/g$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcn/jpush/android/a/g$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/jpush/android/a/g$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/jpush/android/a/g$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 244
    move v1, v0

    .line 247
    :cond_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 249
    iget-object v3, p0, Lcn/jpush/android/a/g$1;->a:Ljava/lang/String;

    const/4 v4, 0x5

    const-wide/16 v6, 0x1f40

    invoke-static {v3, v4, v6, v7}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJ)Lcn/jiguang/net/HttpResponse;

    move-result-object v3

    .line 250
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/jiguang/net/HttpResponse;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 252
    invoke-virtual {v3}, Lcn/jiguang/net/HttpResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcn/jpush/android/a/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    :goto_1
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcn/jpush/android/a/g$1;->c:Ljava/lang/String;

    const/16 v1, 0x3fd

    iget-object v3, p0, Lcn/jpush/android/a/g$1;->b:Landroid/content/Context;

    iget-object v4, p0, Lcn/jpush/android/a/g$1;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/jpush/android/a/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1, v3, v4}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 262
    iget-object v0, p0, Lcn/jpush/android/a/g$1;->c:Ljava/lang/String;

    const/16 v1, 0x3e4

    iget-object v3, p0, Lcn/jpush/android/a/g$1;->b:Landroid/content/Context;

    .line 1033
    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 263
    const-string v0, "ProtocolHelper"

    const-string v1, "Failed to load json from url"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method
