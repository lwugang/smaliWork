.class public Lcn/jpush/android/service/TagAliasReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 29
    if-nez p2, :cond_0

    .line 30
    const-string v0, "TagAliasReceiver"

    const-string v1, "TagAliasOperator onReceive intent is null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "tagalias_seqid"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 34
    const-string v0, "tagalias_errorcode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 35
    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 36
    const-string v0, "TagAliasReceiver"

    const-string v1, "TagAliasOperator onReceive rid is invalide"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcn/jpush/android/service/d;->a(Landroid/content/Context;JILandroid/content/Intent;)V

    goto :goto_0
.end method
