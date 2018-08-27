.class public abstract Lcn/jpush/android/data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x781699e15e8c3b42L


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:I

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/lang/String;

.field private a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:B

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Z

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-byte v0, p0, Lcn/jpush/android/data/b;->e:B

    .line 74
    iput v0, p0, Lcn/jpush/android/data/b;->h:I

    .line 90
    iput v1, p0, Lcn/jpush/android/data/b;->l:I

    .line 118
    iput-object v2, p0, Lcn/jpush/android/data/b;->s:Ljava/util/List;

    .line 161
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->C:Z

    .line 162
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->D:Z

    .line 163
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->E:Z

    .line 165
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->a:Z

    .line 166
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->F:Z

    .line 167
    iput v1, p0, Lcn/jpush/android/data/b;->G:I

    .line 171
    iput-object v2, p0, Lcn/jpush/android/data/b;->H:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 360
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    :cond_0
    const-string v0, "Entity"

    const-string v1, "The url is a picture resources."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v1, "Entity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Big picture notification resource path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v1, 0x5

    const-wide/16 v2, 0x1388

    const/4 v4, 0x4

    invoke-static {p1, v1, v2, v3, v4}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJI)[B

    move-result-object v1

    .line 368
    if-eqz v1, :cond_1

    .line 370
    :try_start_0
    invoke-static {v0, v1}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 374
    const-string v0, ""

    goto :goto_0

    .line 377
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 380
    :cond_2
    const-string v0, "Entity"

    const-string v1, "The url is not a picture resources."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, ""

    goto :goto_0
.end method

.method static a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v0, 0x1

    .line 323
    const-string v1, "Entity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action:loadHtmlImageResources - urlPrefix:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p2}, Lcn/jpush/android/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 325
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 326
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    if-eqz v0, :cond_5

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    :goto_1
    const/4 v5, 0x5

    const-wide/16 v6, 0x1388

    const/4 v8, 0x4

    invoke-static {v3, v5, v6, v7, v8}, Lcn/jpush/android/b/a;->a(Ljava/lang/String;IJI)[B

    move-result-object v5

    .line 332
    if-eqz v5, :cond_2

    .line 335
    :try_start_0
    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-static {v0}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_0
    if-nez p4, :cond_1

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcn/jpush/android/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_2
    invoke-static {v0, v5}, Lcn/jpush/android/d/c;->a(Ljava/lang/String;[B)Z

    .line 344
    const-string v3, "Entity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Succeed to load image - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string v1, "Entity"

    const-string v3, "Write storage error,  create img file fail."

    invoke-static {v1, v3, v0}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 348
    goto :goto_0

    .line 342
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcn/jpush/android/d/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 350
    :cond_2
    const/16 v0, 0x3fc

    invoke-static {p1, v3}, Lcn/jpush/android/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1, p1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    move v1, v2

    .line 353
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 355
    :cond_4
    return v0

    :cond_5
    move-object v3, v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcn/jpush/android/data/b;->a:Z

    return v0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    const-string v0, "Entity"

    const-string v3, "action: parse - base entity"

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "full_screen"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/jpush/android/data/b;->r:Z

    .line 211
    const-string v0, "n_flag"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->t:I

    .line 212
    const-string v0, "n_title"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    .line 213
    const-string v0, "n_content"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->v:Ljava/lang/String;

    .line 214
    const-string v0, "n_style"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->w:I

    .line 215
    const-string v0, "n_big_text"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->x:Ljava/lang/String;

    .line 216
    const-string v0, "n_big_pic_path"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->y:Ljava/lang/String;

    .line 217
    const-string v0, "n_inbox"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->z:Ljava/lang/String;

    .line 218
    const-string v0, "n_extras"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->n:Ljava/lang/String;

    .line 219
    const-string v0, "n_priority"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->A:I

    .line 220
    const-string v0, "n_category"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/b;->B:Ljava/lang/String;

    .line 221
    const-string v0, "n_alert_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/b;->l:I

    .line 223
    iget-object v0, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-boolean v0, p0, Lcn/jpush/android/data/b;->i:Z

    if-nez v0, :cond_2

    .line 225
    const-string v0, "Entity"

    const-string v1, "Invalid - empty notification title for internal"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    const/16 v1, 0x3e4

    .line 1033
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, p1}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 250
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 210
    goto/16 :goto_0

    .line 230
    :cond_2
    const-string v0, "Entity"

    const-string v3, "Not found notificaiton title for developer mode. Use the application name."

    invoke-static {v0, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcn/jpush/android/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/data/b;->u:Ljava/lang/String;

    .line 238
    :cond_3
    iget-object v0, p0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    const-string v3, "ad_content"

    invoke-static {p1, v0, p2, v3}, Lcn/jpush/android/a/g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    if-nez v0, :cond_4

    .line 240
    iget-boolean v0, p0, Lcn/jpush/android/data/b;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jpush/android/data/b;->f:Z

    if-eqz v0, :cond_0

    move v2, v1

    .line 241
    goto :goto_1

    .line 246
    :cond_4
    iget-boolean v2, p0, Lcn/jpush/android/data/b;->i:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcn/jpush/android/data/b;->f:Z

    if-eqz v2, :cond_5

    .line 247
    iput-boolean v1, p0, Lcn/jpush/android/data/b;->a:Z

    .line 250
    :cond_5
    invoke-virtual {p0, v0}, Lcn/jpush/android/data/b;->a(Lorg/json/JSONObject;)Z

    move-result v2

    goto :goto_1
.end method

.method protected abstract a(Lorg/json/JSONObject;)Z
.end method
