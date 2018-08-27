.class public Lezy/boost/update/DefaultUpdatePrompter;
.super Ljava/lang/Object;
.source "DefaultUpdatePrompter.java"

# interfaces
.implements Lezy/boost/update/IUpdatePrompter;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public prompt(Lezy/boost/update/IUpdateAgent;)V
    .locals 11
    .param p1, "agent"    # Lezy/boost/update/IUpdateAgent;

    .prologue
    .line 21
    iget-object v2, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-interface {p1}, Lezy/boost/update/IUpdateAgent;->getInfo()Lezy/boost/update/UpdateInfo;

    move-result-object v8

    .line 25
    .local v8, "info":Lezy/boost/update/UpdateInfo;
    iget-object v2, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    iget-wide v4, v8, Lezy/boost/update/UpdateInfo;->size:J

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 26
    .local v10, "size":Ljava/lang/String;
    const-string v2, "\u6700\u65b0\u7248\u672c\uff1a%1$s\n\u65b0\u7248\u672c\u5927\u5c0f\uff1a%2$s\n\n\u66f4\u65b0\u5185\u5bb9\n%3$s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v8, Lezy/boost/update/UpdateInfo;->versionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    iget-object v5, v8, Lezy/boost/update/UpdateInfo;->updateContent:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "content":Ljava/lang/String;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 30
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const-string v2, "\u5e94\u7528\u66f4\u65b0"

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    iget-object v2, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    .line 36
    .local v7, "density":F
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lezy/boost/update/DefaultUpdatePrompter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 39
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 42
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v7

    float-to-int v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v3, v7

    float-to-int v3, v3

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 45
    new-instance v9, Lezy/boost/update/DefaultPromptClickListener;

    const/4 v2, 0x1

    invoke-direct {v9, p1, v2}, Lezy/boost/update/DefaultPromptClickListener;-><init>(Lezy/boost/update/IUpdateAgent;Z)V

    .line 47
    .local v9, "listener":Landroid/content/DialogInterface$OnClickListener;
    iget-boolean v2, v8, Lezy/boost/update/UpdateInfo;->isForce:Z

    if-eqz v2, :cond_2

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u9700\u8981\u66f4\u65b0\u5e94\u7528\u624d\u80fd\u7ee7\u7eed\u4f7f\u7528\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v2, -0x1

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v3, v9}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v2, -0x1

    const-string v3, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v0, v2, v3, v9}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    const/4 v2, -0x2

    const-string v3, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v2, v3, v9}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    iget-boolean v2, v8, Lezy/boost/update/UpdateInfo;->isIgnorable:Z

    if-eqz v2, :cond_1

    .line 55
    const/4 v2, -0x3

    const-string v3, "\u5ffd\u7565\u8be5\u7248"

    invoke-virtual {v0, v2, v3, v9}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method
