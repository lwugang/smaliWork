.class Lezy/boost/update/UpdateAgent$1;
.super Landroid/os/AsyncTask;
.source "UpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lezy/boost/update/UpdateAgent;->doCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lezy/boost/update/UpdateAgent;


# direct methods
.method constructor <init>(Lezy/boost/update/UpdateAgent;)V
    .locals 0
    .param p1, "this$0"    # Lezy/boost/update/UpdateAgent;

    .prologue
    .line 199
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateAgent$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-static {v0}, Lezy/boost/update/UpdateAgent;->access$100(Lezy/boost/update/UpdateAgent;)Lezy/boost/update/IUpdateChecker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    new-instance v1, Lezy/boost/update/UpdateChecker;

    invoke-direct {v1}, Lezy/boost/update/UpdateChecker;-><init>()V

    invoke-static {v0, v1}, Lezy/boost/update/UpdateAgent;->access$102(Lezy/boost/update/UpdateAgent;Lezy/boost/update/IUpdateChecker;)Lezy/boost/update/IUpdateChecker;

    .line 205
    :cond_0
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-static {v0}, Lezy/boost/update/UpdateAgent;->access$100(Lezy/boost/update/UpdateAgent;)Lezy/boost/update/IUpdateChecker;

    move-result-object v0

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    iget-object v2, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-static {v2}, Lezy/boost/update/UpdateAgent;->access$200(Lezy/boost/update/UpdateAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lezy/boost/update/IUpdateChecker;->check(Lezy/boost/update/ICheckAgent;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateAgent$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 211
    iget-object v0, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-virtual {v0}, Lezy/boost/update/UpdateAgent;->doCheckFinish()V

    .line 212
    return-void
.end method
