.class public Lezy/boost/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezy/boost/update/UpdateManager$Builder;
    }
.end annotation


# static fields
.field private static sChannel:Ljava/lang/String; = null

.field private static sIsWifiOnly:Z = true

.field private static sUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lezy/boost/update/UpdateManager;->sUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lezy/boost/update/UpdateManager;->sChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static check(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lezy/boost/update/UpdateManager;->create(Landroid/content/Context;)Lezy/boost/update/UpdateManager$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lezy/boost/update/UpdateManager$Builder;->check()V

    return-void
.end method

.method public static checkManual(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-static {p0}, Lezy/boost/update/UpdateManager;->create(Landroid/content/Context;)Lezy/boost/update/UpdateManager$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateManager$Builder;->setManual(Z)Lezy/boost/update/UpdateManager$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lezy/boost/update/UpdateManager$Builder;->check()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lezy/boost/update/UpdateManager$Builder;
    .locals 1

    .line 60
    invoke-static {p0}, Lezy/boost/update/UpdateUtil;->ensureExternalCacheDir(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lezy/boost/update/UpdateManager$Builder;

    invoke-direct {v0, p0}, Lezy/boost/update/UpdateManager$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean p0, Lezy/boost/update/UpdateManager;->sIsWifiOnly:Z

    invoke-virtual {v0, p0}, Lezy/boost/update/UpdateManager$Builder;->setWifiOnly(Z)Lezy/boost/update/UpdateManager$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, v0}, Lezy/boost/update/UpdateUtil;->install(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setDebuggable(Z)V
    .locals 0

    .line 43
    sput-boolean p0, Lezy/boost/update/UpdateUtil;->DEBUG:Z

    return-void
.end method

.method public static setUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    sput-object p0, Lezy/boost/update/UpdateManager;->sUrl:Ljava/lang/String;

    .line 39
    sput-object p1, Lezy/boost/update/UpdateManager;->sChannel:Ljava/lang/String;

    return-void
.end method

.method public static setWifiOnly(Z)V
    .locals 0

    .line 34
    sput-boolean p0, Lezy/boost/update/UpdateManager;->sIsWifiOnly:Z

    return-void
.end method
