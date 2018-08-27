.class public Lcn/jpush/android/api/JPushInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/api/JPushInterface$a;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_CHANGE:Ljava/lang/String; = "cn.jpush.android.intent.CONNECTION"

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "cn.jpush.android.intent.MESSAGE_RECEIVED"

.field public static final ACTION_NOTIFICATION_CLICK_ACTION:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_CLICK_ACTION"

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_OPENED"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_RECEIVED"

.field public static final ACTION_NOTIFICATION_RECEIVED_PROXY:Ljava/lang/String; = "cn.jpush.android.intent.NOTIFICATION_RECEIVED_PROXY"

.field public static final ACTION_REGISTRATION_ID:Ljava/lang/String; = "cn.jpush.android.intent.REGISTRATION"

.field public static final ACTION_RICHPUSH_CALLBACK:Ljava/lang/String; = "cn.jpush.android.intent.ACTION_RICHPUSH_CALLBACK"

.field public static final EXTRA_ACTIVITY_PARAM:Ljava/lang/String; = "cn.jpush.android.ACTIVITY_PARAM"

.field public static final EXTRA_ALERT:Ljava/lang/String; = "cn.jpush.android.ALERT"

.field public static final EXTRA_ALERT_TYPE:Ljava/lang/String; = "cn.jpush.android.ALERT_TYPE"

.field public static final EXTRA_APP_KEY:Ljava/lang/String; = "cn.jpush.android.APPKEY"

.field public static final EXTRA_BIG_PIC_PATH:Ljava/lang/String; = "cn.jpush.android.BIG_PIC_PATH"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "cn.jpush.android.BIG_TEXT"

.field public static final EXTRA_CONNECTION_CHANGE:Ljava/lang/String; = "cn.jpush.android.CONNECTION_CHANGE"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "cn.jpush.android.CONTENT_TYPE"

.field public static final EXTRA_EXTRA:Ljava/lang/String; = "cn.jpush.android.EXTRA"

.field public static final EXTRA_INBOX:Ljava/lang/String; = "cn.jpush.android.INBOX"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "cn.jpush.android.MESSAGE"

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "cn.jpush.android.MSG_ID"

.field public static final EXTRA_NOTIFICATION_ACTION_EXTRA:Ljava/lang/String; = "cn.jpush.android.NOTIFIACATION_ACTION_EXTRA"

.field public static final EXTRA_NOTIFICATION_DEVELOPER_ARG0:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_DEVELOPER_ARG0"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_ID"

.field public static final EXTRA_NOTIFICATION_TITLE:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_CONTENT_TITLE"

.field public static final EXTRA_NOTI_CATEGORY:Ljava/lang/String; = "cn.jpush.android.NOTI_CATEGORY"

.field public static final EXTRA_NOTI_PRIORITY:Ljava/lang/String; = "cn.jpush.android.NOTI_PRIORITY"

.field public static final EXTRA_NOTI_TYPE:Ljava/lang/String; = "cn.jpush.android.NOTIFICATION_TYPE"

.field public static final EXTRA_PUSH_ID:Ljava/lang/String; = "cn.jpush.android.PUSH_ID"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "cn.jpush.android.REGISTRATION_ID"

.field public static final EXTRA_RICHPUSH_FILE_PATH:Ljava/lang/String; = "cn.jpush.android.FILE_PATH"

.field public static final EXTRA_RICHPUSH_FILE_TYPE:Ljava/lang/String; = "cn.jpush.android.FILE_TYPE"

.field public static final EXTRA_RICHPUSH_HTML_PATH:Ljava/lang/String; = "cn.jpush.android.HTML_PATH"

.field public static final EXTRA_RICHPUSH_HTML_RES:Ljava/lang/String; = "cn.jpush.android.HTML_RES"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "cn.jpush.android.STATUS"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "cn.jpush.android.TITLE"

.field public static a:I

