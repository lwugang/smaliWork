.class public final Lcn/jpush/android/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    const-string v3, "ProtocolHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action:preParseOriginalMsgMessage - originalJson:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    const-string v1, "ProtocolHelper"

    const-string v2, "Empty original json txt"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "NO MSGID"

    const/16 v2, 0x3e4

    .line 1033
    invoke-static {v1, v2, v0, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 67
    :goto_0
    return-object v0

    .line 33
    :cond_1
    const-string v3, "NO_MSGID"

    invoke-static {p0, v3, p1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 34
    if-nez v4, :cond_2

    .line 35
    const-string v1, "ProtocolHelper"

    const-string v2, "topJsonObject == null"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "msg_id"

    const-string v3, ""

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "ad_id"

    const-string v3, ""

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 43
    :goto_1
    const-string v0, "ProtocolHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "preParseOriginalMsgMessage msgId = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "n_only"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v3, v2

    .line 47
    :goto_2
    if-eqz v3, :cond_5

    .line 48
    const-string v0, "n_builder_id"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    :goto_3
    new-instance v2, Lcn/jpush/android/data/a;

    invoke-direct {v2}, Lcn/jpush/android/data/a;-><init>()V

    .line 52
    iput-object p4, v2, Lcn/jpush/android/data/a;->c:Ljava/lang/String;

    .line 53
    iput-object v4, v2, Lcn/jpush/android/data/a;->a:Lorg/json/JSONObject;

    .line 54
    const-string v5, "show_type"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Lcn/jpush/android/data/a;->b:I

    .line 55
    iput-boolean v3, v2, Lcn/jpush/android/data/a;->f:Z

    .line 56
    iput v0, v2, Lcn/jpush/android/data/a;->g:I

    .line 57
    const-string v0, "notificaion_type"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcn/jpush/android/data/a;->h:I

    .line 59
    const-string v0, "message"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/jpush/android/data/a;->j:Ljava/lang/String;

    .line 60
    const-string v0, "content_type"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/jpush/android/data/a;->k:Ljava/lang/String;

    .line 61
    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/jpush/android/data/a;->m:Ljava/lang/String;

    .line 62
    const-string v0, "extras"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/jpush/android/data/a;->n:Ljava/lang/String;

    .line 63
    iput-object p2, v2, Lcn/jpush/android/data/a;->o:Ljava/lang/String;

    .line 64
    iput-object p3, v2, Lcn/jpush/android/data/a;->p:Ljava/lang/String;

    .line 65
    const-string v0, "override_msg_id"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/jpush/android/data/a;->d:Ljava/lang/String;

    move-object v0, v2

    .line 67
    goto/16 :goto_0

    :cond_4
    move v3, v1

    .line 45
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move-object p4, v0

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v2, "ProtocolHelper"

    const-string v3, "parse json error"

    invoke-static {v2, v3, v0}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    const/16 v0, 0x3e4

    .line 6033
    invoke-static {p1, v0, v1, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/16 v4, 0x3e4

    const/4 v0, 0x0

    .line 201
    if-nez p2, :cond_1

    .line 202
    const-string v1, "ProtocolHelper"

    const-string v2, "NULL json object"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 7033
    invoke-static {p1, v4, v0, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "ProtocolHelper"

    const-string v2, "Empty json name to get"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_2
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    const-string v2, "ProtocolHelper"

    const-string v3, "get json object error"

    invoke-static {v2, v3, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8033
    invoke-static {p1, v4, v0, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3e4

    .line 74
    const-string v0, "ProtocolHelper"

    const-string v1, "action:parseMsgMessage"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget v0, p1, Lcn/jpush/android/data/a;->b:I

    .line 78
    iget-object v1, p1, Lcn/jpush/android/data/a;->a:Lorg/json/JSONObject;

    .line 79
    iget-object v2, p1, Lcn/jpush/android/data/a;->c:Ljava/lang/String;

    .line 82
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 83
    :cond_1
    const-string v3, "m_content"

    invoke-static {p0, v2, v1, v3}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    const-string v0, "ProtocolHelper"

    const-string v1, "The secondJsonObject is null!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 86
    :cond_2
    const-string v1, "ProtocolHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown MSG protocol version. Give up - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    invoke-static {v2, v5, v6, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v3, "ad_t"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 99
    if-nez v3, :cond_4

    .line 100
    new-instance v4, Lcn/jpush/android/data/g;

    invoke-direct {v4}, Lcn/jpush/android/data/g;-><init>()V

    .line 107
    iput-object v2, v4, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    .line 108
    iput v0, v4, Lcn/jpush/android/data/b;->b:I

    .line 109
    iput v3, v4, Lcn/jpush/android/data/b;->q:I

    .line 110
    iget-boolean v0, p1, Lcn/jpush/android/data/a;->i:Z

    iput-boolean v0, v4, Lcn/jpush/android/data/b;->i:Z

    .line 111
    iget-boolean v0, p1, Lcn/jpush/android/data/a;->f:Z

    iput-boolean v0, v4, Lcn/jpush/android/data/b;->f:Z

    .line 112
    iget v0, p1, Lcn/jpush/android/data/a;->g:I

    iput v0, v4, Lcn/jpush/android/data/b;->g:I

    .line 113
    iget-object v0, p1, Lcn/jpush/android/data/a;->o:Ljava/lang/String;

    iput-object v0, v4, Lcn/jpush/android/data/b;->o:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcn/jpush/android/data/a;->d:Ljava/lang/String;

    iput-object v0, v4, Lcn/jpush/android/data/b;->d:Ljava/lang/String;

    .line 115
    iget v0, p1, Lcn/jpush/android/data/a;->h:I

    iput v0, v4, Lcn/jpush/android/data/b;->h:I

    .line 117
    invoke-virtual {v4, p0, v1}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    .line 118
    const-string v1, "ProtocolHelper"

    const-string v2, "Entity.parse the second json object over."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v4, p0}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;)V

    .line 122
    const-string v0, "ProtocolHelper"

    const-string v1, "ShowEntity.process over."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    const-string v0, "ProtocolHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unknow msg type ad_t = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    invoke-static {v2, v5, v6, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 124
    :cond_5
    const-string v0, "ProtocolHelper"

    const-string v1, "Push message parsing failed. Give up processing."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x3e4

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 129
    const-string v0, "ProtocolHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "action:parseOriginalMsgMessage - originalJson:\n"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "ProtocolHelper"

    const-string v1, "Empty original json txt"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    const-string v0, "NO MSGID"

    invoke-static {p0, v0, p1}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1

    .line 139
    const-string v0, "msg_id"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "ad_id"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_3
    const-string v3, "show_type"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 145
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 146
    const-string v3, "m_content"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lcn/jpush/android/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3240
    const-string v2, "ProtocolHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action:loadMsgJsonFromUrl - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    if-nez p0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3242
    :cond_4
    new-instance v2, Lcn/jpush/android/a/g$1;

    invoke-direct {v2, v1, p0, v0}, Lcn/jpush/android/a/g$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 3266
    invoke-virtual {v2}, Lcn/jpush/android/a/g$1;->start()V

    goto :goto_0

    .line 151
    :cond_5
    const-string v3, "ProtocolHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get json from url becauseof invalid url - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    invoke-static {v0, v6, v2, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 156
    :cond_6
    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 157
    const-string v4, "m_content"

    invoke-static {p0, v0, v1, v4}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    :goto_1
    if-eqz v1, :cond_1

    .line 163
    const-string v4, "ad_t"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 164
    packed-switch v4, :pswitch_data_0

    .line 169
    const-string v1, "ProtocolHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unknow msg type - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 5033
    invoke-static {v0, v6, v2, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 166
    :pswitch_0
    new-instance v2, Lcn/jpush/android/data/g;

    invoke-direct {v2}, Lcn/jpush/android/data/g;-><init>()V

    .line 174
    invoke-virtual {v2, p0, v1}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v1

    .line 175
    const-string v5, "ProtocolHelper"

    const-string v6, "Parse end"

    invoke-static {v5, v6}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object v0, v2, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    .line 178
    iput v3, v2, Lcn/jpush/android/data/b;->b:I

    .line 179
    iput v4, v2, Lcn/jpush/android/data/b;->q:I

    .line 181
    if-eqz v1, :cond_7

    .line 182
    invoke-virtual {v2, p0}, Lcn/jpush/android/data/b;->a(Landroid/content/Context;)V

    .line 183
    const-string v0, "ProtocolHelper"

    const-string v1, "Process end"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_7
    const-string v0, "ProtocolHelper"

    const-string v1, "Push message parsing failed. Give up processing."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x0

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v0, "^[http|https]+://.*"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 230
    const-string v2, "ProtocolHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid url - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
