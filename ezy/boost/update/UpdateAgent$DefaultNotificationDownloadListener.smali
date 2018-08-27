.class Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;
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
    name = "DefaultNotificationDownloadListener"
.end annotation


# instance fields
.field private mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

.field private mContext:Landroid/content/Context;

.field private mNotifyId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifyId"    # I

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    .line 347
    iput p2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mNotifyId:I

    .line 348
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 382
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 383
    .local v0, "nm":Landroid/app/NotificationManager;
    iget v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mNotifyId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 384
    return-void
.end method

.method public onProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    if-eqz v1, :cond_1

    .line 369
    if-lez p1, :cond_0

    .line 370
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 371
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 373
    :cond_0
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, v3}, Landroid/support/v7/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 375
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 376
    .local v0, "nm":Landroid/app/NotificationManager;
    iget v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mNotifyId:I

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 378
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 352
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u4e2d - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Landroid/support/v7/app/NotificationCompat$Builder;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    .line 355
    iget-object v1, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mBuilder:Landroid/support/v7/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 356
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 357
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 358
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->mContext:Landroid/content/Context;

    .line 359
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 361
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 363
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v4}, Lezy/boost/update/UpdateAgent$DefaultNotificationDownloadListener;->onProgress(I)V

    .line 364
    return-void
.end method
