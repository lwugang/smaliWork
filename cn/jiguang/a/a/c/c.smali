.class final Lcn/jiguang/a/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/d/d/q;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/c/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/a/a/c/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/jiguang/a/a/c/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/a/a/c/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/jiguang/a/a/c/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/c/c;->a:Landroid/content/Context;

    const-string v1, "last_report_device_info"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
