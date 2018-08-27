.class final Lcn/jiguang/d/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/d/d/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/d/d/p;->b:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcn/jiguang/d/d/p;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/d/d/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/d/d/p;->b:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcn/jiguang/d/d/p;->c:Z

    invoke-static {v0, v1, v2}, Lcn/jiguang/d/d/o;->b(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    return-void
.end method
