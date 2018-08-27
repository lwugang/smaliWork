.class public final Lcn/jpush/android/service/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcn/jpush/android/service/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/service/c;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcn/jpush/android/service/c;->b:Lcn/jpush/android/service/c;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcn/jpush/android/service/c;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jpush/android/service/c;->b:Lcn/jpush/android/service/c;

    .line 49
    :cond_0
    sget-object v0, Lcn/jpush/android/service/c;->b:Lcn/jpush/android/service/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    const-string v0, "action"

    .line 4084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/jpush/android/service/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcn/jpush/android/a;->c:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    if-nez v0, :cond_1

    .line 74
    const-string v0, ""

    .line 76
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 183
    .line 4189
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/a;->d(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method public final a(Landroid/os/Bundle;Landroid/os/Handler;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 56
    const-string v1, "PushServiceCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "bundle:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-nez p1, :cond_2

    .line 58
    const-string v0, "PushServiceCore"

    const-string v1, "onActionRun bundle is null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "PushServiceCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service bundle - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 1088
    const-string v1, "PushServiceCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action - handleServiceAction - action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/jpush/android/service/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1092
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1095
    :cond_3
    const-string v1, "intent.MULTI_PROCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1130
    const-string v0, "multi_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1131
    const-string v1, "PushServiceCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle action for multi type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1134
    :pswitch_1
    const-string v0, "notification_buidler_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    const-string v1, "notification_buidler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    iget-object v2, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1, v4}, Lcn/jpush/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1139
    :pswitch_2
    const-string v0, "notification_maxnum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1140
    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcn/jpush/android/b;->a(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 1143
    :pswitch_3
    const-string v0, "enable_push_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcn/jpush/android/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1147
    :pswitch_4
    const-string v0, "silence_push_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcn/jpush/android/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1155
    :pswitch_5
    const-string v0, "local_notification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/JPushLocalNotification;

    .line 1156
    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v4}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;Z)Z

    goto/16 :goto_1

    .line 1159
    :pswitch_6
    const-string v0, "local_notification_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1160
    iget-object v2, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;J)Z

    goto/16 :goto_1

    .line 1163
    :pswitch_7
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jpush/android/service/a;->a(Landroid/content/Context;)Lcn/jpush/android/service/a;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/a;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1166
    :pswitch_8
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 1169
    :pswitch_9
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1170
    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 1103
    :cond_4
    const-string v1, "intent.STOPPUSH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1104
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    .line 2169
    const-string v1, "service_stoped"

    invoke-static {v0, v1, v4}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1105
    :cond_5
    const-string v1, "intent.RESTOREPUSH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1106
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3169
    const-string v2, "service_stoped"

    invoke-static {v0, v2, v1}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1107
    :cond_6
    const-string v1, "intent.ALIAS_TAGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1108
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/jpush/android/a/k;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1109
    :cond_7
    const-string v1, "intent.plugin.platform.REFRESSH_REGID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1110
    invoke-static {}, Lcn/jpush/android/c/f;->a()Lcn/jpush/android/c/f;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/jpush/android/c/f;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1111
    :cond_8
    const-string v1, "intent.plugin.platform.ON_MESSAGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1112
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    const-string v0, "senderId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1114
    const-string v0, "JMessageExtra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1115
    const-string v0, "PushServiceCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",senderId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",JMessageExtra:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JB)V

    goto/16 :goto_1

    .line 1122
    :cond_9
    const-string v1, "intent.MOBILE_NUMBER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1123
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/jpush/android/a/f;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1125
    :cond_a
    const-string v1, "PushServiceCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled service action - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
