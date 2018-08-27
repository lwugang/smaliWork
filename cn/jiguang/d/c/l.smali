.class public final Lcn/jiguang/d/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;

.field private b:S

.field private c:S


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    iput-short v2, p0, Lcn/jiguang/d/c/l;->b:S

    iput-short v2, p0, Lcn/jiguang/d/c/l;->c:S

    return-void
.end method

.method public constructor <init>(Lcn/jiguang/d/c/m;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/d/c/l;-><init>()V

    invoke-direct {p0, p1}, Lcn/jiguang/d/c/l;->b(Lcn/jiguang/d/c/m;)V

    return-void
.end method

.method private static a(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/c/m;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcn/jiguang/d/c/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ZZ)Ljava/util/Iterator;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p1, :cond_0

    iget-short v1, p0, Lcn/jiguang/d/c/l;->b:S

    sub-int v1, v2, v1

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-short v1, p0, Lcn/jiguang/d/c/l;->b:S

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    if-nez p2, :cond_3

    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-short v0, p0, Lcn/jiguang/d/c/l;->c:S

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    iput-short v0, p0, Lcn/jiguang/d/c/l;->c:S

    :cond_4
    iget-short v0, p0, Lcn/jiguang/d/c/l;->c:S

    add-int/lit8 v3, v0, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lcn/jiguang/d/c/l;->c:S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-short v0, p0, Lcn/jiguang/d/c/l;->b:S

    sub-int v0, v2, v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private b(Lcn/jiguang/d/c/m;)V
    .locals 3

    iget-short v0, p0, Lcn/jiguang/d/c/l;->b:S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-short v2, p0, Lcn/jiguang/d/c/l;->b:S

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/d/c/m;->f()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Iterator;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcn/jiguang/d/c/l;->a(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcn/jiguang/d/c/m;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcn/jiguang/d/c/l;->b(Lcn/jiguang/d/c/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/jiguang/d/c/m;->a(Lcn/jiguang/d/c/m;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "record does not match rrset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcn/jiguang/d/c/m;->f()J

    move-result-wide v2

    invoke-virtual {v0}, Lcn/jiguang/d/c/m;->f()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcn/jiguang/d/c/m;->f()J

    move-result-wide v2

    invoke-virtual {v0}, Lcn/jiguang/d/c/m;->f()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-virtual {p1}, Lcn/jiguang/d/c/m;->g()Lcn/jiguang/d/c/m;

    move-result-object p1

    invoke-virtual {v0}, Lcn/jiguang/d/c/m;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/jiguang/d/c/m;->a(J)V

    :cond_3
    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/jiguang/d/c/l;->b(Lcn/jiguang/d/c/m;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/c/m;

    invoke-virtual {v0}, Lcn/jiguang/d/c/m;->g()Lcn/jiguang/d/c/m;

    move-result-object v0

    invoke-virtual {p1}, Lcn/jiguang/d/c/m;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jiguang/d/c/m;->a(J)V

    iget-object v2, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final declared-synchronized b()Lcn/jiguang/d/c/m;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rrset is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/d/c/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/jiguang/d/c/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{empty}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/jiguang/d/c/l;->b()Lcn/jiguang/d/c/m;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/d/c/m;->b()Lcn/jiguang/d/c/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/jiguang/d/c/l;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcn/jiguang/d/c/l;->a(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/d/c/l;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lcn/jiguang/d/c/l;->b:S

    if-lez v1, :cond_1

    const-string v1, " sigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, v4, v4}, Lcn/jiguang/d/c/l;->a(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/d/c/l;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
