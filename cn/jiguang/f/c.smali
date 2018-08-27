.class public final Lcn/jiguang/f/c;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/Object;

.field static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcn/jiguang/f/c;->a:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcn/jiguang/f/c;->b:[Ljava/lang/Class;

    return-void
.end method

.method static a([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcn/jiguang/f/c;->b:[Ljava/lang/Class;

    :cond_1
    return-object p0
.end method

.method static varargs a([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    sget-object v2, Lcn/jiguang/f/c;->b:[Ljava/lang/Class;

    goto :goto_0

    :cond_1
    array-length v0, p0

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_2
    aput-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method static b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    sget-object p0, Lcn/jiguang/f/c;->a:[Ljava/lang/Object;

    :cond_1
    return-object p0
.end method
