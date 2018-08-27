.class public Lverify/tools/CheckUpdateUtils;
.super Ljava/lang/Object;
.source "CheckUpdateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/app/Activity;Ljava/lang/String;Lverify/tools/CheckListener;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "checkListener"    # Lverify/tools/CheckListener;

    .prologue
    .line 17
    invoke-static {p0}, Lezy/boost/update/UpdateManager;->create(Landroid/content/Context;)Lezy/boost/update/UpdateManager$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lezy/boost/update/UpdateManager$Builder;->setUrl(Ljava/lang/String;)Lezy/boost/update/UpdateManager$Builder;

    move-result-object v0

    new-instance v1, Lverify/tools/CheckUpdateUtils$1;

    invoke-direct {v1, p2}, Lverify/tools/CheckUpdateUtils$1;-><init>(Lverify/tools/CheckListener;)V

    .line 19
    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateManager$Builder;->setParser(Lezy/boost/update/IUpdateParser;)Lezy/boost/update/UpdateManager$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lezy/boost/update/UpdateManager$Builder;->check()V

    .line 53
    return-void
.end method
