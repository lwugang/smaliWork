.class public final Lcn/jpush/android/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/b;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 63
    new-instance v2, Lcn/jpush/android/data/g;

    invoke-direct {v2}, Lcn/jpush/android/data/g;-><init>()V

    .line 65
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v3, "_jmsgid_"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    .line 67
    iget-object v3, v2, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const-string v3, "msg_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    .line 71
    :cond_0
    const-string v3, "rom_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v2, Lcn/jpush/android/data/g;->e:B

    .line 72
    const-string v3, "show_type"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 74
    const-string v4, "m_content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    const-string v1, "n_content"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/jpush/android/data/g;->v:Ljava/lang/String;

    .line 77
    const-string v1, "n_title"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/jpush/android/data/g;->u:Ljava/lang/String;

    .line 78
    const-string v1, "n_extras"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcn/jpush/android/data/g;->n:Ljava/lang/String;

    .line 80
    const-string v1, "rich_content"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {v2, v1}, Lcn/jpush/android/data/g;->a(Lorg/json/JSONObject;)Z

    .line 83
    const/4 v1, 0x3

    iput v1, v2, Lcn/jpush/android/data/g;->b:I

    .line 96
    :goto_0
    if-eq v3, v5, :cond_1

    .line 97
    iput v3, v2, Lcn/jpush/android/data/g;->b:I

    .line 99
    :cond_1
    const/4 v1, 0x0

    iput v1, v2, Lcn/jpush/android/data/g;->q:I

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcn/jpush/android/data/g;->r:Z

    move-object v0, v2

    .line 115
    :goto_1
    return-object v0

    .line 85
    :cond_2
    const/4 v1, 0x4

    iput v1, v2, Lcn/jpush/android/data/g;->b:I

    .line 87
    const/4 v1, -0x1

    iput v1, v2, Lcn/jpush/android/data/g;->L:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string v3, "PluginPlatformsNotificationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseContent error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "NO MSGID"

    .line 107
    iget-object v3, v2, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 108
    iget-object v1, v2, Lcn/jpush/android/data/g;->c:Ljava/lang/String;

    .line 109
    iget-byte v0, v2, Lcn/jpush/android/data/g;->e:B

    .line 111
    :cond_3
    const/16 v2, 0x3e4

    invoke-static {v1, p2, v0, v2, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;Ljava/lang/String;BILandroid/content/Context;)V

    .line 113
    const/4 v0, 0x0

    goto :goto_1

    .line 91
    :cond_4
    :try_start_1
    const-string v4, "n_content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/jpush/android/data/g;->v:Ljava/lang/String;

    .line 92
    const-string v4, "n_title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/jpush/android/data/g;->u:Ljava/lang/String;

    .line 93
    const-string v4, "n_extras"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/jpush/android/data/g;->n:Ljava/lang/String;

    .line 94
    const-string v4, "rom_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v2, Lcn/jpush/android/data/g;->e:B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcn/jpush/android/data/b;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v0, "cn.jpush.android.intent.NOTIFICATION_OPENED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    :try_start_0
    invoke-static {p1}, Lcn/jpush/android/api/b;->a(Lcn/jpush/android/data/b;)Ljava/util/Map;

    move-result-object v0

    .line 154
    invoke-static {v1, v0, p3}, Lcn/jpush/android/api/b;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    .line 155
    const-string v0, "sdktype"

    sget-object v2, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v0, p1, Lcn/jpush/android/data/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v2, "PluginPlatformsNotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send broadcast to app: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 161
    iget-object v0, p1, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    iget-byte v2, p1, Lcn/jpush/android/data/b;->e:B

    const/16 v3, 0x3e8

    invoke-static {v0, p2, v2, v3, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;Ljava/lang/String;BILandroid/content/Context;)V

    .line 168
    :cond_0
    :goto_1
    return-void

    .line 156
    :cond_1
    iget-object v0, p1, Lcn/jpush/android/data/b;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v2, "PluginPlatformsNotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onNotificationOpen sendBrocat error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".permission.JPUSH_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IBZ)V
    .locals 6

    .prologue
    .line 30
    if-nez p0, :cond_1

    .line 31
    const-string v0, "PluginPlatformsNotificationHelper"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    const-string v0, "PluginPlatformsNotificationHelper"

    const-string v1, "content was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "PluginPlatformsNotificationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0, p1, p2}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/b;

    move-result-object v5

    .line 40
    const-string v0, "PluginPlatformsNotificationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    if-nez v5, :cond_3

    .line 42
    const-string v0, "PluginPlatformsNotificationHelper"

    const-string v1, "entity was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_3
    iget-object v0, v5, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    const-string v0, "PluginPlatformsNotificationHelper"

    const-string v1, "message id was empty"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_4
    iput-byte p4, v5, Lcn/jpush/android/data/b;->e:B

    .line 50
    if-eqz p5, :cond_6

    .line 1129
    const-string v0, "PluginPlatformsNotificationHelper"

    const-string v1, "Action - onNotificationMessageClick"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    instance-of v0, v5, Lcn/jpush/android/data/g;

    if-eqz v0, :cond_0

    move-object v0, v5

    .line 1131
    check-cast v0, Lcn/jpush/android/data/g;

    .line 1132
    iget v0, v0, Lcn/jpush/android/data/g;->L:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1134
    invoke-static {p0, v5, p2, p3}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Lcn/jpush/android/data/b;Ljava/lang/String;I)V

    goto :goto_0

    .line 1137
    :cond_5
    invoke-static {p0, v5}, Lcn/jpush/android/api/b;->c(Landroid/content/Context;Lcn/jpush/android/data/b;)Landroid/content/Intent;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_0

    .line 1140
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1141
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2119
    :cond_6
    const-string v0, "PluginPlatformsNotificationHelper"

    const-string v1, "Action - onNotificationMessageArrived"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    instance-of v0, v5, Lcn/jpush/android/data/g;

    if-eqz v0, :cond_0

    .line 2121
    invoke-static {v5}, Lcn/jpush/android/api/b;->a(Lcn/jpush/android/data/b;)Ljava/util/Map;

    move-result-object v1

    .line 2122
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/b;)V

    .line 2123
    iget-object v0, v5, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    iget-byte v1, v5, Lcn/jpush/android/data/b;->e:B

    const/16 v2, 0x3fa

    invoke-static {v0, p2, v1, v2, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;Ljava/lang/String;BILandroid/content/Context;)V

    goto/16 :goto_0
.end method
