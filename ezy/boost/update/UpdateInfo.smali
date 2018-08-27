.class public Lezy/boost/update/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# instance fields
.field public hasUpdate:Z

.field public isAutoInstall:Z

.field public isForce:Z

.field public isIgnorable:Z

.field public isSilent:Z

.field public maxTimes:I

.field public md5:Ljava/lang/String;

.field public size:J

.field public updateContent:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    .line 26
    iput-boolean v0, p0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    .line 28
    iput-boolean v0, p0, Lezy/boost/update/UpdateInfo;->isForce:Z

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    .line 32
    iput-boolean v1, p0, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    .line 34
    iput v0, p0, Lezy/boost/update/UpdateInfo;->maxTimes:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 47
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "data"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lezy/boost/update/UpdateInfo;->parse(Lorg/json/JSONObject;)Lezy/boost/update/UpdateInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lorg/json/JSONObject;)Lezy/boost/update/UpdateInfo;
    .locals 5

    .line 51
    new-instance v0, Lezy/boost/update/UpdateInfo;

    invoke-direct {v0}, Lezy/boost/update/UpdateInfo;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "hasUpdate"

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    .line 56
    iget-boolean v1, v0, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "isSilent"

    .line 59
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    const-string v1, "isForce"

    .line 60
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isForce:Z

    const-string v1, "isAutoInstall"

    .line 61
    iget-boolean v3, v0, Lezy/boost/update/UpdateInfo;->isSilent:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    const-string v1, "isIgnorable"

    .line 62
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    const-string v1, "versionCode"

    .line 64
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lezy/boost/update/UpdateInfo;->versionCode:I

    const-string v1, "versionName"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->versionName:Ljava/lang/String;

    const-string v1, "updateContent"

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->updateContent:Ljava/lang/String;

    const-string v1, "url"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    const-string v1, "md5"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    const-string v1, "size"

    const-wide/16 v2, 0x0

    .line 70
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lezy/boost/update/UpdateInfo;->size:J

    return-object v0
.end method
