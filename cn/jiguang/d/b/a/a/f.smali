.class public final Lcn/jiguang/d/b/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/jiguang/d/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/jiguang/d/b/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/jiguang/d/b/f;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v0, Lcn/jiguang/d/b/a/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/jiguang/d/b/a/d;-><init>(Landroid/content/Context;Lcn/jiguang/d/b/f;J)V

    iput-object v0, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/i;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/jiguang/d/b/a/a/i;-><init>(Lcn/jiguang/d/b/a/d;Z)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/a;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/a;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/l;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/l;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/d;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/d;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/e;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/e;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/h;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/h;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/k;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/k;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/b;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    invoke-direct {v1, v2}, Lcn/jiguang/d/b/a/a/b;-><init>(Lcn/jiguang/d/b/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcn/jiguang/d/b/a/a/i;

    iget-object v2, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/jiguang/d/b/a/a/i;-><init>(Lcn/jiguang/d/b/a/d;Z)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcn/jiguang/d/b/a/a/f;)Lcn/jiguang/d/b/a/d;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->b:Lcn/jiguang/d/b/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jiguang/d/b/a/a/g;

    invoke-direct {v1, p0}, Lcn/jiguang/d/b/a/a/g;-><init>(Lcn/jiguang/d/b/a/a/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "JSis"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sis report thread start failed,error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 5

    iget-object v0, p0, Lcn/jiguang/d/b/a/a/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/b/a/a/j;

    :try_start_0
    invoke-virtual {v0}, Lcn/jiguang/d/b/a/a/j;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "JSis"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sisAndConnect error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
