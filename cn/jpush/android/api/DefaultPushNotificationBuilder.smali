.class public Lcn/jpush/android/api/DefaultPushNotificationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/jpush/android/api/PushNotificationBuilder;


# static fields
.field private static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "JPush"

.field private static final DEFAULT_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Notification"

.field private static final TAG:Ljava/lang/String; = "DefaultPushNotificationBuilder"

.field private static hasCreateNotificationChannel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->hasCreateNotificationChannel:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method buildContentView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildNotification(Ljava/util/Map;)Landroid/app/Notification;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v2, Lcn/jpush/android/a;->d:Ljava/lang/String;

    .line 67
    const-string v0, ""

    .line 68
    const-string v3, ""

    .line 69
    const-string v4, ""

    .line 70
    const/4 v5, 0x0

    .line 71
    const-string v6, ""

    .line 72
    const-string v7, ""

    .line 73
    const/4 v8, -0x1

    .line 76
    const-string v1, "cn.jpush.android.ALERT"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 77
    const-string v0, "cn.jpush.android.ALERT"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 80
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, "No notification content to show. Give up."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .line 265
    :goto_1
    return-object v0

    .line 85
    :cond_0
    const-string v0, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 89
    :cond_1
    const-string v0, "cn.jpush.android.BIG_TEXT"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "cn.jpush.android.BIG_TEXT"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 93
    :cond_2
    const-string v0, "cn.jpush.android.INBOX"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    const-string v0, "cn.jpush.android.INBOX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 97
    :cond_3
    const-string v0, "cn.jpush.android.NOTI_PRIORITY"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    const-string v0, "cn.jpush.android.NOTI_PRIORITY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 101
    :cond_4
    const-string v0, "cn.jpush.android.NOTI_CATEGORY"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    const-string v0, "cn.jpush.android.NOTI_CATEGORY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 105
    :cond_5
    const-string v0, "cn.jpush.android.BIG_PIC_PATH"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    const-string v0, "cn.jpush.android.BIG_PIC_PATH"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 109
    :cond_6
    const-string v0, "cn.jpush.android.ALERT_TYPE"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    const-string v0, "cn.jpush.android.ALERT_TYPE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    :goto_2
    const/4 v8, -0x1

    if-lt v0, v8, :cond_7

    const/4 v8, 0x7

    if-le v0, v8, :cond_1b

    .line 114
    :cond_7
    const/4 v0, -0x1

    move v8, v0

    .line 118
    :goto_3
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_f

    .line 119
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v9, "jpush_notification_icon"

    const-string v10, "drawable"

    sget-object v11, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 120
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 119
    invoke-virtual {v0, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    if-nez v0, :cond_8

    .line 122
    sget v0, Lcn/jpush/android/a;->b:I

    if-eqz v0, :cond_e

    .line 123
    sget v0, Lcn/jpush/android/a;->b:I

    .line 142
    :cond_8
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->buildContentView(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 144
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_18

    .line 146
    new-instance v10, Landroid/app/Notification$Builder;

    sget-object v11, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 149
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 153
    const-string v0, "JPush"

    const-string v1, "Notification"

    invoke-static {v10, v0, v1, v5, v8}, Lcn/jpush/android/api/b;->a(Landroid/app/Notification$Builder;Ljava/lang/String;Ljava/lang/CharSequence;II)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    .line 159
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 160
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 161
    invoke-virtual {v0, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 162
    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 165
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 166
    new-instance v1, Landroid/app/Notification$InboxStyle;

    invoke-direct {v1}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 168
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 169
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 172
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 173
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 175
    invoke-virtual {v2, v0, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v2, "DefaultPushNotificationBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Set inbox style error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_6
    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 189
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 190
    const-string v0, "DefaultPushNotificationBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set notification BPS with picture path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_1
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 193
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 195
    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 205
    :cond_b
    :goto_7
    if-eqz v5, :cond_c

    .line 207
    const/4 v0, 0x1

    if-ne v5, v0, :cond_12

    .line 208
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 219
    :cond_c
    :goto_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    .line 222
    :try_start_2
    const-string v0, "android.app.Notification$Builder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 223
    const-string v1, "setCategory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 224
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-virtual {v0, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 239
    :cond_d
    :goto_9
    if-eqz v9, :cond_17

    .line 240
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 245
    :goto_a
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 247
    invoke-virtual {p0, v10}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->getNotification(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_1

    .line 126
    :cond_e
    :try_start_3
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v9, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 127
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 126
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 128
    const-string v9, "DefaultPushNotificationBuilder"

    const-string v10, "JPush.mPackageInconId == 0 ?, get icon from application info."

    invoke-static {v9, v10}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 129
    :catch_1
    move-exception v0

    .line 130
    const-string v1, "DefaultPushNotificationBuilder"

    const-string v2, "failed to get application info and icon."

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 138
    :cond_f
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, "Can\'t find valid context when build notification."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 178
    :cond_10
    :try_start_4
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_b

    .line 181
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new messages"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    .line 196
    :catch_2
    move-exception v0

    .line 197
    const-string v1, "DefaultPushNotificationBuilder"

    const-string v2, "Create bitmap failed caused by OutOfMemoryError."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 199
    :catch_3
    move-exception v0

    .line 200
    const-string v1, "DefaultPushNotificationBuilder"

    const-string v2, "Create big picture style failed."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 209
    :cond_12
    const/4 v0, 0x2

    if-ne v5, v0, :cond_13

    .line 210
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 211
    :cond_13
    const/4 v0, -0x1

    if-ne v5, v0, :cond_14

    .line 212
    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 213
    :cond_14
    const/4 v0, -0x2

    if-ne v5, v0, :cond_15

    .line 214
    const/4 v0, -0x2

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 216
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 225
    :catch_4
    move-exception v0

    .line 226
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 227
    :catch_5
    move-exception v0

    .line 228
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 229
    :catch_6
    move-exception v0

    .line 230
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 233
    :cond_16
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, "Device rom SDK < 21, can not set notification category!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 242
    :cond_17
    const-string v0, "DefaultPushNotificationBuilder"

    const-string v1, " Use default notification view! "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 251
    :cond_18
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 252
    invoke-virtual {p0, v3}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->resetNotificationParams(Landroid/app/Notification;)V

    .line 253
    iput v8, v3, Landroid/app/Notification;->defaults:I

    .line 254
    if-nez v2, :cond_19

    .line 255
    sget-object v2, Lcn/jpush/android/a;->d:Ljava/lang/String;

    .line 258
    :cond_19
    if-eqz v9, :cond_1a

    .line 259
    iput-object v9, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_c
    move-object v0, v3

    .line 265
    goto/16 :goto_1

    .line 261
    :cond_1a
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v1, v4}, Lcn/jpush/android/api/b;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_c

    :cond_1b
    move v8, v0

    goto/16 :goto_3

    :cond_1c
    move v0, v8

    goto/16 :goto_2

    :cond_1d
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getDeveloperArg0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method getNotification(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 3

    .prologue
    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "DefaultPushNotificationBuilder"

    const-string v2, "Build notification error:"

    invoke-static {v1, v2, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetNotificationParams(Landroid/app/Notification;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, ""

    return-object v0
.end method
