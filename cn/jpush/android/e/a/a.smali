.class public final Lcn/jpush/android/e/a/a;
.super Lcn/jpush/android/e/a/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcn/jpush/android/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    iput-object p3, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    .line 19
    iput-object p4, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 27
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcn/jpush/android/e/a/c;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Lcn/jpush/android/e/a/c;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcn/jpush/android/e/a/c;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 41
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 42
    const/16 v0, 0x64

    if-ne v0, p2, :cond_2

    .line 43
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcn/jpush/android/e/a/a;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
