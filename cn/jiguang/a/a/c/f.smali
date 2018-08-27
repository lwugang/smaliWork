.class final Lcn/jiguang/a/a/c/f;
.super Ljava/lang/Thread;

# interfaces
.implements Lcn/jiguang/d/d/q;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/c/e;


# direct methods
.method constructor <init>(Lcn/jiguang/a/a/c/e;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/c/f;->a:Lcn/jiguang/a/a/c/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const-string v0, "JPushCrashHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReportDirect errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/c/f;->a:Lcn/jiguang/a/a/c/e;

    invoke-static {v0}, Lcn/jiguang/a/a/c/e;->a(Lcn/jiguang/a/a/c/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/a/a/c/e;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/a/a/c/f;->a:Lcn/jiguang/a/a/c/e;

    invoke-static {v0}, Lcn/jiguang/a/a/c/e;->a(Lcn/jiguang/a/a/c/e;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "JPushCrashHandler"

    const-string v1, "ReportDirect context is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jiguang/a/a/c/f;->a:Lcn/jiguang/a/a/c/e;

    invoke-static {v0}, Lcn/jiguang/a/a/c/e;->a(Lcn/jiguang/a/a/c/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/a/a/c/e;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jiguang/a/a/c/f;->a:Lcn/jiguang/a/a/c/e;

    invoke-static {v1}, Lcn/jiguang/a/a/c/e;->a(Lcn/jiguang/a/a/c/e;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Lcn/jiguang/d/d/q;)V

    goto :goto_0
.end method
