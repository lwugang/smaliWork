.class public abstract Lcn/jpush/android/service/JPushMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onMobileNumberOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcn/jpush/android/a/a;->a()Lcn/jpush/android/a/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p2}, Lcn/jpush/android/a/a;->a(Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V

    .line 18
    return-void
.end method

.method public onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
