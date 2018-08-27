.class final Lcn/jiguang/a/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/b/c;


# direct methods
.method constructor <init>(Lcn/jiguang/a/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get location from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    invoke-static {v2}, Lcn/jiguang/a/a/b/c;->a(Lcn/jiguang/a/a/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    iget-object v1, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    invoke-static {v1}, Lcn/jiguang/a/a/b/c;->a(Lcn/jiguang/a/a/b/c;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcn/jiguang/a/a/b/c;->a(Lcn/jiguang/a/a/b/c;Landroid/location/Location;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    invoke-static {v0}, Lcn/jiguang/a/a/b/c;->b(Lcn/jiguang/a/a/b/c;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderDisabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    invoke-static {v0}, Lcn/jiguang/a/a/b/c;->b(Lcn/jiguang/a/a/b/c;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProviderEnabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "GpsInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStatusChanged status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/b/d;->a:Lcn/jiguang/a/a/b/c;

    invoke-static {v0}, Lcn/jiguang/a/a/b/c;->b(Lcn/jiguang/a/a/b/c;)V

    :cond_0
    return-void
.end method
