.class public Lcn/jpush/android/ui/PushActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jpush/android/ui/PushActivity$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcn/jpush/android/ui/FullScreenView;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v0, p0, Lcn/jpush/android/ui/PushActivity;->a:I

    .line 34
    iput-boolean v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    .line 295
    return-void
.end method

.method static synthetic a(Lcn/jpush/android/ui/PushActivity;)Lcn/jpush/android/ui/FullScreenView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/android/ui/PushActivity;Lcn/jpush/android/data/b;)V
    .locals 6

    .prologue
    .line 27
    .line 4129
    const-string v0, "PushActivity"

    const-string v1, "Action: processShow"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    if-nez p1, :cond_1

    .line 4132
    const-string v0, "PushActivity"

    const-string v1, "Null message entity! Close PushActivity!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    .line 4164
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 4136
    check-cast v0, Lcn/jpush/android/data/g;

    .line 4138
    iget v1, v0, Lcn/jpush/android/data/g;->M:I

    if-nez v1, :cond_0

    .line 4140
    iget v1, v0, Lcn/jpush/android/data/g;->K:I

    iput v1, p0, Lcn/jpush/android/ui/PushActivity;->a:I

    .line 4143
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "jpush_webview_layout"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4144
    if-nez v1, :cond_2

    .line 4145
    const-string v0, "PushActivity"

    const-string v1, "Please add layout resource jpush_webview_layout.xml to res/layout !"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_0

    .line 4149
    :cond_2
    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/PushActivity;->setContentView(I)V

    .line 4151
    iget-object v1, v0, Lcn/jpush/android/data/g;->a:Ljava/lang/String;

    .line 4152
    invoke-static {v1}, Lcn/jpush/android/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;I)V

    .line 4154
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_0

    .line 4158
    :cond_3
    iget-object v2, v0, Lcn/jpush/android/data/g;->Q:Ljava/lang/String;

    .line 4159
    iget-boolean v0, v0, Lcn/jpush/android/data/g;->r:Z

    if-eqz v0, :cond_5

    .line 4160
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "actionbarLayoutId"

    const-string v4, "id"

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4161
    if-nez v0, :cond_4

    .line 4162
    const-string v0, "PushActivity"

    const-string v1, "Please use default code in jpush_webview_layout.xml!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_0

    .line 4167
    :cond_4
    invoke-virtual {p0, v0}, Lcn/jpush/android/ui/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/ui/FullScreenView;

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    .line 4168
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/ui/FullScreenView;->initModule(Landroid/content/Context;Lcn/jpush/android/data/b;)V

    .line 4170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    const-string v3, "file://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Z

    if-nez v0, :cond_6

    .line 4171
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0, v2}, Lcn/jpush/android/ui/FullScreenView;->loadUrl(Ljava/lang/String;)V

    .line 4180
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Z

    if-nez v0, :cond_0

    .line 4181
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 5033
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 4173
    :cond_6
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/FullScreenView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_way"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Z

    .line 56
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1079
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/b;

    .line 1081
    if-eqz v0, :cond_0

    .line 57
    :goto_0
    if-eqz v0, :cond_4

    .line 58
    iget-object v1, v0, Lcn/jpush/android/data/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcn/jpush/android/ui/PushActivity;->c:Ljava/lang/String;

    .line 1103
    if-eqz v0, :cond_3

    .line 1104
    iget v1, v0, Lcn/jpush/android/data/b;->q:I

    packed-switch v1, :pswitch_data_0

    .line 1115
    const-string v1, "PushActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid msg type to show - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcn/jpush/android/data/b;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/jpush/android/api/b;->a(Landroid/content/Context;Lcn/jpush/android/data/b;I)V

    .line 1118
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    .line 74
    :goto_1
    return-void

    .line 1085
    :cond_0
    const-string v0, "PushActivity"

    const-string v2, "parse entity form plugin plateform"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const/4 v0, 0x0

    .line 1088
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1089
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1093
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "JMessageExtra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    :cond_2
    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/b;

    move-result-object v0

    goto :goto_0

    .line 1107
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1108
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1109
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1110
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "PushActivity"

    const-string v2, "Extra data is not serializable!"

    invoke-static {v1, v2}, Lcn/jpush/android/d/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_1

    .line 1122
    :cond_3
    :try_start_1
    const-string v0, "PushActivity"

    const-string v1, "Null message entity! Close PushActivity!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_1

    .line 61
    :cond_4
    const-string v0, "PushActivity"

    const-string v1, "Warning\uff0cnull message entity! Close PushActivity!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    :cond_5
    const-string v0, "PushActivity"

    const-string v1, "PushActivity get NULL intent!"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_1

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcn/jpush/android/ui/PushActivity$1;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/PushActivity$1;-><init>(Lcn/jpush/android/ui/PushActivity;)V

    invoke-virtual {p0, v0}, Lcn/jpush/android/ui/PushActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    .line 266
    iget v0, p0, Lcn/jpush/android/ui/PushActivity;->a:I

    if-ne v1, v0, :cond_0

    .line 271
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcn/jpush/android/ui/PushActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 273
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 274
    const-string v2, "PushActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "baseActivity  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "PushActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "topActivity  = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    invoke-static {p0}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    const-string v0, "PushActivity"

    const-string v1, "Get running tasks failed."

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    invoke-static {p0}, Lcn/jpush/android/d/a;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0}, Lcn/jpush/android/ui/FullScreenView;->webviewCanGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0}, Lcn/jpush/android/ui/FullScreenView;->webviewGoBack()V

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Ljava/lang/String;

    const/16 v1, 0x3ee

    .line 2033
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcn/jpush/android/a/d;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 257
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lcn/jpush/android/ui/PushActivity$a;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/PushActivity$a;-><init>(Lcn/jpush/android/ui/PushActivity;)V

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->e:Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Lcn/jpush/android/ui/PushActivity;->c()V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 240
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0}, Lcn/jpush/android/ui/FullScreenView;->destory()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 248
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p1}, Lcn/jpush/android/ui/PushActivity;->setIntent(Landroid/content/Intent;)V

    .line 49
    invoke-direct {p0}, Lcn/jpush/android/ui/PushActivity;->c()V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 233
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0}, Lcn/jpush/android/ui/FullScreenView;->pause()V

    .line 236
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/FullScreenView;

    invoke-virtual {v0}, Lcn/jpush/android/ui/FullScreenView;->resume()V

    .line 228
    :cond_0
    return-void
.end method
