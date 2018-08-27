.class public final Lcn/jiguang/d/b/i;
.super Ljava/lang/Object;


# static fields
.field private static l:Lcn/jiguang/d/b/i;

.field private static m:Ljava/util/regex/Pattern;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/lang/String;

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/jiguang/d/b/i;->l:Lcn/jiguang/d/b/i;

    const-string v0, "(([0-1]?[0-9]{1,2}\\.)|(2[0-4][0-9]\\.)|(25[0-5]\\.)){3}(([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jiguang/d/b/i;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/i;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/i;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcn/jiguang/d/b/i;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/i;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/d/b/i;->i:Ljava/util/List;

    iput-boolean v1, p0, Lcn/jiguang/d/b/i;->k:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcn/jiguang/d/b/i;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/b/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/jiguang/d/a/a;->m()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcn/jiguang/g/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ips"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "SisInfo"

    const-string v1, "ips is null"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SisInfo"

    const-string v2, "parse sis :"

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "SisInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ips:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "op_conns"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "SisInfo"

    const-string v4, "op_conns is null"

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v3, :cond_7

    const-string v1, "SisInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "op_conns:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcn/jiguang/d/b/i;->b:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const-string v1, "sis_ips"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "SisInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sis_ips:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcn/jiguang/d/b/i;->c:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const-string v0, "data_report"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/d/b/i;->d:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcn/jiguang/d/b/i;->g:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    iput-object p1, p0, Lcn/jiguang/d/b/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "SisInfo"

    const-string v1, "Unexpected - Invalid sis - no ips key."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcn/jiguang/d/b/i;->k:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SisInfo"

    const-string v1, "Unexpected - invalid sis - ips array len is 0"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcn/jiguang/d/b/i;->k:Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lcn/jiguang/d/b/j;

    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcn/jiguang/d/b/j;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcn/jiguang/d/b/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/jiguang/d/b/i;->f:Ljava/lang/String;

    iget v0, v1, Lcn/jiguang/d/b/j;->b:I

    iput v0, p0, Lcn/jiguang/d/b/i;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcn/jiguang/d/b/i;->b:Ljava/util/List;

    if-nez v0, :cond_3

    const-string v0, "SisInfo"

    const-string v1, "No op conn."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SisInfo"

    const-string v2, "Failed to parse ips-1 - main ip."

    invoke-static {v1, v2, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Lcn/jiguang/d/b/i;->k:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/jiguang/d/b/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    new-instance v1, Lcn/jiguang/d/b/j;

    invoke-direct {v1, v0}, Lcn/jiguang/d/b/j;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/d/b/i;->h:Ljava/util/List;

    iget-object v4, v1, Lcn/jiguang/d/b/j;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/jiguang/d/b/i;->i:Ljava/util/List;

    iget v1, v1, Lcn/jiguang/d/b/j;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "SisInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to parse op_conn - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/d/b/i;->h:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/d/b/i;->i:Ljava/util/List;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/b/i;->k:Z

    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/d/b/i;->c:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/b/i;->d:Z

    return v0
.end method

.method public final h()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x2

    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jiguang/d/b/i;->j:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/d/a/a;->c(Ljava/lang/String;)V

    if-le v1, v2, :cond_2

    :try_start_0
    new-instance v2, Lcn/jiguang/d/b/j;

    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcn/jiguang/d/b/j;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcn/jiguang/d/b/j;->a:Ljava/lang/String;

    iget v2, v2, Lcn/jiguang/d/b/j;->b:I

    invoke-static {v0, v2}, Lcn/jiguang/d/a/a;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-le v1, v4, :cond_3

    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/d/d/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/d/b/i;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/d/a/d;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcn/jiguang/d/b/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/b/i;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/d/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SisInfo"

    const-string v3, "Failed to parse ips-2 - default ip."

    invoke-static {v2, v3, v0}, Lcn/jiguang/e/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string v0, "SisInfo"

    const-string v2, "Only main ip in sis."

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "SisInfo"

    const-string v1, "No report backup ip."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
