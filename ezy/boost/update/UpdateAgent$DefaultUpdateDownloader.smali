.class Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/IUpdateDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUpdateDownloader"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;->mContext:Landroid/content/Context;

    .line 272
    return-void
.end method


# virtual methods
.method public download(Lezy/boost/update/IDownloadAgent;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "agent"    # Lezy/boost/update/IDownloadAgent;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "temp"    # Ljava/io/File;

    .prologue
    .line 276
    new-instance v0, Lezy/boost/update/UpdateDownloader;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p2, p3}, Lezy/boost/update/UpdateDownloader;-><init>(Lezy/boost/update/IDownloadAgent;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void
.end method
