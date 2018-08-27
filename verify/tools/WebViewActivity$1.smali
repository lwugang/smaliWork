.class Lverify/tools/WebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lverify/tools/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lverify/tools/WebViewActivity;


# direct methods
.method constructor <init>(Lverify/tools/WebViewActivity;)V
    .registers 2
    .param p1, "this$0"    # Lverify/tools/WebViewActivity;

    .prologue
    .line 27
    iput-object p1, p0, Lverify/tools/WebViewActivity$1;->this$0:Lverify/tools/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 31
    const/16 v0, 0x46

    if-le p2, v0, :cond_e

    .line 32
    iget-object v0, p0, Lverify/tools/WebViewActivity$1;->this$0:Lverify/tools/WebViewActivity;

    iget-object v0, v0, Lverify/tools/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 34
    :cond_e
    return-void
.end method
