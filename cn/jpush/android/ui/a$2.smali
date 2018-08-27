.class final Lcn/jpush/android/ui/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/ui/a;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcn/jpush/android/ui/a;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/a;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcn/jpush/android/ui/a$2;->b:Lcn/jpush/android/ui/a;

    iput-object p2, p0, Lcn/jpush/android/ui/a$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    iget-object v0, p0, Lcn/jpush/android/ui/a$2;->b:Lcn/jpush/android/ui/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jpush/android/ui/a;->a(Lcn/jpush/android/ui/a;Z)Z

    .line 171
    iget-object v0, p0, Lcn/jpush/android/ui/a$2;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 172
    return-void
.end method
