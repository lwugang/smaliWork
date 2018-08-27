.class public abstract Lcn/jiguang/d/h/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/d/h/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcn/jiguang/d/h/a;->a:J

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p3, :cond_0

    const-string v0, "AbsWakeUpManager"

    const-string v1, "cannot report null data."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p3, p2}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "AbsWakeUpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wakeUp, force:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "AbsWakeUpManager"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/jiguang/d/h/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AbsWakeUpManager"

    const-string v1, "startOtherAppService failed,canLaunchedStoppedService is false"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcn/jiguang/d/h/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcn/jiguang/d/h/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcn/jiguang/d/h/a;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/h/a;->b:Ljava/lang/String;

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Lcn/jiguang/d/h/a;->c:J

    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/h/a;->d:Ljava/lang/String;

    return-void
.end method

.method protected abstract c(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jiguang/d/d/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Landroid/content/Context;)V
.end method
