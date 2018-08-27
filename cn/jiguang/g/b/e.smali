.class public final Lcn/jiguang/g/b/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Boolean;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcn/jiguang/g/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jiguang/g/b/e;->f:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/g/b/e;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/g/b/e;->b:Ljava/lang/String;

    sget-object v0, Lcn/jiguang/g/b/e;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/jiguang/g/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/jiguang/g/b/e;->a:Ljava/lang/Boolean;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".DataProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/g/b/e;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/g/b/e;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/g/b/e;->e:Landroid/content/ContentResolver;

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    goto :goto_0

    :cond_2
    const-string v0, "SpResolver"

    const-string v1, "create SpResolver error,context is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/g/b/e;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SpResolver"

    const-string v1, "content provider name is empty"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcn/jiguang/g/b/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/g/b/e;

    if-nez v0, :cond_0

    sget-object v1, Lcn/jiguang/g/b/e;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jiguang/g/b/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jiguang/g/b/e;

    if-nez v0, :cond_2

    new-instance v0, Lcn/jiguang/g/b/e;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/g/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcn/jiguang/g/b/e;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/jiguang/g/b/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DataProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/g/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/g/b/e;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/g/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcn/jiguang/g/b/e;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/g/b/e;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/g/b/e;->d:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/g/b/e;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private c(Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/jiguang/g/b/a;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance p1, Lcn/jiguang/g/b/a;

    invoke-direct {p1}, Lcn/jiguang/g/b/a;-><init>()V

    :goto_0
    return-object p1

    :cond_1
    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v2, Lcn/jiguang/g/b/a;

    invoke-direct {v2}, Lcn/jiguang/g/b/a;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/jiguang/g/b/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-static {v0}, Lcn/jiguang/g/b/a;->a(Ljava/io/Serializable;)I

    move-result v0

    invoke-static {v3, v1, v0}, Lcn/jiguang/g/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1, v0}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    goto :goto_1

    :cond_3
    move-object p1, v2

    goto :goto_0

    :cond_4
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get SharedPref when read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcn/jiguang/g/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p2

    :goto_0
    return-object p2

    :cond_0
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get SharedPref when read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/g/b/e;->e:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/d/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/g/b/e;->e:Landroid/content/ContentResolver;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/g/b/e;->e:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private d(Lcn/jiguang/g/b/a;)Z
    .locals 3

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcn/jiguang/g/b/c;->a(Landroid/content/SharedPreferences;Lcn/jiguang/g/b/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get SharedPref when write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcn/jiguang/g/b/c;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get SharedPref when write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/jiguang/g/b/a;->b()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcn/jiguang/g/b/a;

    invoke-direct {v0}, Lcn/jiguang/g/b/a;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcn/jiguang/g/b/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcn/jiguang/g/b/e;->c(Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/jiguang/g/b/e;->d()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get resolver or path when get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/g/b/e;->c(Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {v0, v1, p1}, Lcn/jiguang/g/b/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content provider error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when read "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/g/b/e;->c(Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Ljava/io/Serializable;
    .locals 3

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcn/jiguang/g/b/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Ljava/io/Serializable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get SharedPref when read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcn/jiguang/g/b/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcn/jiguang/g/b/e;->c(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-direct {p0}, Lcn/jiguang/g/b/e;->d()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get resolver or path when get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/jiguang/g/b/e;->c(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "type"

    invoke-static {p2}, Lcn/jiguang/g/b/a;->a(Ljava/io/Serializable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_4

    move-object p2, v0

    goto :goto_0

    :cond_4
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_5
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_6
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_7

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_7
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    :cond_8
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object p2, v0

    goto :goto_0

    :cond_9
    instance-of v0, p2, Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_a

    move-object p2, v1

    goto :goto_0

    :cond_a
    move-object p2, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content provider error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when get "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/jiguang/g/b/e;->c(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p2

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpResolver"

    const-string v1, "can\'t get SharedPref when clear"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentValues;)Z
    .locals 3

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcn/jiguang/g/b/c;->a(Landroid/content/SharedPreferences;Landroid/content/ContentValues;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get SharedPref when write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcn/jiguang/g/b/a;)Z
    .locals 4

    sget-object v0, Lcn/jiguang/g/b/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/jiguang/g/b/e;->d(Lcn/jiguang/g/b/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/jiguang/g/b/e;->d()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get resolver or path when write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/g/b/e;->d(Lcn/jiguang/g/b/a;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0, v1, p1}, Lcn/jiguang/g/b/d;->b(Landroid/content/ContentResolver;Ljava/lang/String;Lcn/jiguang/g/b/a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content provider error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when write "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/g/b/e;->d(Lcn/jiguang/g/b/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    sget-object v0, Lcn/jiguang/g/b/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/jiguang/g/b/e;->d(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/jiguang/g/b/e;->d()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcn/jiguang/g/b/e;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "SpResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t get resolver or path when write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/jiguang/g/b/e;->d(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0, v1, p1, p2}, Lcn/jiguang/g/b/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content provider error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when write "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcn/jiguang/g/b/e;->d(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    goto :goto_0
.end method
