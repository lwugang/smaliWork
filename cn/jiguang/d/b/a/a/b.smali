.class public final Lcn/jiguang/d/b/a/a/b;
.super Lcn/jiguang/d/b/a/a/j;


# direct methods
.method public constructor <init>(Lcn/jiguang/d/b/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/d/b/a/a/j;-><init>(Lcn/jiguang/d/b/a/d;)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 5

    const/4 v0, -0x1

    const-string v1, "DefaultConnPolicy"

    sget-object v2, Lcn/jiguang/d/a;->f:Lcn/jiguang/c/b;

    invoke-interface {v2}, Lcn/jiguang/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/d/d/c;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcn/jiguang/d/b/a/a/c;

    invoke-direct {v0, p0}, Lcn/jiguang/d/b/a/a/c;-><init>(Lcn/jiguang/d/b/a/a/b;)V

    const/16 v3, 0x1b58

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b5b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b5c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b5d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b5e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b5f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x1b61

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Lcn/jiguang/d/b/a/a;

    invoke-direct {v3}, Lcn/jiguang/d/b/a/a;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v2, v0, v1}, Lcn/jiguang/d/b/a/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcn/jiguang/d/b/a/a/b;->b(Lcn/jiguang/d/b/a/a;)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
