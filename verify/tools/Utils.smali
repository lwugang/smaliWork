.class public Lverify/tools/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initJPush(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 16
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public static verify(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lverify/tools/Utils$1;

    invoke-direct {v0}, Lverify/tools/Utils$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 26
    new-instance v0, Lverify/tools/Utils$2;

    invoke-direct {v0, p0}, Lverify/tools/Utils$2;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, v0}, Lverify/tools/CheckUpdateUtils;->check(Landroid/app/Activity;Ljava/lang/String;Lverify/tools/CheckListener;)V

    .line 39
    return-void
.end method
