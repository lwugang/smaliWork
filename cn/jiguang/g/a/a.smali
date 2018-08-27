.class public final Lcn/jiguang/g/a/a;
.super Lcn/jiguang/b/b;


# static fields
.field private static a:Z

.field private static b:Lcn/jiguang/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/g/a/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/b/b;-><init>()V

    return-void
.end method

.method public static a(Lcn/jiguang/b/a;)V
    .locals 1

    sput-object p0, Lcn/jiguang/g/a/a;->b:Lcn/jiguang/b/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/g/a/a;->a:Z

    return-void
.end method

.method public static b()Lcn/jiguang/b/a;
    .locals 1

    sget-object v0, Lcn/jiguang/g/a/a;->b:Lcn/jiguang/b/a;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcn/jiguang/g/a/a;->b:Lcn/jiguang/b/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/g/a/a;->b:Lcn/jiguang/b/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/g/a/a;->a:Z

    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/g/a/a;->a:Z

    return v0
.end method

.method public static f()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/g/a/a;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Lcn/jiguang/d/d/b;->a()Lcn/jiguang/d/d/b;

    invoke-static {p1, p2}, Lcn/jiguang/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/d/j;->a()Lcn/jiguang/d/d/j;

    move-result-object v0

    sget-object v1, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcn/jiguang/d/d/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DataShare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAction error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    const-string v0, "DataShare"

    const-string v1, "pushLogin status by aidl"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/d/b/d;->a()Lcn/jiguang/d/b/d;

    invoke-static {}, Lcn/jiguang/d/b/d;->d()Z

    move-result v0

    return v0
.end method
