.class public Lezy/boost/update/UpdateManager$Builder;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static sLastTime:J


# instance fields
.field private mChecker:Lezy/boost/update/IUpdateChecker;

.field private mContext:Landroid/content/Context;

.field private mDownloader:Lezy/boost/update/IUpdateDownloader;

.field private mIsManual:Z

.field private mIsWifiOnly:Z

.field private mNotifyId:I

.field private mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

.field private mOnFailureListener:Lezy/boost/update/OnFailureListener;

.field private mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

.field private mParser:Lezy/boost/update/IUpdateParser;

.field private mPostData:[B

.field private mPrompter:Lezy/boost/update/IUpdatePrompter;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lezy/boost/update/UpdateManager$Builder;->mNotifyId:I

    .line 82
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 7

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    sget-wide v2, Lezy/boost/update/UpdateManager$Builder;->sLastTime:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    return-void

    .line 153
    :cond_0
    sput-wide v0, Lezy/boost/update/UpdateManager$Builder;->sLastTime:J

    .line 155
    iget-object v0, p0, Lezy/boost/update/UpdateManager$Builder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lezy/boost/update/UpdateManager$Builder;->mContext:Landroid/content/Context;

    invoke-static {}, Lezy/boost/update/UpdateManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lezy/boost/update/UpdateManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lezy/boost/update/UpdateUtil;->toCheckUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lezy/boost/update/UpdateManager$Builder;->mUrl:Ljava/lang/String;

    .line 159
    :cond_1
    new-instance v0, Lezy/boost/update/UpdateAgent;

    iget-object v2, p0, Lezy/boost/update/UpdateManager$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lezy/boost/update/UpdateManager$Builder;->mUrl:Ljava/lang/String;

    iget-boolean v4, p0, Lezy/boost/update/UpdateManager$Builder;->mIsManual:Z

    iget-boolean v5, p0, Lezy/boost/update/UpdateManager$Builder;->mIsWifiOnly:Z

    iget v6, p0, Lezy/boost/update/UpdateManager$Builder;->mNotifyId:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lezy/boost/update/UpdateAgent;-><init>(Landroid/content/Context;Ljava/lang/String;ZZI)V

    .line 160
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setOnNotificationDownloadListener(Lezy/boost/update/OnDownloadListener;)V

    .line 163
    :cond_2
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setOnDownloadListener(Lezy/boost/update/OnDownloadListener;)V

    .line 166
    :cond_3
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    if-eqz v1, :cond_4

    .line 167
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setOnFailureListener(Lezy/boost/update/OnFailureListener;)V

    .line 169
    :cond_4
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mChecker:Lezy/boost/update/IUpdateChecker;

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mChecker:Lezy/boost/update/IUpdateChecker;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setChecker(Lezy/boost/update/IUpdateChecker;)V

    goto :goto_0

    .line 172
    :cond_5
    new-instance v1, Lezy/boost/update/UpdateChecker;

    iget-object v2, p0, Lezy/boost/update/UpdateManager$Builder;->mPostData:[B

    invoke-direct {v1, v2}, Lezy/boost/update/UpdateChecker;-><init>([B)V

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setChecker(Lezy/boost/update/IUpdateChecker;)V

    .line 174
    :goto_0
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mParser:Lezy/boost/update/IUpdateParser;

    if-eqz v1, :cond_6

    .line 175
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mParser:Lezy/boost/update/IUpdateParser;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setParser(Lezy/boost/update/IUpdateParser;)V

    .line 177
    :cond_6
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    if-eqz v1, :cond_7

    .line 178
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setDownloader(Lezy/boost/update/IUpdateDownloader;)V

    .line 180
    :cond_7
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    if-eqz v1, :cond_8

    .line 181
    iget-object v1, p0, Lezy/boost/update/UpdateManager$Builder;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    invoke-virtual {v0, v1}, Lezy/boost/update/UpdateAgent;->setPrompter(Lezy/boost/update/IUpdatePrompter;)V

    .line 183
    :cond_8
    invoke-virtual {v0}, Lezy/boost/update/UpdateAgent;->check()V

    return-void
.end method

.method public setChecker(Lezy/boost/update/IUpdateChecker;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mChecker:Lezy/boost/update/IUpdateChecker;

    return-object p0
.end method

.method public setDownloader(Lezy/boost/update/IUpdateDownloader;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mDownloader:Lezy/boost/update/IUpdateDownloader;

    return-object p0
.end method

.method public setManual(Z)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 104
    iput-boolean p1, p0, Lezy/boost/update/UpdateManager$Builder;->mIsManual:Z

    return-object p0
.end method

.method public setNotifyId(I)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 99
    iput p1, p0, Lezy/boost/update/UpdateManager$Builder;->mNotifyId:I

    return-object p0
.end method

.method public setOnDownloadListener(Lezy/boost/update/OnDownloadListener;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 137
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnDownloadListener:Lezy/boost/update/OnDownloadListener;

    return-object p0
.end method

.method public setOnFailureListener(Lezy/boost/update/OnFailureListener;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 142
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnFailureListener:Lezy/boost/update/OnFailureListener;

    return-object p0
.end method

.method public setOnNotificationDownloadListener(Lezy/boost/update/OnDownloadListener;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mOnNotificationDownloadListener:Lezy/boost/update/OnDownloadListener;

    return-object p0
.end method

.method public setParser(Lezy/boost/update/IUpdateParser;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mParser:Lezy/boost/update/IUpdateParser;

    return-object p0
.end method

.method public setPostData(Ljava/lang/String;)Lezy/boost/update/UpdateManager$Builder;
    .locals 1

    const-string v0, "UTF-8"

    .line 94
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mPostData:[B

    return-object p0
.end method

.method public setPostData([B)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mPostData:[B

    return-object p0
.end method

.method public setPrompter(Lezy/boost/update/IUpdatePrompter;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mPrompter:Lezy/boost/update/IUpdatePrompter;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 86
    iput-object p1, p0, Lezy/boost/update/UpdateManager$Builder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setWifiOnly(Z)Lezy/boost/update/UpdateManager$Builder;
    .locals 0

    .line 109
    iput-boolean p1, p0, Lezy/boost/update/UpdateManager$Builder;->mIsWifiOnly:Z

    return-object p0
.end method
