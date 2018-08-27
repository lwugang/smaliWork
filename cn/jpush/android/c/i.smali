.class public final Lcn/jpush/android/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "Xiaomi"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/i;->a:Ljava/lang/String;

    .line 31
    const-string v0, "huawei"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/i;->b:Ljava/lang/String;

    .line 32
    const-string v0, "Meizu"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/c/i;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)B
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 36
    const-string v0, "PluginWhichPlatform"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return v3

    .line 43
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    const-string v0, "PluginWhichPlatform"

    const-string v1, "MANUFACTURER was empty"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v6, "PluginWhichPlatform"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get MANUFACTURER failed - error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 51
    :cond_1
    sget-object v6, Lcn/jpush/android/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    invoke-static {p0}, Lcn/jpush/android/c/i;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 67
    :goto_2
    const-string v4, "PluginWhichPlatform"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "realPhoneType:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " jPluginPlatformType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0, v2}, Lcn/jpush/android/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {p0, v2}, Lcn/jpush/android/b;->b(Landroid/content/Context;I)Z

    move-result v5

    .line 70
    const-string v6, "PluginWhichPlatform"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "current cache rid is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",regUploaded:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-nez v0, :cond_2

    .line 73
    invoke-static {p0, v2, v1}, Lcn/jpush/android/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 74
    invoke-static {p0, v2, v3}, Lcn/jpush/android/b;->b(Landroid/content/Context;IZ)V

    :cond_2
    move v3, v0

    .line 76
    goto/16 :goto_0

    .line 56
    :cond_3
    sget-object v2, Lcn/jpush/android/c/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-static {p0}, Lcn/jpush/android/c/i;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    move v2, v4

    .line 59
    goto :goto_2

    .line 61
    :cond_4
    sget-object v2, Lcn/jpush/android/c/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-static {p0}, Lcn/jpush/android/c/i;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    move v2, v5

    .line 64
    goto :goto_2

    :cond_5
    move v0, v3

    move v2, v5

    goto :goto_2

    :cond_6
    move v0, v3

    move v2, v3

    goto/16 :goto_2

    :cond_7
    move v0, v3

    move v2, v4

    goto/16 :goto_2

    :cond_8
    move v0, v3

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 346
    const-string v1, "PluginWhichPlatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action - getPluginPlatformConfigInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-nez p0, :cond_0

    .line 348
    const-string v1, "PluginWhichPlatform"

    const-string v2, "context was null"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-object v0

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_2

    .line 356
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 361
    if-eqz v1, :cond_4

    .line 362
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_3

    .line 364
    :cond_1
    const-string v1, "PluginWhichPlatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - not defined in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_1
    const-string v1, "PluginWhichPlatform"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    :try_start_1
    const-string v1, "PluginWhichPlatform"

    const-string v2, "metadata: Can not get metaData from ApplicationInfo"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load plugin sdk config info error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_3
    const/4 v2, 0x3

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 370
    :cond_4
    const-string v1, "PluginWhichPlatform"

    const-string v2, "NO meta data defined in manifest."

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 179
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.display.id"

    aput-object v5, v3, v4

    .line 180
    const-string v4, "android.os.SystemProperties"

    .line 181
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 182
    const-string v5, "get"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    const-string v3, "PluginWhichPlatform"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get flyme version is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 188
    const-string v3, "OS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Flyme 5.1.11.1A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    const-string v3, "OS"

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Flyme OS 5.1.11.1A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_2

    :cond_1
    move v0, v1

    .line 194
    :goto_0
    return v0

    :cond_2
    move v0, v2

    .line 189
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getFlymeVersion wrong error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v2

    .line 194
    goto :goto_0
.end method

