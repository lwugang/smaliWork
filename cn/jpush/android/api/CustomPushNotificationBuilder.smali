.class public Lcn/jpush/android/api/CustomPushNotificationBuilder;
.super Lcn/jpush/android/api/BasicPushNotificationBuilder;
.source "SourceFile"


# instance fields
.field private b:I

.field public layout:I

.field public layoutContentId:I

.field public layoutIconDrawable:I

.field public layoutIconId:I

.field public layoutTitleId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 41
    sget v0, Lcn/jpush/android/a;->b:I

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 41
    sget v0, Lcn/jpush/android/a;->b:I

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    .line 63
    iput p2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    .line 64
    iput p3, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    .line 65
    iput p4, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    .line 66
    iput p5, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    .line 67
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a([Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    .line 103
    const/4 v0, 0x6

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    .line 104
    const/4 v0, 0x7

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    .line 105
    const/16 v0, 0x8

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    .line 106
    const/16 v0, 0x9

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    .line 108
    array-length v0, p1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 109
    const/16 v0, 0xa

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->b:I

    .line 111
    :cond_0
    return-void
.end method

.method buildContentView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    .line 71
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    iget v2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 74
    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 75
    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->b:I

    if-eqz v1, :cond_0

    .line 76
    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->b:I

    const-string v2, "setTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 78
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "custom_____"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/api/CustomPushNotificationBuilder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
