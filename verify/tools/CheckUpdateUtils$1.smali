.class final Lverify/tools/CheckUpdateUtils$1;
.super Ljava/lang/Object;
.source "CheckUpdateUtils.java"

# interfaces
.implements Lezy/boost/update/IUpdateParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lverify/tools/CheckUpdateUtils;->check(Landroid/app/Activity;Ljava/lang/String;Lverify/tools/CheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkListener:Lverify/tools/CheckListener;


# direct methods
.method constructor <init>(Lverify/tools/CheckListener;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lverify/tools/CheckUpdateUtils$1;->val$checkListener:Lverify/tools/CheckListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;
    .registers 9
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 22
    new-instance v3, Lezy/boost/update/UpdateInfo;

    invoke-direct {v3}, Lezy/boost/update/UpdateInfo;-><init>()V

    .line 23
    .local v3, "updateInfo":Lezy/boost/update/UpdateInfo;
    const-string v4, "9cf2d6ec-f6cf-4529-b7be-b2203898379b"

    iput-object v4, v3, Lezy/boost/update/UpdateInfo;->md5:Ljava/lang/String;

    .line 24
    iput-boolean v5, v3, Lezy/boost/update/UpdateInfo;->isAutoInstall:Z

    .line 25
    iput-boolean v5, v3, Lezy/boost/update/UpdateInfo;->isForce:Z

    .line 26
    iput-boolean v6, v3, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    .line 27
    const-string v4, "\u68c0\u6d4b\u5230\u6709\u65b0\u7248\u672c\u9700\u8981\u66f4\u65b0"

    iput-object v4, v3, Lezy/boost/update/UpdateInfo;->updateContent:Ljava/lang/String;

    .line 28
    const-string v4, "v5.0"

    iput-object v4, v3, Lezy/boost/update/UpdateInfo;->versionName:Ljava/lang/String;

    .line 29
    iput v6, v3, Lezy/boost/update/UpdateInfo;->versionCode:I

    .line 31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 33
    .local v1, "dataJsonObj":Lorg/json/JSONObject;
    if-nez v1, :cond_29

    .line 50
    :cond_28
    :goto_28
    return-object v3

    .line 35
    :cond_29
    const-string v4, "auditStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 36
    const-string v4, "auditStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    .local v0, "audiStatus":I
    if-ne v0, v5, :cond_28

    .line 39
    const v4, 0x7fffffff

    iput v4, v3, Lezy/boost/update/UpdateInfo;->versionCode:I

    .line 40
    iput-boolean v5, v3, Lezy/boost/update/UpdateInfo;->hasUpdate:Z

    .line 41
    const-wide/32 v4, 0x500000

    iput-wide v4, v3, Lezy/boost/update/UpdateInfo;->size:J

    .line 43
    const-string v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    .line 44
    iget-object v4, v3, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 45
    iput v6, v3, Lezy/boost/update/UpdateInfo;->versionCode:I

    .line 47
    :cond_5d
    iget-object v4, p0, Lverify/tools/CheckUpdateUtils$1;->val$checkListener:Lverify/tools/CheckListener;

    iget-object v5, v3, Lezy/boost/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-interface {v4, v5}, Lverify/tools/CheckListener;->onParseResult(Ljava/lang/String;)V

    goto :goto_28
.end method
