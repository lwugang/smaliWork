.class Lezy/boost/update/UpdateAgent;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/ICheckAgent;
.implements Lezy/boost/update/IUpdateAgent;
.implements Lezy/boost/update/IDownloadAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;,
        Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;,
        Lezy/boost/update/UpdateAgent$DefaultFailureListener;,
        Lezy/boost/update/UpdateAgent$DefaultUpdateParser;,
        Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;
    }
.end annotation


# instance fields
.field private mApkFile:Ljava/io/File;

.field private mChecker:Lezy/boost/update/IUpdateChecker;

.field private mContext:Landroid/content/Context;

.field private mDownloader:Lezy/boost/update/IUpdateDownloader;

.field private mError:Lezy/boost/update/UpdateError;

.field private mInfo:Lezy/boost/update/UpdateInfo;

.field private mIsManual:Z

.field private mIsWifiOnly:Z

.field private mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

.field private mOnFailureListener:Lezy/boost/update/OnFailureListener;

.field private mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

.field private mParser:Lezy/boost/update/IUpdateParser;

.field private mPrompter:Lezy/boost/update/IUpdatePrompter;

.field private mTmpFile:Ljava/io/File;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isManual"    # Z
    .param p4, "isWifiOnly"    # Z
    .param p5, "notifyId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsManual:Z

    .line 42
    iput-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsWifiOnly:Z

    .line 45
    iput-object v1, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    .line 47
    new-instance v0, Lezy/boost/update/UpdateAgent$DefaultUpdateParser;

    invoke-direct {v0, v1}, Lezy/boost/update/UpdateAgent$DefaultUpdateParser;-><init>(Lezy/boost/update/UpdateAgent$1;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mParser:Lezy/boost/update/IUpdateParser;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lezy/boost/update/UpdateAgent;->mUrl:Ljava/lang/String;

    .line 60
    iput-boolean p3, p0, Lezy/boost/update/UpdateAgent;->mIsManual:Z

    .line 61
    iput-boolean p4, p0, Lezy/boost/update/UpdateAgent;->mIsWifiOnly:Z

    .line 62
    new-instance v0, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lezy/boost/update/UpdateAgent$DefaultUpdateDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    .line 63
    new-instance v0, Lezy/boost/update/DefaultUpdatePrompter;

    invoke-direct {v0, p1}, Lezy/boost/update/DefaultUpdatePrompter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    .line 64
    new-instance v0, Lezy/boost/update/UpdateAgent$DefaultFailureListener;

    invoke-direct {v0, p1}, Lezy/boost/update/UpdateAgent$DefaultFailureListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    .line 65
    new-instance v0, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;

    invoke-direct {v0, p1}, Lezy/boost/update/UpdateAgent$DefaultDialogDownloadListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    .line 66
    if-lez p5, :cond_0

    .line 67
    new-instance v0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p5}, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lezy/boost/update/DefaultDownloadListener;

    invoke-direct {v0}, Lezy/boost/update/DefaultDownloadListener;-><init>()V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    goto :goto_0
.end method

.method static synthetic access$100(Lezy/boost/update/UpdateAgent;)Lezy/boost/update/IUpdateChecker;
    .locals 1
    .param p0, "x0"    # Lezy/boost/update/UpdateAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mChecker:Lezy/boost/update/IUpdateChecker;

    return-object v0
.end method

.method static synthetic access$102(Lezy/boost/update/UpdateAgent;Lezy/boost/update/IUpdateChecker;)Lezy/boost/update/IUpdateChecker;
    .locals 0
    .param p0, "x0"    # Lezy/boost/update/UpdateAgent;
    .param p1, "x1"    # Lezy/boost/update/IUpdateChecker;

    .prologue
    .line 35
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mChecker:Lezy/boost/update/IUpdateChecker;

    return-object p1
.end method

