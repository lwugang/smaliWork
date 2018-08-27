.class Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDialogDownloadListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    .line 309
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    .line 337
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 313
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 315
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 316
    const-string v1, "\u4e0b\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 318
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 319
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 320
    iput-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;->mDialog:Landroid/app/ProgressDialog;

    .line 322
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method
