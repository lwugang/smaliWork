.class public Lcn/jpush/android/e/a/c;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcn/jpush/android/e/a/d;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 20
    const-string v0, "InjectedChromeClient"

    iput-object v0, p0, Lcn/jpush/android/e/a/c;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Lcn/jpush/android/e/a/d;

    invoke-direct {v0, p1, p2}, Lcn/jpush/android/e/a/d;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcn/jpush/android/e/a/c;->b:Lcn/jpush/android/e/a/d;

    .line 26
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcn/jpush/android/e/a/c;->b:Lcn/jpush/android/e/a/d;

    invoke-virtual {v0, p1, p3}, Lcn/jpush/android/e/a/d;->a(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 49
    const/16 v0, 0x19

    if-gt p2, v0, :cond_1

    .line 50
    iput-boolean v2, p0, Lcn/jpush/android/e/a/c;->c:Z

    .line 58
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 59
    return-void

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcn/jpush/android/e/a/c;->c:Z

    if-nez v0, :cond_0

    .line 52
    const-string v0, "InjectedChromeClient"

    const-string v1, "Android sdk version lesser than 17, Java\u2014Js interact by injection!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcn/jpush/android/e/a/c;->b:Lcn/jpush/android/e/a/d;

    invoke-virtual {v0}, Lcn/jpush/android/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/e/a/c;->c:Z

    .line 55
    const-string v0, "InjectedChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " inject js interface completely on progress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