.method static synthetic access$200(Lezy/boost/update/UpdateAgent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lezy/boost/update/UpdateAgent;

    .prologue
    .line 35
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "check"

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsWifiOnly:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->checkWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doCheck()V

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Lezy/boost/update/UpdateError;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doCheck()V

    goto :goto_0

    .line 191
    :cond_2
    new-instance v0, Lezy/boost/update/UpdateError;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto :goto_0
.end method

.method doCheck()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lezy/boost/update/UpdateAgent$1;

    invoke-direct {v0, p0}, Lezy/boost/update/UpdateAgent$1;-><init>(Lezy/boost/update/UpdateAgent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method doCheckFinish()V
    .locals 6

    .prologue
    .line 217
    const-string v2, "check finish"

    invoke-static {v2}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    .line 219
    .local v0, "error":Lezy/boost/update/UpdateError;
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0, v0}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->getInfo()Lezy/boost/update/UpdateInfo;

    move-result-object v1

    .line 223
    .local v1, "info":Lezy/boost/update/UpdateInfo;
    if-nez v1, :cond_2

    .line 224
    new-instance v2, Lezy/boost/update/UpdateError;

    const/16 v3, 0x7d1

    invoke-direct {v2, v3}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-virtual {p0, v2}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-boolean v2, v1, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    if-nez v2, :cond_3

    .line 226
    new-instance v2, Lezy/boost/update/UpdateError;

    const/16 v3, 0x3ea

    invoke-direct {v2, v3}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-virtual {p0, v2}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto :goto_0

    .line 227
    :cond_3
    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v2, v3}, Lezy/boost/update/UpdateUtil;->isIgnore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    new-instance v2, Lezy/boost/update/UpdateError;

    const/16 v3, 0x3e9

    invoke-direct {v2, v3}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-virtual {p0, v2}, Lezy/boost/update/UpdateAgent;->doFailure(Lezy/boost/update/UpdateError;)V

    goto :goto_0

    .line 230
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update md5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v3, v3, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lezy/boost/update/UpdateUtil;->ensureExternalCacheDir(Landroid/content/Context;)V

    .line 232
    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v3, v3, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v2, v3}, Lezy/boost/update/UpdateUtil;->setUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lezy/boost/update/UpdateAgent;->mTmpFile:Ljava/io/File;

    .line 234
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    .line 235
    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v3, v3, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v2, v3}, Lezy/boost/update/UpdateUtil;->verify(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    const-string v3, "baochicom.owner.shishi"

    invoke-static {v2, v3}, Lezy/boost/update/UpdateUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doInstall()V

    goto/16 :goto_0

    .line 239
    :cond_5
    iget-boolean v2, v1, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v2, :cond_6

    .line 240
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doDownload()V

    goto/16 :goto_0

    .line 242
    :cond_6
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doPrompt()V

    goto/16 :goto_0
.end method

.method doDownload()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v1, v1, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mTmpFile:Ljava/io/File;

    invoke-interface {v0, p0, v1, v2}, Lezy/boost/update/IUpdateDownloader;->download(Lezy/boost/update/IDownloadAgent;Ljava/lang/String;Ljava/io/File;)V

    .line 255
    return-void
.end method

.method doFailure(Lezy/boost/update/UpdateError;)V
    .locals 1
    .param p1, "error"    # Lezy/boost/update/UpdateError;

    .prologue
    .line 262
    iget-boolean v0, p0, Lezy/boost/update/UpdateAgent;->mIsManual:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lezy/boost/update/UpdateError;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    invoke-interface {v0, p1}, Lezy/boost/update/OnFailureListener;->onFailure(Lezy/boost/update/UpdateError;)V

    .line 265
    :cond_1
    return-void
.end method

.method doInstall()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v2, v2, Lezy/boost/update/UpdateInfo;->isForce:Z

    invoke-static {v0, v1, v2}, Lezy/boost/update/UpdateUtil;->install(Landroid/content/Context;Ljava/io/File;Z)V

    .line 259
    return-void
.end method

.method doPrompt()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    invoke-interface {v0, p0}, Lezy/boost/update/IUpdatePrompter;->prompt(Lezy/boost/update/IUpdateAgent;)V

    .line 251
    return-void
.end method

.method public getInfo()Lezy/boost/update/UpdateInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    return-object v0
.end method

.method public ignore()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->getInfo()Lezy/boost/update/UpdateInfo;

    move-result-object v1

    iget-object v1, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Lezy/boost/update/UpdateUtil;->setIgnore(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onFinish()V

    .line 167
    :goto_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    invoke-interface {v0, v1}, Lezy/boost/update/OnFailureListener;->onFailure(Lezy/boost/update/UpdateError;)V

    .line 176
    :cond_0
    :goto_1
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onFinish()V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mTmpFile:Ljava/io/File;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 171
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doInstall()V

    goto :goto_1
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0, p1}, Lezy/boost/update/OnDownloadListener;->onProgress(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0, p1}, Lezy/boost/update/OnDownloadListener;->onProgress(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-boolean v0, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onStart()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-interface {v0}, Lezy/boost/update/OnDownloadListener;->onStart()V

    goto :goto_0
.end method

.method public setChecker(Lezy/boost/update/IUpdateChecker;)V
    .locals 0
    .param p1, "checker"    # Lezy/boost/update/IUpdateChecker;

    .prologue
    .line 79
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mChecker:Lezy/boost/update/IUpdateChecker;

    .line 80
    return-void
.end method

.method public setDownloader(Lezy/boost/update/IUpdateDownloader;)V
    .locals 0
    .param p1, "downloader"    # Lezy/boost/update/IUpdateDownloader;

    .prologue
    .line 83
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    .line 84
    return-void
.end method

.method public setError(Lezy/boost/update/UpdateError;)V
    .locals 0
    .param p1, "error"    # Lezy/boost/update/UpdateError;

    .prologue
    .line 124
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mError:Lezy/boost/update/UpdateError;

    .line 125
    return-void
.end method

.method public setInfo(Lezy/boost/update/UpdateInfo;)V
    .locals 0
    .param p1, "info"    # Lezy/boost/update/UpdateInfo;

    .prologue
    .line 104
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    .line 105
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mParser:Lezy/boost/update/IUpdateParser;

    invoke-interface {v1, p1}, Lezy/boost/update/IUpdateParser;->parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;

    move-result-object v1

    iput-object v1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    new-instance v1, Lezy/boost/update/UpdateError;

    const/16 v2, 0x7d6

    invoke-direct {v1, v2}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-virtual {p0, v1}, Lezy/boost/update/UpdateAgent;->setError(Lezy/boost/update/UpdateError;)V

    goto :goto_0
.end method

.method public setOnDownloadListener(Lezy/boost/update/OnDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lezy/boost/update/OnDownloadListener;

    .prologue
    .line 95
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    .line 96
    return-void
.end method

.method public setOnFailureListener(Lezy/boost/update/OnFailureListener;)V
    .locals 0
    .param p1, "listener"    # Lezy/boost/update/OnFailureListener;

    .prologue
    .line 99
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    .line 100
    return-void
.end method

.method public setOnNotificationDownloadListener(Lezy/boost/update/OnDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lezy/boost/update/OnDownloadListener;

    .prologue
    .line 91
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    .line 92
    return-void
.end method

.method public setParser(Lezy/boost/update/IUpdateParser;)V
    .locals 0
    .param p1, "parser"    # Lezy/boost/update/IUpdateParser;

    .prologue
    .line 75
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mParser:Lezy/boost/update/IUpdateParser;

    .line 76
    return-void
.end method

.method public setPrompter(Lezy/boost/update/IUpdatePrompter;)V
    .locals 0
    .param p1, "prompter"    # Lezy/boost/update/IUpdatePrompter;

    .prologue
    .line 87
    iput-object p1, p0, Lezy/boost/update/UpdateAgent;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    .line 88
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v3, v3, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    .line 130
    iget-object v0, p0, Lezy/boost/update/UpdateAgent;->mApkFile:Ljava/io/File;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent;->mInfo:Lezy/boost/update/UpdateInfo;

    iget-object v1, v1, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-static {v0, v1}, Lezy/boost/update/UpdateUtil;->verify(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doInstall()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lezy/boost/update/UpdateAgent;->doDownload()V

    goto :goto_0
.end method
