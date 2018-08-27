.class public Lezy/boost/update/DefaultPromptClickListener;
.super Ljava/lang/Object;
.source "DefaultPromptClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mAgent:Lezy/boost/update/IUpdateAgent;

.field private final mIsAutoDismiss:Z


# direct methods
.method public constructor <init>(Lezy/boost/update/IUpdateAgent;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lezy/boost/update/DefaultPromptClickListener;->mAgent:Lezy/boost/update/IUpdateAgent;

    .line 27
    iput-boolean p2, p0, Lezy/boost/update/DefaultPromptClickListener;->mIsAutoDismiss:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p2, p0, Lezy/boost/update/DefaultPromptClickListener;->mAgent:Lezy/boost/update/IUpdateAgent;

    invoke-interface {p2}, Lezy/boost/update/IUpdateAgent;->update()V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Lezy/boost/update/DefaultPromptClickListener;->mAgent:Lezy/boost/update/IUpdateAgent;

    invoke-interface {p2}, Lezy/boost/update/IUpdateAgent;->ignore()V

    .line 44
    :goto_0
    iget-boolean p2, p0, Lezy/boost/update/DefaultPromptClickListener;->mIsAutoDismiss:Z

    if-eqz p2, :cond_2

    .line 45
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    return-void
.end method
