.class public final Lcn/jiguang/d/e/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([BI)[B
    .locals 4

    invoke-static {p0, p1}, Lcn/jiguang/d/g/a/a;->a([BI)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "CorePackage"

    const-string v1, "totalRegBuf length :0"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "CorePackage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "convertData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/jiguang/g/k;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
