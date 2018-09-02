.class Lverify/tools/WebViewActivity$2;
.super Landroid/webkit/WebViewClient;
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
    .line 36
    iput-object p1, p0, Lverify/tools/WebViewActivity$2;->this$0:Lverify/tools/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 40
    return-void
.end method
