.class final Lcn/jpush/android/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/support/api/client/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/c/a;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/support/api/client/ResultCallback",
        "<",
        "Lcom/huawei/hms/support/api/push/TokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/c/a;


# direct methods
.method constructor <init>(Lcn/jpush/android/c/a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcn/jpush/android/c/a$1;->a:Lcn/jpush/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 96
    check-cast p1, Lcom/huawei/hms/support/api/push/TokenResult;

    .line 1100
    :try_start_0
    const-string v0, "PluginHuaweiApiClientCallBack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke get token interface success,result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :goto_0
    return-void

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    const-string v1, "PluginHuaweiApiClientCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get token failed - error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
