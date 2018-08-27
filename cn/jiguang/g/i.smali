.class public final Lcn/jiguang/g/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e9

    const-string v2, "Exceed buffer size. Please contact support."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e8

    const-string v2, "Connection failed. Please check your connection and retry later!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e6

    const-string v2, "Sending failed or timeout. Please Retry later!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e5

    const-string v2, "Receiving failed or timeout. Please Retry later!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e4

    const-string v2, "Connection is closed. Please Retry later!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e2

    const-string v2, "Response timeout. Please Retry later!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, -0x3e1

    const-string v2, "Invalid socket. Please Retry later!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "Failed to register!"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ed

    const-string v2, "Your appKey and android package name are not matched. Please double check them according to Application you created on Portal."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ee

    const-string v2, "You android package name is not exist, Please register your pacakge name in Portal."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ef

    const-string v2, "Invalid Imei, Register again."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f1

    const-string v2, "Your appKey is related to a non-Android App.Please use your Android App\'s appKey, or add an Android app for this appKey."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2710

    const-string v2, "Receiver data parse error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-string v2, "102 - Incorrect password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "108 - Incorrect uid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f4

    const-string v2, "Server reject this connection, will clear cache and restart connect."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jiguang/g/i;->b:J

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "StatusCode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown error code - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jiguang/g/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "rmv"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "app_add_rmv"

    invoke-static {v2, v1, v3}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "add"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "app_add_rmv"

    invoke-static {v2, v1, v3}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v2, "install_type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
