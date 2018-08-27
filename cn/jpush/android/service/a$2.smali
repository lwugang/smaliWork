.class final Lcn/jpush/android/service/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/service/a;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/jpush/android/service/a;


# direct methods
.method constructor <init>(Lcn/jpush/android/service/a;J)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcn/jpush/android/service/a$2;->b:Lcn/jpush/android/service/a;

    iput-wide p2, p0, Lcn/jpush/android/service/a$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/a$2;->b:Lcn/jpush/android/service/a;

    invoke-static {v0}, Lcn/jpush/android/service/a;->a(Lcn/jpush/android/service/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;)Lcn/jpush/android/data/d;

    move-result-object v1

    .line 219
    iget-wide v2, p0, Lcn/jpush/android/service/a$2;->a:J

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcn/jpush/android/data/d;->a(JI)Lcn/jpush/android/data/e;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->c()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 223
    const-string v2, "JPushLocalNotificationCenter"

    const-string v3, "remove "

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v8

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->b()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 226
    const-string v2, "JPushLocalNotificationCenter"

    const-string v3, "repeat add"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v2

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v8

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 243
    const-string v1, "JPushLocalNotificationCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->b()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 229
    const-string v2, "JPushLocalNotificationCenter"

    const-string v3, "send broadcast"

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 231
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 232
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "repeat add"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    iget-object v2, p0, Lcn/jpush/android/service/a$2;->b:Lcn/jpush/android/service/a;

    iget-object v3, p0, Lcn/jpush/android/service/a$2;->b:Lcn/jpush/android/service/a;

    invoke-static {v3}, Lcn/jpush/android/service/a;->a(Lcn/jpush/android/service/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/jpush/android/service/a$2;->b:Lcn/jpush/android/service/a;

    invoke-static {v5}, Lcn/jpush/android/service/a;->b(Lcn/jpush/android/service/a;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v2, v3, v4, v5, v6}, Lcn/jpush/android/service/a;->a(Lcn/jpush/android/service/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Lcn/jpush/android/data/e;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->f()J

    move-result-wide v8

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/d;->b(JIIILjava/lang/String;JJ)J

    goto/16 :goto_0

    .line 238
    :cond_4
    const-string v0, "JPushLocalNotificationCenter"

    const-string v1, "already triggered"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
