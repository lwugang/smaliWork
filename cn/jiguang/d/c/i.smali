.class final Lcn/jiguang/d/c/i;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/Integer;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lcn/jiguang/d/c/i;->a:[Ljava/lang/Integer;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcn/jiguang/d/c/i;->a:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcn/jiguang/d/c/i;->a:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/d/c/i;->d:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcn/jiguang/d/c/i;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/c/i;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/c/i;->c:Ljava/util/HashMap;

    const v0, 0x7fffffff

    iput v0, p0, Lcn/jiguang/d/c/i;->g:I

    return-void
.end method

.method private static c(I)Ljava/lang/Integer;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lcn/jiguang/d/c/i;->a:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcn/jiguang/d/c/i;->a:[Ljava/lang/Integer;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcn/jiguang/d/c/i;->g:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/jiguang/d/c/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcn/jiguang/d/c/i;->g:I

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcn/jiguang/d/c/i;->d(I)V

    invoke-static {p1}, Lcn/jiguang/d/c/i;->c(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcn/jiguang/d/c/i;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/jiguang/d/c/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/jiguang/d/c/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget v1, p0, Lcn/jiguang/d/c/i;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/d/c/i;->h:Z

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcn/jiguang/d/c/i;->d(I)V

    iget-object v0, p0, Lcn/jiguang/d/c/i;->c:Ljava/util/HashMap;

    invoke-static {p1}, Lcn/jiguang/d/c/i;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/d/c/i;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/jiguang/d/c/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
