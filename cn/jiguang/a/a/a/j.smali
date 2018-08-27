.class final Lcn/jiguang/a/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/a/a/a/g;


# instance fields
.field final synthetic a:Lcn/jiguang/g/n;

.field final synthetic b:I

.field final synthetic c:Lcn/jiguang/a/a/a/h;


# direct methods
.method constructor <init>(Lcn/jiguang/a/a/a/h;Lcn/jiguang/g/n;I)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/a/j;->c:Lcn/jiguang/a/a/a/h;

    iput-object p2, p0, Lcn/jiguang/a/a/a/j;->a:Lcn/jiguang/g/n;

    iput p3, p0, Lcn/jiguang/a/a/a/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcn/jiguang/a/a/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/a/a/a/j;->a:Lcn/jiguang/g/n;

    const-string v2, "ArpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "thread"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/jiguang/a/a/a/j;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/g/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/a/a/a/j;->c:Lcn/jiguang/a/a/a/h;

    invoke-static {v0}, Lcn/jiguang/a/a/a/h;->c(Lcn/jiguang/a/a/a/h;)[Z

    move-result-object v0

    iget v2, p0, Lcn/jiguang/a/a/a/j;->b:I

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    invoke-static {}, Lcn/jiguang/a/a/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
