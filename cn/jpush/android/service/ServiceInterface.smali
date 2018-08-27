.class public Lcn/jpush/android/service/ServiceInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/ServiceInterface;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "3.1.1"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 31
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 1062
    :cond_0
    sget-object v0, Lcn/jpush/android/a;->a:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/jiguang/api/JCoreInterface;->restart(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1064
    invoke-static {}, Lcn/jpush/android/c/g;->a()Lcn/jpush/android/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/c/g;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 72
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)I

    .line 86
    const/4 v0, 0x1

    .line 1169
    const-string v1, "service_stoped"

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "intent.STOPPUSH"

    invoke-static {p0, v0, v1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 89
    const-string v1, "app"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/JCoreInterface;->stop(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcn/jpush/android/api/DefaultPushNotificationBuilder;)V
    .locals 3

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    const-string v0, "ServiceInterface"

    const-string v1, "Null context, please init JPush!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v0, "ServiceInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- setNotificationBuilder - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/jpush/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jpush/android/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;JLcn/jpush/android/api/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcn/jpush/android/api/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v0, "intent.ALIAS_TAGS"

    invoke-static {p0, v2, v0}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 130
    const-string v0, "alias"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 132
    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    :cond_0
    const-string v3, "tags"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    const-string v0, "seq_id"

    invoke-virtual {v2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    const-string v3, "proto_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_2

    iget v0, p5, Lcn/jpush/android/api/a;->e:I

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "protoaction_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_1

    iget v1, p5, Lcn/jpush/android/api/a;->f:I

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcn/jpush/android/a;->a:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcn/jiguang/api/JCoreInterface;->sendAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    return-void

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IIII)Z
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 203
    :try_start_0
    const-string v1, "startHour"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v1, "startMins"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v1, "endHour"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 206
    const-string v1, "endtMins"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const-string v0, "ServiceInterface"

    const-string v1, "clearAllNotification - context is null!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 98
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)I

    .line 113
    const/4 v0, 0x0

    .line 2169
    const-string v1, "service_stoped"

    invoke-static {p0, v1, v0}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v1, "intent.RESTOREPUSH"

    invoke-static {p0, v0, v1}, Lcn/jpush/android/service/c;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 116
    const-string v1, "app"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcn/jpush/android/a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcn/jiguang/api/JCoreInterface;->restart(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 118
    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const-string v0, "ServiceInterface"

    const-string v1, "setNotificationNumber - context is null!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "ServiceInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set notification max num : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jpush/android/b;->a(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 214
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 228
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;)Z

    move-result v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    const-string v1, "ServiceInterface"

    const-string v2, "The service is stopped, it will give up all the actions until you call resumePush method to resume the service."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    return v0
.end method

.method private static e(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 222
    .line 2173
    const-string v0, "service_stoped"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/MultiSpHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 223
    const-string v1, "ServiceInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stopType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return v0
.end method
