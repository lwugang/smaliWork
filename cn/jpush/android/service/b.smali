.class public final Lcn/jpush/android/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/jpush/android/service/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcn/jpush/android/service/b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/b;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcn/jpush/android/service/b;

    invoke-direct {v0}, Lcn/jpush/android/service/b;-><init>()V

    sput-object v0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/b;

    .line 32
    :cond_0
    sget-object v0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 137
    const-string v0, "cn.jpush.android.MSG_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string v0, "cn.jpush.android.NOTIFICATION_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string v0, "PushReceiverCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strNType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 142
    if-eqz v3, :cond_0

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 144
    :cond_0
    if-eq v1, v0, :cond_1

    .line 145
    const/16 v0, 0x3e8

    .line 1033
    const/4 v3, 0x0

    invoke-static {v2, v0, v3, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 148
    :cond_1
    const-string v0, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-static {p0, v0, v1}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    const-string v0, "PushReceiverCore"

    const-string v1, "No ACTION_NOTIFICATION_OPENED defined in manifest, open the default main activity"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-static {p0}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;)V

    .line 172
    :goto_0
    return-void

    .line 154
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v0, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v1, ""

    .line 157
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    const-string v0, "app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v0, "PushReceiverCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send broadcast to app: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v3, "PushReceiverCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onNotificationOpen sendBrocat error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
