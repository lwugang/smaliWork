.class public Lcn/jpush/android/data/JPushLocalNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1471156c016481b9L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->a:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->b:Ljava/lang/String;

    .line 28
    const-string v0, "00"

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->c:Ljava/lang/String;

    .line 29
    const-string v0, "00"

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->d:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    .line 37
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    .line 39
    iput v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->k:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->l:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->m:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    if-ne p0, p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 234
    :cond_3
    check-cast p1, Lcn/jpush/android/data/JPushLocalNotification;

    .line 236
    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    iget-wide v4, p1, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBroadcastTime()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-wide v0
.end method

.method public getBuilderId()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 242
    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setBroadcastTime(IIIIII)V
    .locals 7

    .prologue
    const/16 v1, 0x3b

    .line 104
    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    const/16 v0, 0xc

    if-gt p2, v0, :cond_0

    if-lez p3, :cond_0

    const/16 v0, 0x1f

    if-gt p3, v0, :cond_0

    if-ltz p4, :cond_0

    const/16 v0, 0x17

    if-gt p4, v0, :cond_0

    if-ltz p5, :cond_0

    if-gt p5, v1, :cond_0

    if-ltz p6, :cond_0

    if-le p6, v1, :cond_1

    .line 107
    :cond_0
    const-string v0, "JPushLocalNotification"

    const-string v1, "Set time fail! Please check your args!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    add-int/lit8 v2, p2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 114
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 117
    iput-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    goto :goto_0
.end method

.method public setBroadcastTime(J)V
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    .line 98
    return-void
.end method

.method public setBroadcastTime(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    .line 101
    return-void
.end method

.method public setBuilderId(J)V
    .locals 1

    .prologue
    .line 202
    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    .line 203
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setNotificationId(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    .line 90
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v3, "n_extras"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_0
    const-string v2, "n_content"

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 61
    const-string v2, "n_title"

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 62
    const-string v2, "n_content"

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 63
    const-string v2, "ad_t"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v2, "m_content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v0, "msg_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    const-string v0, "content_type"

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->m:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 69
    const-string v0, "override_msg_id"

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->l:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 71
    const-string v0, "n_only"

    iget v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string v0, "n_builder_id"

    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    const-string v0, "show_type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v0, "notificaion_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
