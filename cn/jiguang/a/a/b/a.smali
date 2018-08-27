.class public final Lcn/jiguang/a/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcn/jiguang/a/a/b/b;

.field private j:Lcn/jiguang/a/a/b/f;

.field private k:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jiguang/a/a/b/f;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/jiguang/a/a/b/a;->a:I

    iput v0, p0, Lcn/jiguang/a/a/b/a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->e:Ljava/lang/String;

    iput-object v1, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/jiguang/a/a/b/a;->g:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/a/a/b/a;->h:I

    iput-object v1, p0, Lcn/jiguang/a/a/b/a;->k:Lorg/json/JSONArray;

    iput-object p1, p0, Lcn/jiguang/a/a/b/a;->g:Landroid/content/Context;

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lcn/jiguang/a/a/b/a;->j:Lcn/jiguang/a/a/b/f;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CellInfoManager"

    const-string v2, "The permission of ACCESS_COARSE_LOCATION is denied!"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/a;)I
    .locals 1

    iget v0, p0, Lcn/jiguang/a/a/b/a;->h:I

    return v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/a;I)I
    .locals 0

    iput p1, p0, Lcn/jiguang/a/a/b/a;->h:I

    return p1
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "CellInfoManager"

    const-string v3, "unexpected!"

    invoke-static {v2, v3, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(III)Lorg/json/JSONObject;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "mobile_network_code"

    iget v2, p0, Lcn/jiguang/a/a/b/a;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "cell_id"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "radio_type"

    iget-object v2, p0, Lcn/jiguang/a/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "signal_strength"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mobile_country_code"

    iget v2, p0, Lcn/jiguang/a/a/b/a;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "carrier"

    iget-object v2, p0, Lcn/jiguang/a/a/b/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "location_area_code"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "generation"

    iget-object v2, p0, Lcn/jiguang/a/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "itime"

    invoke-static {}, Lcn/jiguang/d/a/a;->t()J

    move-result-wide v2

    const-string v4, "CellInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCellInfoTime cellinfo time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "CellInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "radioTypeJason:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(IIII)Lorg/json/JSONObject;
    .locals 3

    const v0, 0xfffffff

    if-ge p2, v0, :cond_1

    if-eqz p4, :cond_0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/a/a/b/a;->a(III)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const v0, 0xffff

    if-ge p2, v0, :cond_3

    const/4 v0, 0x1

    if-eq p4, v0, :cond_2

    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcn/jiguang/a/a/b/a;->a(III)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "CellInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJasonObject error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/a;Lorg/json/JSONArray;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    :try_start_1
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iget v2, p0, Lcn/jiguang/a/a/b/a;->h:I

    invoke-direct {p0, v2, v1, v0}, Lcn/jiguang/a/a/b/a;->a(III)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x71

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v0

    const v4, 0xffff

    if-ge v3, v4, :cond_1

    invoke-direct {p0, v2, v3, v0}, Lcn/jiguang/a/a/b/a;->a(III)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iget v2, p0, Lcn/jiguang/a/a/b/a;->h:I

    invoke-direct {p0, v2, v1, v0}, Lcn/jiguang/a/a/b/a;->a(III)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcn/jiguang/a/a/b/a;->a(Lorg/json/JSONArray;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->e()V

    :cond_4
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcn/jiguang/a/a/b/a;->k:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    const-string v0, "CellInfoManager"

    const-string v1, "Action - notifyCollectCellDoneAction"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->j:Lcn/jiguang/a/a/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->j:Lcn/jiguang/a/a/b/f;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/f;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CellInfoManager"

    const-string v1, "MyLocationManager instance was null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    :try_start_0
    new-instance v0, Lcn/jiguang/a/a/b/b;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/b/b;-><init>(Lcn/jiguang/a/a/b/a;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->i:Lcn/jiguang/a/a/b/b;

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/jiguang/a/a/b/a;->i:Lcn/jiguang/a/a/b/b;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CellInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexcepted - initCellLister e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->e()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/16 v7, 0x11

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->j:Lcn/jiguang/a/a/b/f;

    if-nez v0, :cond_0

    const-string v0, "CellInfoManager"

    const-string v1, "cellLocationManager was null- skip this action"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->e()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    const-string v0, "CellInfoManager"

    const-string v1, "Unexpected! cellLocation is null, give up report cell-info"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->e()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "CellInfoManager"

    const-string v4, "Unexpected!"

    invoke-static {v3, v4, v0}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    iput v5, p0, Lcn/jiguang/a/a/b/a;->a:I

    iput v5, p0, Lcn/jiguang/a/a/b/a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const-string v3, "TeleonyManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRadioType - networkType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0xe

    if-ne v0, v3, :cond_5

    :cond_2
    const-string v0, "cdma"

    :goto_2
    const-string v3, "TeleonyManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRadioType - radioType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->g:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v0, v3}, Lcn/jiguang/g/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->d:Ljava/lang/String;

    const-string v0, "CellInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "radioType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jiguang/a/a/b/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", carrier:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jiguang/a/a/b/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", generation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jiguang/a/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/jiguang/a/a/b/a;->a:I

    invoke-static {v0}, Lcn/jiguang/a/a/b/a;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jiguang/a/a/b/a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v7, :cond_f

    :try_start_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_4
    const-string v4, "CellInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "infoLists:"

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->f()V

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xd

    if-ne v0, v3, :cond_6

    const-string v0, "lte"

    goto/16 :goto_2

    :cond_6
    const-string v0, "gsm"

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v4, "CellInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#unexcepted - get all cellinfo error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-nez v0, :cond_a

    const-string v0, "CellInfoManager"

    const-string v4, "cellinfo was null, avoid it"

    invoke-static {v0, v4}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    instance-of v4, v0, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_b

    check-cast v0, Landroid/telephony/CellInfoLte;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v7, :cond_9

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v0

    invoke-direct {p0, v4, v5, v0, v2}, Lcn/jiguang/a/a/b/a;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_b
    instance-of v4, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_c

    check-cast v0, Landroid/telephony/CellInfoGsm;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v7, :cond_9

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/jiguang/a/a/b/a;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_c
    instance-of v4, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_d

    check-cast v0, Landroid/telephony/CellInfoCdma;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v7, :cond_9

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v0

    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/jiguang/a/a/b/a;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_6

    :cond_d
    instance-of v4, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_9

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, v7, :cond_9

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v0

    invoke-direct {p0, v4, v5, v0, v8}, Lcn/jiguang/a/a/b/a;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_6

    :cond_e
    invoke-direct {p0, v3}, Lcn/jiguang/a/a/b/a;->a(Lorg/json/JSONArray;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->e()V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcn/jiguang/a/a/b/a;->f()V

    goto/16 :goto_0
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->k:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/a/a/b/a;->k:Lorg/json/JSONArray;

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "CellInfoManager"

    const-string v1, "stop lister"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->i:Lcn/jiguang/a/a/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/jiguang/a/a/b/a;->i:Lcn/jiguang/a/a/b/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
