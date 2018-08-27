.class Lezy/boost/update/UpdateAgent$DefaultFailureListener;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFailureListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$DefaultFailureListener;->mContext:Landroid/content/Context;

    .line 294
    return-void
.end method


# virtual methods
.method public onFailure(Lezy/boost/update/UpdateError;)V
    .locals 3
    .param p1, "error"    # Lezy/boost/update/UpdateError;

    .prologue
    .line 298
    invoke-virtual {p1}, Lezy/boost/update/UpdateError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->log(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$DefaultFailureListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lezy/boost/update/UpdateError;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 300
    return-void
.end method
