.class public Lcn/jpush/android/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HostJsScope"

.field private static mWebViewHelper:Lcn/jpush/android/e/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static click(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcn/jpush/android/e/a/f;->click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static close(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0}, Lcn/jpush/android/e/a/f;->close()V

    goto :goto_0
.end method

.method public static createShortcut(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcn/jpush/android/e/a/f;->createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static download(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1}, Lcn/jpush/android/e/a/f;->download(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static download(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/e/a/f;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static download(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcn/jpush/android/e/a/f;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static executeMsgMessage(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1}, Lcn/jpush/android/e/a/f;->executeMsgMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setWebViewHelper(Lcn/jpush/android/e/a/f;)V
    .locals 0

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    sput-object p0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    goto :goto_0
.end method

.method public static showTitleBar(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0}, Lcn/jpush/android/e/a/f;->showTitleBar()V

    .line 123
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1}, Lcn/jpush/android/e/a/f;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startActivityByIntent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/e/a/f;->startActivityByIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startActivityByName(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/e/a/f;->startActivityByName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startActivityByNameWithSystemAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcn/jpush/android/api/c;->a:Lcn/jpush/android/e/a/e;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcn/jpush/android/api/c;->a:Lcn/jpush/android/e/a/e;

    invoke-virtual {v0, p1, p2}, Lcn/jpush/android/e/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startMainActivity(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1}, Lcn/jpush/android/e/a/f;->startMainActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startPushActivity(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1}, Lcn/jpush/android/e/a/f;->startPushActivity(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public static triggerNativeAction(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lcn/jpush/android/e/a/b;->mWebViewHelper:Lcn/jpush/android/e/a/f;

    invoke-virtual {v0, p1}, Lcn/jpush/android/e/a/f;->triggerNativeAction(Ljava/lang/String;)V

    goto :goto_0
.end method