.method private static b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v3

    .line 251
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.version.emui"

    aput-object v5, v3, v4

    .line 252
    const-string v4, "android.os.SystemProperties"

    .line 253
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 254
    const-string v5, "get"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    const-string v3, "PluginWhichPlatform"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get EMUI version is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 260
    const-string v3, "EmotionUI_4.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    .line 265
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 260
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getEmuiVersion wrong error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v2

    .line 265
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string v0, "PluginWhichPlatform"

    const-string v1, "context was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/c/i;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 91
    .line 92
    const-string v1, "cn.jpush.android.service.PluginFCMMessagingService"

    invoke-static {p0, v1}, Lcn/jpush/android/d/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cn.jpush.android.service.PluginFCMInstanceIdService"

    .line 93
    invoke-static {p0, v1}, Lcn/jpush/android/d/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 95
    const-string v1, "PluginWhichPlatform"

    const-string v2, "Os version is lower 14 ,will not use fcm"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 1116
    :cond_1
    :try_start_0
    const-string v1, "com.google.firebase.iid.FirebaseInstanceId"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    invoke-static {p0}, Lcn/jpush/android/c/i;->d(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please check *.jar files your project depends on, can\'t load class - com.google.firebase.iid.FirebaseInstanceId \nerror:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please check *.jar files your project depends on."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_2
    const-string v1, "PluginWhichPlatform"

    const-string v2, "AndroidManifest.xml missing service: cn.jpush.android.platforms.PluginFCMMessagingService and cn.jpush.android.platforms.PluginFCMInstanceIdService"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    .line 123
    const-string v4, "com.google.android.gms"

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 126
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    .line 127
    :goto_0
    if-nez v3, :cond_1

    .line 128
    :try_start_1
    const-string v0, "PluginWhichPlatform"

    const-string v4, "google play services is not system app!"

    invoke-static {v0, v4}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 144
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 126
    goto :goto_0

    .line 131
    :cond_1
    const-string v0, "com.google.android.gms.version"

    invoke-static {p0, v0}, Lcn/jpush/android/d/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 133
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-lt v4, v0, :cond_4

    move v0, v2

    .line 135
    :goto_2
    if-nez v0, :cond_3

    .line 136
    :try_start_2
    const-string v4, "PluginWhichPlatform"

    const-string v5, "google play services is out of date , please update."

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 144
    :cond_3
    :goto_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 134
    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    move v0, v1

    move v3, v1

    :goto_4
    const-string v4, "PluginWhichPlatform"

    const-string v5, "no google play services in the device!"

    invoke-static {v4, v5}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 141
    :catch_1
    move-exception v0

    move v3, v1

    move v4, v1

    .line 142
    :goto_5
    const-string v5, "PluginWhichPlatform"

    const-string v6, "get google play services error:"

    invoke-static {v5, v6, v0}, Lcn/jpush/android/d/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    move v3, v4

    goto :goto_3

    :cond_5
    move v0, v1

    .line 144
    goto :goto_1

    .line 141
    :catch_2
    move-exception v0

    move v4, v3

    move v3, v1

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v7, v4

    move v4, v3

    move v3, v0

    move-object v0, v7

    goto :goto_5

    .line 140
    :catch_4
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_5
    move-exception v4

    goto :goto_4
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    .line 152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_3

    const-string v2, "cn.jpush.android.service.PluginMeizuPlatformsReceiver"

    invoke-static {p0, v2}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1198
    :try_start_0
    const-string v2, "com.meizu.cloud.pushsdk.PushManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 154
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcn/jpush/android/c/i;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1201
    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "PluginWhichPlatform"

    const-string v2, "flyme version < 5.1.11.1A , Should not use MeizuPush"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 168
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please check *.jar files your project depends on, can\'t load class - com.meizu.cloud.pushsdk.PushManager \nerror:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please check *.aar files your project depends on."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v1

    .line 168
    goto :goto_1

    .line 170
    :cond_3
    const-string v0, "PluginWhichPlatform"

    const-string v2, "AndroidManifest.xml missing receiver: cn.jpush.android.service.PluginMeizuPlatformsReceiver"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    .line 215
    const-string v2, "cn.jpush.android.service.PluginXiaomiPlatformsReceiver"

    invoke-static {p0, v2}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1205
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 217
    :goto_0
    if-eqz v2, :cond_1

    .line 239
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1208
    goto :goto_0

    .line 220
    :cond_1
    const-string v0, "PluginWhichPlatform"

    const-string v2, "should not Use MIUIPush"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 231
    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please check *.jar files your project depends on, can\'t load class - com.xiaomi.mipush.sdk.MiPushClient \nerror:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please check *.jar files your project depends on."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v1

    .line 231
    goto :goto_1

    .line 237
    :cond_3
    const-string v0, "PluginWhichPlatform"

    const-string v2, "AndroidManifest.xml missing receiver: cn.jpush.android.service.PluginXiaomiPlatformsReceiver"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3

    const-string v2, "cn.jpush.android.service.PluginHuaweiPlatformsReceiver"

    .line 284
    invoke-static {p0, v2}, Lcn/jpush/android/d/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    :try_start_0
    invoke-static {}, Lcn/jpush/android/c/i;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1272
    sget-object v2, Lcom/huawei/hms/support/api/push/HuaweiPush;->HuaweiPushApi:Lcom/huawei/hms/support/api/push/HuaweiPushApi;

    if-eqz v2, :cond_0

    move v2, v0

    .line 286
    :goto_0
    if-eqz v2, :cond_1

    .line 308
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1275
    goto :goto_0

    .line 289
    :cond_1
    const-string v0, "PluginWhichPlatform"

    const-string v2, "emui version must large than 4.0"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 300
    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string v2, "PluginWhichPlatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please check *.jar files your project depends on, can\'t load class - com.huawei.hms.support.api.push.HuaweiPush \nerror:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please check *.jar files your project depends on."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v0, v1

    .line 300
    goto :goto_1

    .line 306
    :cond_3
    const-string v0, "PluginWhichPlatform"

    const-string v2, "AndroidManifest.xml missing receiver: cn.jpush.android.service.PluginHuaweiPlatformsReceiver"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method
