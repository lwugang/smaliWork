.class public final Lcn/jiguang/a/a/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/a/a/d/b;->a:Z

    sput v0, Lcn/jiguang/a/a/d/b;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    const-string v1, "onCreate"

    invoke-interface {v0, p1, v1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    invoke-interface {v0, p1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchPause(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcn/jiguang/a/a;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/a/a/d/c;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    invoke-interface {v0, p1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchResume(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcn/jiguang/a/a;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jiguang/a/a/d/c;->a()Lcn/jiguang/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/a/a/d/c;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "ActivityLifecycle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityStarted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcn/jiguang/a/a/d/b;->b:I

    if-nez v0, :cond_0

    const-string v0, "ActivityLifecycle"

    const-string v1, "isForeground"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/jiguang/d/d/g;->a()Lcn/jiguang/d/d/g;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/d/d/g;->b(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jiguang/api/JCoreInterface;->triggerSceneCheck(Landroid/content/Context;I)V

    :cond_0
    sget v0, Lcn/jiguang/a/a/d/b;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jiguang/a/a/d/b;->b:I

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/a/a;->a:Lcn/jiguang/api/JAnalyticsAction;

    const-string v1, "onStart"

    invoke-interface {v0, p1, v1}, Lcn/jiguang/api/JAnalyticsAction;->dispatchStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "ActivityLifecycle"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityStopped:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcn/jiguang/a/a/d/b;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/jiguang/a/a/d/b;->b:I

    if-nez v0, :cond_0

    const-string v0, "ActivityLifecycle"

    const-string v1, "is not Foreground"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
