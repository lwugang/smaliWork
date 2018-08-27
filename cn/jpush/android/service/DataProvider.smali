.class public Lcn/jpush/android/service/DataProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v1, "DataProvider"

    const-string v2, "URI is illegal"

    invoke-static {v1, v2}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "DataProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getName failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private getWithCache(Lcn/jiguang/g/b/e;Lcn/jiguang/g/b/b;Ljava/lang/String;I)Ljava/io/Serializable;
    .locals 1

    invoke-virtual {p2, p3, p4}, Lcn/jiguang/g/b/b;->a(Ljava/lang/String;I)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4}, Lcn/jiguang/g/b/e;->a(Ljava/lang/String;I)Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcn/jiguang/g/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcn/jpush/android/service/DataProvider;->getName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcn/jiguang/g/b/b;->a(Ljava/lang/String;)Lcn/jiguang/g/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/g/b/b;->a()V

    invoke-virtual {p0}, Lcn/jpush/android/service/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jiguang/g/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/g/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/jiguang/g/b/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcn/jpush/android/service/DataProvider;->getName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, -0x1

    :try_start_0
    const-string v1, "key"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v5, v2

    move-object v2, v1

    move v1, v5

    :goto_1
    if-ltz v1, :cond_2

    const/4 v4, 0x6

    if-le v1, v4, :cond_3

    :cond_2
    const-string v3, "DataProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'s type is invalid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcn/jpush/android/service/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/jiguang/g/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/g/b/e;

    move-result-object v4

    invoke-static {v3}, Lcn/jiguang/g/b/b;->a(Ljava/lang/String;)Lcn/jiguang/g/b/b;

    move-result-object v3

    invoke-direct {p0, v4, v3, v2, v1}, Lcn/jpush/android/service/DataProvider;->getWithCache(Lcn/jiguang/g/b/e;Lcn/jiguang/g/b/b;Ljava/lang/String;I)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    array-length v1, p4

    if-eqz v1, :cond_0

    array-length v1, p2

    array-length v3, p4

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcn/jpush/android/service/DataProvider;->getName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcn/jiguang/g/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/g/b/e;

    move-result-object v3

    invoke-static {v1}, Lcn/jiguang/g/b/b;->a(Ljava/lang/String;)Lcn/jiguang/g/b/b;

    move-result-object v4

    array-length v5, p2

    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    invoke-direct {v1, p2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    new-array v6, v5, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-ge v2, v5, :cond_4

    :try_start_1
    aget-object v7, p2, v2

    aget-object v8, p4, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v3, v4, v7, v8}, Lcn/jpush/android/service/DataProvider;->getWithCache(Lcn/jiguang/g/b/e;Lcn/jiguang/g/b/b;Ljava/lang/String;I)Ljava/io/Serializable;

    move-result-object v7

    aput-object v7, v6, v2

    aget-object v7, v6, v2

    if-eqz v7, :cond_2

    aget-object v7, v6, v2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v7, v6, v2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_2
    const-string v7, "DataProvider"

    const-string v8, "selectionArgs should be int"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "DataProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcn/jpush/android/service/DataProvider;->getName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcn/jiguang/g/b/b;->a(Ljava/lang/String;)Lcn/jiguang/g/b/b;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcn/jiguang/g/b/b;->a(Landroid/content/ContentValues;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jiguang/g/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/g/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcn/jiguang/g/b/e;->a(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    goto :goto_0
.end method
