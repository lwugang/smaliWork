.class public final Lcn/jpush/android/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/api/b;->a:Z

    return-void
.end method

.method public static a(I)I
    .locals 5

    .prologue
    const v1, 0x1080072

    const v0, 0x1080052

    const/4 v2, 0x0

    .line 774
    .line 775
    packed-switch p0, :pswitch_data_0

    .line 803
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 777
    :pswitch_1
    const-string v0, "R$drawable"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "jpush_notification_icon"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcn/jpush/android/api/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 780
    :try_start_0
    const-string v3, "jpush_notification_icon"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 784
    :goto_1
    if-gtz v0, :cond_0

    move v0, v1

    .line 789
    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    const-string v0, "NotificationHelper"

    const-string v3, "Can not load resource: jpush_notification_icon"

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 791
    :pswitch_2
    const v0, 0x108008f

    .line 792
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 798
    goto :goto_0

    .line 800
    :pswitch_4
    const v0, 0x108003f

    goto :goto_0

    .line 775
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcn/jpush/android/data/b;I)I
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcn/jpush/android/data/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/b;->d:Ljava/lang/String;

    .line 291
    :cond_0
    invoke-static {v0, p1}, Lcn/jpush/android/api/b;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 724
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    const-string v0, "NotificationHelper"

    const-string v1, "action:getNofiticationID - empty messageId"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x0

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 730
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    const-string v0, "NotificationHelper"

    const-string v1, "Ths msgId is not a integer"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 737
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 738
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 739
    if-gez v0, :cond_2

    .line 740
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 742
    :cond_2
    const v1, 0xd3ee80

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 744
    if-gez v0, :cond_0

    .line 745
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 811
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameter resType or fieldNames error."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 816
    :try_start_0
    sget-object v2, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 818
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 819
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 820
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 821
    :goto_1
    if-gtz v1, :cond_2

    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 822
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 823
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 824
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :catch_0
    move-exception v1

    .line 830
    const-string v2, "NotificationHelper"

    const-string v3, "Failed to get res id for name."

    invoke-static {v2, v3, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    :cond_2
    return-object v0
.end method

.method public static a(Lcn/jpush/android/data/b;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/jpush/android/data/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 393
    if-eqz p0, :cond_4

    .line 394
    const-string v1, "NotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notificationContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/data/b;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationTitle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/jpush/android/data/b;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationPriority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/jpush/android/data/b;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationBigText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/b;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationBigPicPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/b;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationInbox:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/b;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationCategory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/b;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nnotificationAlertType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/jpush/android/data/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nextraJson:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "cn.jpush.android.MSG_ID"

    iget-object v2, p0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v1, "cn.jpush.android.ALERT"

    iget-object v2, p0, Lcn/jpush/android/data/b;->v:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v1, "cn.jpush.android.ALERT_TYPE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcn/jpush/android/data/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    const-string v1, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    iget-object v2, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_0
    iget-object v1, p0, Lcn/jpush/android/data/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    const-string v1, "cn.jpush.android.EXTRA"

    iget-object v2, p0, Lcn/jpush/android/data/b;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_1
    iget v1, p0, Lcn/jpush/android/data/b;->w:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcn/jpush/android/data/b;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 414
    const-string v1, "cn.jpush.android.BIG_TEXT"

    iget-object v2, p0, Lcn/jpush/android/data/b;->x:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_2
    :goto_0
    iget v1, p0, Lcn/jpush/android/data/b;->A:I

    if-eqz v1, :cond_3

    .line 423
    const-string v1, "cn.jpush.android.NOTI_PRIORITY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcn/jpush/android/data/b;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_3
    iget-object v1, p0, Lcn/jpush/android/data/b;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 426
    const-string v1, "cn.jpush.android.NOTI_CATEGORY"

    iget-object v2, p0, Lcn/jpush/android/data/b;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_4
    return-object v0

    .line 415
    :cond_5
    iget v1, p0, Lcn/jpush/android/data/b;->w:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcn/jpush/android/data/b;->z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 416
    const-string v1, "cn.jpush.android.INBOX"

    iget-object v2, p0, Lcn/jpush/android/data/b;->z:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 417
    :cond_6
    iget v1, p0, Lcn/jpush/android/data/b;->w:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcn/jpush/android/data/b;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    const-string v1, "cn.jpush.android.BIG_PIC_PATH"

    iget-object v2, p0, Lcn/jpush/android/data/b;->y:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;II)V
    .locals 4

    .prologue
    .line 600
    invoke-static {p1, p2, p3, p4}, Lcn/jpush/android/api/b;->a(Ljava/lang/String;Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 602
    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    const-string v0, "setChannelId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcn/jpush/android/d/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    const-string v1, "NotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setChannelId error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5

    .prologue
    .line 861
    :try_start_0
    const-string v0, "android.app.Notification"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 862
    const-string v1, "setLatestEventInfo"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 864
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 71
    if-lez p1, :cond_1

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 75
    invoke-static {}, Lcn/jpush/android/a/i;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcn/jpush/android/api/b;->b(Landroid/content/Context;I)V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    .line 613
    invoke-static {p1}, Lcn/jpush/android/a/i;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-static {p1}, Lcn/jpush/android/a/i;->a(I)Z

    .line 617
    :cond_0
    invoke-static {}, Lcn/jpush/android/a/i;->b()I

    move-result v0

    invoke-static {p0}, Lcn/jpush/android/b;->a(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 618
    invoke-static {}, Lcn/jpush/android/a/i;->a()I

    move-result v0

    .line 619
    if-eqz v0, :cond_1

    .line 620
    invoke-static {p0, v0}, Lcn/jpush/android/api/b;->b(Landroid/content/Context;I)V

    .line 630
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/b;)V
    .locals 2

    .prologue
    .line 267
    const-string v0, "NotificationHelper"

    const-string v1, "start new thread"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jpush/android/api/b$1;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/b$1;-><init>(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/b;I)V
    .locals 3

    .prologue
    .line 90
    const-string v0, "NotificationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:cleanNotification - messageId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 92
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 93
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/jpush/android/api/b;->a(Lcn/jpush/android/data/b;I)I

    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 95
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/jpush/android/data/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 633
    new-instance v2, Landroid/content/Intent;

    const-string v1, "cn.jpush.android.intent.NOTIFICATION_RECEIVED"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    :try_start_0
    const-string v1, "NotificationHelper"

    const-string v3, "Send push received broadcast to developer defined receiver"

    invoke-static {v1, v3}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {v2, p1, p2}, Lcn/jpush/android/api/b;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    .line 638
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    const-string v1, "cn.jpush.android.NOTIFICATION_DEVELOPER_ARG0"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    :cond_0
    invoke-virtual {p5}, Lcn/jpush/android/data/b;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p5, Lcn/jpush/android/data/g;

    if-eqz v1, :cond_5

    .line 644
    move-object v0, p5

    check-cast v0, Lcn/jpush/android/data/g;

    move-object v1, v0

    .line 645
    iget v3, v1, Lcn/jpush/android/data/g;->L:I

    if-eqz v3, :cond_5

    iget v3, v1, Lcn/jpush/android/data/g;->L:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 646
    iget-object v3, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    iget-object v3, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 648
    const-string v3, "cn.jpush.android.HTML_PATH"

    iget-object v4, v1, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    :cond_1
    iget-object v3, v1, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    iget-object v4, p5, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    iget-object v1, v1, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 654
    const-string v6, "http://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 655
    invoke-static {v1}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    const-string v3, "NotificationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendNotificationReceivedBroadcast error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 675
    :goto_1
    return-void

    .line 659
    :cond_3
    :try_start_1
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 663
    :cond_4
    const-string v1, "cn.jpush.android.HTML_RES"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :cond_5
    invoke-virtual {v2, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 57
    :goto_0
    invoke-static {}, Lcn/jpush/android/a/i;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcn/jpush/android/api/b;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "action"

    const-string v2, "intent.MULTI_PROCESS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "multi_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 678
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 681
    :cond_0
    if-eqz p2, :cond_1

    .line 682
    const-string v0, "cn.jpush.android.NOTIFICATION_ID"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/CharSequence;II)Z
    .locals 11

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    sget-boolean v0, Lcn/jpush/android/api/b;->a:Z

    if-eqz v0, :cond_0

    .line 485
    const-string v0, "NotificationHelper"

    const-string v2, "hasCreateNotificationChannel, no need create repeat!"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 596
    :goto_0
    return v0

    .line 489
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    .line 490
    const-string v0, "NotificationHelper"

    const-string v1, "Device rom SDK < 26, no need use notificationChannel!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 491
    goto :goto_0

    .line 494
    :cond_1
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 495
    const-string v0, "NotificationHelper"

    const-string v1, "ApplicationContext is null!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 496
    goto :goto_0

    .line 499
    :cond_2
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v5, :cond_3

    .line 500
    const-string v0, "NotificationHelper"

    const-string v1, "targetSdkVersion < 26, no need use notificationChannel!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 501
    goto :goto_0

    .line 504
    :cond_3
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 505
    if-nez v0, :cond_4

    .line 506
    const-string v0, "NotificationHelper"

    const-string v1, "NotificationManager is null!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 507
    goto :goto_0

    .line 518
    :cond_4
    packed-switch p2, :pswitch_data_0

    .line 537
    :goto_1
    :pswitch_0
    :try_start_0
    const-string v4, "android.app.NotificationChannel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v4

    .line 541
    const/4 v5, 0x3

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 542
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 545
    const/4 v6, 0x3

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 546
    if-nez v5, :cond_5

    .line 547
    const-string v0, "NotificationHelper"

    const-string v1, "new NotificationChannel fail, return"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 548
    goto/16 :goto_0

    :pswitch_1
    move v3, v4

    .line 524
    goto :goto_1

    :pswitch_2
    move v3, v1

    .line 527
    goto :goto_1

    .line 529
    :pswitch_3
    const/4 v3, 0x4

    .line 530
    goto :goto_1

    .line 532
    :pswitch_4
    const/4 v3, 0x5

    goto :goto_1

    .line 551
    :cond_5
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Boolean;

    .line 552
    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    .line 553
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Class;

    .line 554
    const/4 v3, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    .line 557
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_6

    .line 559
    :try_start_3
    const-string v3, "enableLights"

    invoke-static {v5, v3, v7, v6}, Lcn/jpush/android/d/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    .line 566
    :cond_6
    :goto_2
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_7

    .line 568
    :try_start_4
    const-string v3, "enableVibration"

    invoke-static {v5, v3, v7, v6}, Lcn/jpush/android/d/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 574
    :cond_7
    :goto_3
    :try_start_5
    const-string v3, "createNotificationChannel"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v0, v3, v6, v4}, Lcn/jpush/android/d/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 578
    :goto_4
    const/4 v0, 0x1

    :try_start_6
    sput-boolean v0, Lcn/jpush/android/api/b;->a:Z

    move v0, v1

    .line 579
    goto/16 :goto_0

    .line 560
    :catch_0
    move-exception v3

    .line 561
    const-string v8, "NotificationHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "enableLights fail:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 580
    :catch_1
    move-exception v0

    .line 581
    :try_start_7
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :goto_5
    move v0, v2

    .line 596
    goto/16 :goto_0

    .line 569
    :catch_2
    move-exception v3

    .line 570
    :try_start_8
    const-string v6, "NotificationHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "enableLights fail:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    .line 582
    :catch_3
    move-exception v0

    .line 583
    :try_start_9
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 586
    :catch_4
    move-exception v0

    .line 587
    :try_start_a
    const-string v1, "NotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new NotificationChannel fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    .line 589
    :catch_5
    move-exception v0

    .line 590
    :try_start_b
    const-string v1, "NotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new NotificationChannel fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_5

    .line 592
    :catch_6
    move-exception v0

    .line 593
    const-string v1, "NotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new NotificationChannel fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 575
    :catch_7
    move-exception v0

    .line 576
    :try_start_c
    const-string v3, "NotificationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createNotificationChannel fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_4

    .line 518
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 83
    const-string v0, "NotificationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:cleanNotification - notificationId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 85
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 86
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 87
    return-void
.end method

.method public static b(Landroid/content/Context;Lcn/jpush/android/data/b;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 281
    const-string v0, "NotificationHelper"

    const-string v1, "action:showNotification"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {p1, v2}, Lcn/jpush/android/api/b;->a(Lcn/jpush/android/data/b;I)I

    move-result v8

    .line 283
    iget-boolean v0, p1, Lcn/jpush/android/data/b;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcn/jpush/android/data/b;->f:Z

    if-eqz v0, :cond_0

    .line 1295
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1296
    instance-of v1, p1, Lcn/jpush/android/data/g;

    if-nez v1, :cond_1

    .line 1297
    const-string v0, "NotificationHelper"

    const-string v1, "unhandle entity entity"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-static {p1}, Lcn/jpush/android/api/b;->a(Lcn/jpush/android/data/b;)Ljava/util/Map;

    move-result-object v1

    .line 1303
    iget-object v3, p1, Lcn/jpush/android/data/b;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1306
    :goto_1
    iget-object v3, p1, Lcn/jpush/android/data/b;->v:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1307
    const-string v3, ""

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/b;)V

    goto :goto_0

    .line 1303
    :cond_2
    iget-object v4, p1, Lcn/jpush/android/data/b;->o:Ljava/lang/String;

    goto :goto_1

    .line 1311
    :cond_3
    iget v3, p1, Lcn/jpush/android/data/b;->g:I

    invoke-static {v3}, Lcn/jpush/android/api/JPushInterface;->b(I)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v5

    .line 1312
    invoke-interface {v5}, Lcn/jpush/android/api/PushNotificationBuilder;->getDeveloperArg0()Ljava/lang/String;

    move-result-object v3

    .line 1314
    invoke-interface {v5, v1}, Lcn/jpush/android/api/PushNotificationBuilder;->buildNotification(Ljava/util/Map;)Landroid/app/Notification;

    move-result-object v9

    .line 1315
    if-eqz v9, :cond_11

    iget-object v5, p1, Lcn/jpush/android/data/b;->v:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1318
    invoke-virtual {p1}, Lcn/jpush/android/data/b;->a()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1319
    const-string v5, "NotificationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "running flag:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getRuningFlag()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-class v5, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1321
    new-instance v5, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "cn.jpush.android.intent.NOTIFICATION_OPENED_PROXY."

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    const-string v6, "cn.jpush.android.NOTIFICATION_TYPE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p1, Lcn/jpush/android/data/b;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getRuningFlag()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1324
    const-class v6, Lcn/jpush/android/ui/PopWinActivity;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1325
    const-string v6, "isNotification"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1335
    :goto_2
    const-string v6, "sdktype"

    sget-object v10, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    invoke-static {v5, v1, v8}, Lcn/jpush/android/api/b;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    .line 1338
    const-string v6, "app"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1340
    const-string v6, "cn.jpush.android.NOTIFICATION_DEVELOPER_ARG0"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    :cond_4
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getRuningFlag()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1343
    invoke-static {p0, v2, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1358
    :goto_3
    iput-object v5, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1361
    iget v5, p1, Lcn/jpush/android/data/b;->g:I

    invoke-static {v5}, Lcn/jpush/android/api/JPushInterface;->a(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1362
    iget v5, p1, Lcn/jpush/android/data/b;->h:I

    if-ne v7, v5, :cond_5

    .line 1363
    iput v7, p1, Lcn/jpush/android/data/b;->t:I

    .line 1364
    :cond_5
    iget v5, p1, Lcn/jpush/android/data/b;->t:I

    .line 1837
    packed-switch v5, :pswitch_data_0

    move v5, v7

    .line 1364
    :goto_4
    or-int/lit8 v5, v5, 0x1

    iput v5, v9, Landroid/app/Notification;->flags:I

    .line 1371
    :cond_6
    invoke-static {p0}, Lcn/jpush/android/d/a;->d(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1372
    iput v2, v9, Landroid/app/Notification;->defaults:I

    .line 1375
    :cond_7
    if-eqz v9, :cond_8

    .line 1376
    invoke-virtual {v0, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1380
    :cond_8
    iget v0, p1, Lcn/jpush/android/data/b;->h:I

    if-eq v7, v0, :cond_9

    .line 1381
    invoke-static {p0, v8, v7}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;IZ)V

    .line 1382
    iget-object v0, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    const/16 v2, 0x3fa

    .line 2033
    invoke-static {v0, v2, v13, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_9
    move-object v0, p0

    move v2, v8

    move-object v5, p1

    .line 1388
    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/b;)V

    goto/16 :goto_0

    .line 1327
    :cond_a
    const-class v6, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 1330
    :cond_b
    const-string v5, "NotificationHelper"

    const-string v6, "the PushReceiver in manifest is deleted by some other apps,we should send the broadcast directly."

    invoke-static {v5, v6}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    new-instance v6, Landroid/content/Intent;

    const-string v5, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x19

    if-ge v5, v10, :cond_c

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v5, v10, :cond_d

    :cond_c
    const-string v5, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    .line 1461
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1463
    invoke-static {p0, v6, v13}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1464
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 1467
    new-instance v10, Landroid/content/ComponentName;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v10, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_d
    move-object v5, v6

    goto/16 :goto_2

    .line 1345
    :cond_e
    invoke-static {p0, v2, v5, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto/16 :goto_3

    .line 1348
    :cond_f
    const-string v6, "NotificationHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v5, "delivery rich push type: "

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lcn/jpush/android/data/g;

    iget v5, v5, Lcn/jpush/android/data/g;->L:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-static {p0, p1}, Lcn/jpush/android/api/b;->c(Landroid/content/Context;Lcn/jpush/android/data/b;)Landroid/content/Intent;

    move-result-object v5

    .line 1350
    if-nez v5, :cond_10

    .line 1351
    const-string v0, "NotificationHelper"

    const-string v1, "intent was null , drop rich notification"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1355
    :cond_10
    const/high16 v6, 0x8000000

    invoke-static {p0, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto/16 :goto_3

    :pswitch_0
    move v5, v7

    .line 1840
    goto/16 :goto_4

    .line 1842
    :pswitch_1
    const/16 v5, 0x10

    .line 1843
    goto/16 :goto_4

    .line 1845
    :pswitch_2
    const/16 v5, 0x20

    goto/16 :goto_4

    .line 1385
    :cond_11
    const-string v0, "NotificationHelper"

    const-string v1, "Got NULL notification. Give up to show."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;Lcn/jpush/android/data/b;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 433
    if-nez p0, :cond_0

    .line 434
    const-string v0, "NotificationHelper"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    .line 452
    :goto_0
    return-object v0

    .line 438
    :cond_0
    const-string v0, "NotificationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    if-eqz p1, :cond_3

    .line 442
    const/4 v1, 0x3

    move-object v0, p1

    check-cast v0, Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->L:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x4

    move-object v0, p1

    check-cast v0, Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->L:I

    if-eq v1, v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->L:I

    if-nez v0, :cond_2

    .line 445
    :cond_1
    invoke-static {p0, p1, v3}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Lcn/jpush/android/data/b;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_2
    const/4 v1, 0x2

    move-object v0, p1

    check-cast v0, Lcn/jpush/android/data/g;

    iget v0, v0, Lcn/jpush/android/data/g;->L:I

    if-ne v1, v0, :cond_3

    .line 2396
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/ui/PopWinActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2397
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2398
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 449
    :cond_3
    invoke-static {p0, p1, v3}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Lcn/jpush/android/data/b;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
