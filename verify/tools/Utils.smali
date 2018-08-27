.class public Lverify/tools/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lverify/tools/Utils$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initJPush(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 14
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public static verify(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lverify/tools/Utils$1;

    invoke-direct {v0, p0}, Lverify/tools/Utils$1;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, v0}, Lverify/tools/CheckUpdateUtils;->check(Landroid/app/Activity;Ljava/lang/String;Lverify/tools/CheckListener;)V

    .line 23
    return-void
.end method
