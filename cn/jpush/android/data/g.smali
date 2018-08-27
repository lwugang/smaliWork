.class public final Lcn/jpush/android/data/g;
.super Lcn/jpush/android/data/b;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x26256bf55e1b1c95L


# instance fields
.field public J:Ljava/lang/String;

.field public K:I

.field public L:I

.field public M:I

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcn/jpush/android/data/b;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/g;->O:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/g;->P:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/data/g;->q:I

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 114
    const-string v0, "ShowEntity"

    const-string v1, "action:process"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcn/jpush/android/data/g$1;

    invoke-direct {v0, p0, p0, p1}, Lcn/jpush/android/data/g$1;-><init>(Lcn/jpush/android/data/g;Lcn/jpush/android/data/g;Landroid/content/Context;)V

    .line 241
    invoke-virtual {v0}, Lcn/jpush/android/data/g$1;->start()V

    .line 243
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const-string v0, "ShowEntity"

    const-string v1, "action: parse - content"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "e_url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    .line 93
    const-string v0, "e_title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->J:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    .line 96
    const-string v0, "ShowEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add http to non-prefix url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const-string v0, "e_rich_type"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/g;->L:I

    .line 100
    const-string v0, "e_jump_mode"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/g;->K:I

    .line 101
    const-string v0, "e_show"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/g;->M:I

    .line 103
    const/4 v0, 0x3

    iget v1, p0, Lcn/jpush/android/data/g;->L:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcn/jpush/android/data/g;->L:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/jpush/android/data/g;->L:I

    if-ne v4, v0, :cond_2

    .line 105
    :cond_1
    const-string v0, "e_eres"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/d/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->N:Ljava/util/ArrayList;

    .line 107
    :cond_2
    const-string v0, "from_num"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->O:Ljava/lang/String;

    .line 108
    const-string v0, "to_num"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->P:Ljava/lang/String;

    .line 109
    return v4
.end method
