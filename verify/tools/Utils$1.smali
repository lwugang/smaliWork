.class final Lverify/tools/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lverify/tools/CheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lverify/tools/Utils;->verify(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lverify/tools/Utils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseResult(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 15
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lverify/tools/Utils$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lverify/tools/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lverify/tools/Utils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 18
    iget-object v1, p0, Lverify/tools/Utils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 20
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_20
    return-void
.end method
