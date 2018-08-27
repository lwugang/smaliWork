.class public Lverify/tools/WebViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebViewActivity.java"


# static fields
.field public static final EXTRA_KEY:Ljava/lang/String; = "url"


# instance fields
.field private firstTime:J

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, "secondTime":J
    iget-wide v2, p0, Lverify/tools/WebViewActivity;->firstTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    .line 54
    const-string v2, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 55
    iput-wide v0, p0, Lverify/tools/WebViewActivity;->firstTime:J

    .line 60
    :goto_1a
    return-void

    .line 57
    :cond_1b
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lverify/tools/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 25
    .local v1, "webView":Landroid/webkit/WebView;
    invoke-virtual {p0, v1}, Lverify/tools/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 26
    const-string v2, ""

    const-string v3, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-static {p0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lverify/tools/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 27
    new-instance v2, Lverify/tools/WebViewActivity$1;

    invoke-direct {v2, p0}, Lverify/tools/WebViewActivity$1;-><init>(Lverify/tools/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 36
    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 37
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 38
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 39
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 40
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 41
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 42
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 43
    invoke-virtual {p0}, Lverify/tools/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 65
    iget-object v0, p0, Lverify/tools/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    return-void
.end method