.field private static final b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x5

    sput v0, Lcn/jpush/android/api/JPushInterface;->a:I

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/lang/Integer;

    .line 95
    sget-object v0, Lcn/jpush/android/a;->a:Ljava/lang/String;

    const-class v1, Lcn/jpush/android/a/c;

    invoke-static {v0, v1}, Lcn/jiguang/api/JCoreInterface;->initActionExtra(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    sget-object v0, Lcn/jpush/android/a;->a:Ljava/lang/String;

    const-class v1, Lcn/jpush/android/a/b;

    invoke-static {v0, v1}, Lcn/jiguang/api/JCoreInterface;->initAction(Ljava/lang/String;Ljava/lang/Class;)V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 706
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRecordPushNotificationBuilder - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    .line 5159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jpush_save_custom_builder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/MultiSpHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    .line 711
    :cond_0
    const-string v1, "JPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Customized builder from saved preference - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v1, "basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    :cond_1
    invoke-static {v0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v0

    goto :goto_0

    .line 716
    :cond_2
    invoke-static {v0}, Lcn/jpush/android/api/MultiActionsNotificationBuilder;->parseFromPreference(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 667
    const-string v0, "JPushInterface"

    const-string v1, "Action:enableNotification"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    const-string v0, "notification_enabled"

    invoke-static {p0, v0, p1}, Lcn/jiguang/api/MultiSpHelper;->commitBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 670
    if-nez p1, :cond_0

    .line 671
    const-string v0, "JPushInterface"

    const-string v1, "action:setPushTime - closed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :goto_0
    return-void

    .line 674
    :cond_0
    const-string v0, "([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3])"

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "([0-6]{0,7})_(("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")|("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-)+("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 677
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-static {p0}, Lcn/jpush/android/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    const-string v1, "JPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already SetPushTime, give up - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_1
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:setPushTime - enabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pushTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcn/jpush/android/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 687
    :cond_2
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time format - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 310
    if-gtz p0, :cond_0

    .line 317
    :goto_0
    return v0

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 314
    const-string v1, "JPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The builder with id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not been set in your app, use default builder!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)V
    .locals 2

    .prologue
    .line 624
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 625
    invoke-static {p0}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;Z)Z

    .line 626
    return-void
.end method

.method public static addTags(Landroid/content/Context;ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 419
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 420
    invoke-static {p0, p1, p2, v0, v0}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;II)V

    .line 421
    return-void
.end method

.method static b(I)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 4

    .prologue
    .line 322
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:getPushNotificationBuilder : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-gtz p0, :cond_0

    .line 324
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 330
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 334
    :goto_0
    if-nez v0, :cond_1

    .line 335
    const-string v0, "JPushInterface"

    const-string v1, "No developer customized builder. Use default one."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;

    invoke-direct {v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;-><init>()V

    .line 339
    :cond_1
    return-object v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    const-string v2, "JPushInterface"

    const-string v3, "\u83b7\u53d6\u8bb0\u5f55builder\u51fa\u9519!"

    invoke-static {v2, v3, v0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static checkTagBindState(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 457
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 458
    const/4 v0, 0x0

    .line 459
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 461
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;II)V

    .line 464
    return-void
.end method

.method public static cleanTags(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 438
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 439
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;II)V

    .line 440
    return-void
.end method

.method public static clearAllNotifications(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 282
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 283
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->b(Landroid/content/Context;)V

    .line 284
    return-void
.end method

.method public static clearLocalNotifications(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 638
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 639
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 640
    const-string v1, "intent.MULTI_PROCESS"

    invoke-static {p0, v0, v1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 641
    const-string v1, "multi_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 643
    return-void
.end method

.method public static clearNotificationById(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 287
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 292
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 293
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 294
    return-void
.end method

.method public static deleteAlias(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 484
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;II)V

    .line 486
    return-void
.end method

.method public static deleteTags(Landroid/content/Context;ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 430
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;II)V

    .line 431
    return-void
.end method

.method public static filterValidTags(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {p0}, Lcn/jpush/android/a/k;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAlias(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 493
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 494
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;II)V

    .line 495
    return-void
.end method

.method public static getAllTags(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 447
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 448
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-static {p0, p1, v0, v1, v2}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;II)V

    .line 449
    return-void
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 552
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 553
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->getConnectionState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 226
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringTags(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 696
    invoke-static {p0}, Lcn/jpush/android/a/k;->b(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 252
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 107
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:init - sdkVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buildId:396"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/api/JCoreInterface;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {p0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    const-string v0, "JPushInterface"

    const-string v1, "\u68c0\u6d4b\u5230\u5f53\u524d\u6ca1\u6709\u7f51\u7edc\u3002\u957f\u8fde\u63a5\u5c06\u5728\u6709\u7f51\u7edc\u65f6\u81ea\u52a8\u7ee7\u7eed\u5efa\u7acb\u3002"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    :cond_2
    invoke-static {p0}, Lcn/jpush/android/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 1700
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1701
    sget v0, Lcn/jpush/android/api/JPushInterface;->a:I

    invoke-static {p0, v0}, Lcn/jpush/android/api/JPushInterface;->setLatestNotificationNumber(Landroid/content/Context;I)V

    .line 121
    :cond_3
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 610
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 611
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->initCrashHandler(Landroid/content/Context;)V

    .line 612
    return-void
.end method

.method public static isPushStopped(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 139
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 140
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 577
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 578
    invoke-static {p0, p1}, Lcn/jiguang/api/JCoreInterface;->onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 572
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 573
    invoke-static {p0, p1}, Lcn/jiguang/api/JCoreInterface;->onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 582
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->onKillProcess(Landroid/content/Context;)V

    .line 583
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 567
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 568
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->onPause(Landroid/content/Context;)V

    .line 569
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 562
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 563
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->onResume(Landroid/content/Context;)V

    .line 564
    return-void
.end method

.method public static removeLocalNotification(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 629
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 630
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 631
    const-string v1, "intent.MULTI_PROCESS"

    invoke-static {p0, v0, v1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 632
    const-string v1, "multi_type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v1, "local_notification_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 634
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 635
    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 536
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The msgId is not valid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    const/16 v0, 0x404

    .line 5033
    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 541
    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 3

    .prologue
    .line 544
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The msgId is not valid - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    const-string v0, ""

    const/16 v1, 0x3e8

    invoke-static {p1, v0, p2, v1, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;Ljava/lang/String;BILandroid/content/Context;)V

    .line 549
    return-void
.end method

.method public static requestPermission(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 726
    if-nez p0, :cond_0

    .line 727
    const-string v0, "JPushInterface"

    const-string v1, "[requestPermission] unexcepted - context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->requestPermission(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static resumePush(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 125
    const-string v0, "JPushInterface"

    const-string v1, "action:resumePush"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 127
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->b(Landroid/content/Context;I)V

    .line 128
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/c/g;->b(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public static setAlias(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 475
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 476
    invoke-static {p0, p1, p2, v0, v0}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/lang/String;II)V

    .line 477
    return-void
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 391
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    .line 392
    return-void
.end method

.method public static setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 368
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    .line 369
    invoke-static/range {v0 .. v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V

    .line 370
    return-void
.end method

.method public static setDaemonAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 739
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->setDaemonAction(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    .prologue
    .line 151
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->setDebugMode(Z)V

    .line 152
    return-void
.end method

.method public static setDefaultPushNotificationBuilder(Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V
    .locals 2

    .prologue
    .line 276
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/Integer;Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V

    .line 279
    return-void
.end method

.method public static setLatestNotificationNumber(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 260
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 261
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:setLatestNotificationNumber : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-gtz p1, :cond_0

    .line 264
    const-string v0, "JPushInterface"

    const-string v1, "maxNum should > 0, Give up action.."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setMobileNumber(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 531
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 532
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    .line 4059
    const-string v0, "MobileNumberHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action - setMobileNubmer, sequence:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mobileNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4062
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->m:I

    invoke-static {p0, p1, v0, p2}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;IILjava/lang/String;)V

    .line 4073
    :goto_0
    return-void

    .line 4065
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 4066
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4069
    :cond_1
    invoke-static {p0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4072
    sget v0, Lcn/jpush/android/api/JPushInterface$a;->j:I

    invoke-static {p0, p1, v0, p2}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 4075
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4076
    const-string v1, "action"

    const-string v2, "intent.MOBILE_NUMBER"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    const-string v1, "sequence"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4078
    const-string v1, "mobile_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static setPowerSaveMode(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 748
    invoke-static {p0, p1}, Lcn/jiguang/api/JCoreInterface;->setPowerSaveMode(Landroid/content/Context;Z)V

    .line 749
    return-void
.end method

.method public static setPushNotificationBuilder(Ljava/lang/Integer;Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V
    .locals 3

    .prologue
    .line 298
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:setPushNotificationBuilder - id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL pushNotificationBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    .line 301
    const-string v0, "JPushInterface"

    const-string v1, "id should be larger than 0"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_1
    sget-object v0, Lcn/jpush/android/a;->e:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/Integer;Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V

    goto :goto_0
.end method

.method public static setPushTime(Landroid/content/Context;Ljava/util/Set;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 156
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const-string v0, "JPushInterface"

    const-string v1, "\u68c0\u6d4b\u5230\u5f53\u524d\u6ca1\u6709\u7f51\u7edc\u3002\u6b64\u52a8\u4f5c\u5c06\u5728\u6709\u7f51\u7edc\u65f6\u81ea\u52a8\u7ee7\u7eed\u6267\u884c\u3002"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    if-nez p1, :cond_1

    .line 2692
    const-string v0, "0123456_0^23"

    invoke-static {p0, v5, v0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    :cond_2
    const/4 v0, 0x0

    .line 3692
    const-string v1, "0123456_0^23"

    invoke-static {p0, v0, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    if-le p2, p3, :cond_4

    .line 169
    const-string v0, "JPushInterface"

    const-string v1, "Invalid time format - startHour should less than endHour"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    .line 175
    :cond_5
    const-string v1, "JPushInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid day format - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    :cond_7
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static setSilenceTime(Landroid/content/Context;IIII)V
    .locals 3

    .prologue
    const/16 v1, 0x3b

    const/16 v0, 0x17

    .line 190
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 191
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-gt p2, v1, :cond_0

    if-gt p4, v1, :cond_0

    if-gt p3, v0, :cond_0

    if-le p1, v0, :cond_1

    .line 192
    :cond_0
    const-string v0, "JPushInterface"

    const-string v1, "Invalid parameter format, startHour and endHour should between 0 ~ 23, startMins and endMins should between 0 ~ 59. "

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 195
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 196
    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    const-string v0, "JPushInterface"

    const-string v1, "Remove the silence time!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;IIII)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_3

    .line 207
    const-string v0, "JPushInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set Silence PushTime - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    const-string v0, "JPushInterface"

    const-string v1, "Set Silence PushTime Failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setStatisticsEnable(Z)V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public static setStatisticsSessionTimeout(J)V
    .locals 2

    .prologue
    .line 587
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 588
    const-string v0, "JPushInterface"

    const-string v1, "sesseion timeout less than 10s"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 592
    const-string v0, "JPushInterface"

    const-string v1, "sesseion timeout larger than 1day"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTags(Landroid/content/Context;ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 410
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;ILjava/util/Set;II)V

    .line 411
    return-void
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 380
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    .line 381
    return-void
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 615
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 616
    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->stopCrashHandler(Landroid/content/Context;)V

    .line 617
    return-void
.end method

.method public static stopPush(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 132
    const-string v0, "JPushInterface"

    const-string v1, "action:stopPush"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 134
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;I)V

    .line 135
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/c/g;->c(Landroid/content/Context;)V

    .line 136
    return-void
.end method


# virtual methods
.method public setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-static {p1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;)V

    .line 358
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;II)V

    .line 359
    return-void
.end method
