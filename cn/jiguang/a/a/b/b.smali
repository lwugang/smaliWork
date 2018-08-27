.class final Lcn/jiguang/a/a/b/b;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/b/a;


# direct methods
.method public constructor <init>(Lcn/jiguang/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;I)I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-static {v1, v0}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;Lorg/json/JSONArray;)V

    const-string v0, "CellInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSignalStrengthsChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-static {v2}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-virtual {v0}, Lcn/jiguang/a/a/b/a;->d()V

    return-void
.end method
