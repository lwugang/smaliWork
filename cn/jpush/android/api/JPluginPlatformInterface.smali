.class public Lcn/jpush/android/api/JPluginPlatformInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JPLUGIN_REQUEST_CODE:I = 0x2711


# instance fields
.field private a:Lcn/jpush/android/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/g;->f(Landroid/content/Context;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 23
    new-instance v0, Lcn/jpush/android/c/c;

    invoke-direct {v0, p1}, Lcn/jpush/android/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "JPluginPlatformInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new JPluginPlatformInterface failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/jpush/android/c/c;->a(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/c;->a(Landroid/app/Activity;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcn/jpush/android/api/JPluginPlatformInterface;->a:Lcn/jpush/android/c/c;

    invoke-virtual {v0, p1}, Lcn/jpush/android/c/c;->b(Landroid/app/Activity;)V

    .line 38
    :cond_0
    return-void
.end method
