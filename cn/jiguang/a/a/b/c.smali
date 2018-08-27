.class public final Lcn/jiguang/a/a/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Lcn/jiguang/a/a/b/e;

.field private c:Ljava/lang/String;

.field private d:Lcn/jiguang/a/a/b/f;

.field private final f:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/jiguang/a/a/b/c;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jiguang/a/a/b/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    new-instance v0, Lcn/jiguang/a/a/b/d;

    invoke-direct {v0, p0}, Lcn/jiguang/a/a/b/d;-><init>(Lcn/jiguang/a/a/b/c;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->f:Landroid/location/LocationListener;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    iput-object p2, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    return-void
.end method

.method static synthetic a(J)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcn/jiguang/a/a/b/c;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;Z)V
    .locals 16

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcn/jiguang/a/a/b/e;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/jiguang/d/a/a;->a(J)J

    move-result-wide v13

    if-eqz p3, :cond_1

    const-string v2, "(isLastKnow)"

    :goto_0
    const-string v3, "GpsInfoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update location from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " at localTime="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/jiguang/a/a/b/c;->b(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ",serverTime="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v13

    invoke-static {v8, v9}, Lcn/jiguang/a/a/b/c;->b(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/jiguang/a/a/b/e;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    move-object/from16 v12, p2

    move/from16 v15, p3

    invoke-direct/range {v3 .. v15}, Lcn/jiguang/a/a/b/e;-><init>(DDDFFLjava/lang/String;JZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcn/jiguang/a/a/b/c;->b:Lcn/jiguang/a/a/b/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/a/a/b/c;->b:Lcn/jiguang/a/a/b/e;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jiguang/a/a/b/c;->b:Lcn/jiguang/a/a/b/e;

    invoke-virtual {v2}, Lcn/jiguang/a/a/b/e;->f()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/d/a/d;->b(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "latitude("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or longitude("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/jiguang/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "GpsInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateWithNewLocation excepted:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/jiguang/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "update location is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/jiguang/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcn/jiguang/a/a/b/c;Landroid/location/Location;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/jiguang/a/a/b/c;->a(Landroid/location/Location;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/jiguang/a/a/b/e;

    invoke-direct {v0, p1}, Lcn/jiguang/a/a/b/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->b:Lcn/jiguang/a/a/b/e;

    return-void
.end method

.method private static b(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jiguang/a/a/b/c;->e:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/jiguang/a/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v2, "passive"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "GpsInfoManager"

    const-string v2, "No suitable permission is present when get GPS_PROVIDER!"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "GpsInfoManager"

    const-string v2, "The provider [gps] is illegal argument!"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v1, "GpsInfoManager"

    const-string v2, "The ILocationManager is null!"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    const/16 v5, 0x3ed

    const/16 v4, 0x3ec

    const/16 v3, 0x3eb

    const/16 v2, 0x3e9

    const-string v0, "GpsInfoManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->e()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/f;->b()V

    :goto_0
    return-void

    :cond_4
    const-string v0, "GpsInfoManager"

    const-string v1, "cellLocationManager is null,please check it"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->f:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->f:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GpsInfoManager"

    const-string v1, "locationManager is null , do nothing!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GpsInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove location listener failed  e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "GpsInfoManager"

    const-string v1, "Location listener is null , do nothing!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcn/jiguang/a/a/b/e;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->b:Lcn/jiguang/a/a/b/e;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 12

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-boolean v2, v2, Lcn/jiguang/a/a/b/f;->a:Z

    if-eqz v2, :cond_0

    const-string v0, "skip gps collect"

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/f;->b()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Lcn/jiguang/g/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "GpsInfoManager"

    const-string v1, "Require the permissionandroid.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "no permission"

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/f;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    :try_start_0
    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iget-object v3, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    iget-object v3, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v5, "passive"

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    const-string v5, "GpsInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gpsLocation:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "GpsInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "netLocation:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "GpsInfoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "passLocation:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_4

    move-wide v10, v0

    :goto_1
    if-nez v4, :cond_5

    move-wide v8, v0

    :goto_2
    if-nez v3, :cond_6

    move-wide v6, v0

    :goto_3
    cmp-long v5, v10, v8

    if-lez v5, :cond_8

    cmp-long v4, v10, v6

    if-lez v4, :cond_7

    move-object v4, v2

    :cond_2
    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    :goto_5
    const/4 v3, 0x1

    invoke-direct {p0, v4, v2, v3}, Lcn/jiguang/a/a/b/c;->a(Landroid/location/Location;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    :goto_6
    sub-long v2, v6, v2

    const-wide/16 v6, 0x7530

    cmp-long v2, v2, v6

    if-gez v2, :cond_b

    const-string v2, "GpsInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "need not restart gpslocation,the time with last:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    :cond_3
    sub-long v0, v6, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GpsInfoManager"

    const-string v1, "No suitable permission when get last known location!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    move-wide v10, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    move-wide v8, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    goto :goto_3

    :cond_7
    move-object v4, v3

    goto :goto_4

    :cond_8
    cmp-long v2, v8, v6

    if-gtz v2, :cond_2

    move-object v4, v3

    goto :goto_4

    :cond_9
    const-string v2, ""

    goto :goto_5

    :cond_a
    move-wide v2, v0

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "network"

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "GpsInfoManager"

    const-string v1, "The provider is illegal argument!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    goto/16 :goto_0

    :cond_c
    :try_start_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "gps"

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_d
    const-string v0, "network"

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_e
    const-string v0, "GpsInfoManager"

    const-string v1, "locationManager is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_f
    const-string v0, "no enabled provider"

    invoke-direct {p0, v0}, Lcn/jiguang/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/f;->b()V

    goto/16 :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 7

    const/16 v0, 0x3e9

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsInfoManager"

    const-string v1, "get gps with network time out "

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "gps"

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->e()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jiguang/a/a/b/c;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GpsInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "when location time out "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get only network "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "GpsInfoManager"

    const-string v1, "LOAD_GPS_ACTION_REQUEST_ONLY_NETWORK"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    move v6, v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/jiguang/a/a/b/c;->f:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/c;->d:Lcn/jiguang/a/a/b/f;

    iget-object v0, v0, Lcn/jiguang/a/a/b/f;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "GpsInfoManager"

    const-string v1, "No suitable permission when get last known location!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "GpsInfoManager"

    const-string v1, "The provider is illegal argument!"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jiguang/a/a/b/c;->d()V

    goto/16 :goto_0

    :pswitch_4
    move v6, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/a/a/b/c;->b:Lcn/jiguang/a/a/b/e;

    return-void
.end method
