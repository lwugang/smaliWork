.class final Lcn/jpush/android/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jpush/android/a/a;

.field private b:Landroid/content/Context;

.field private c:Lcn/jpush/android/service/JPushMessageReceiver;

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcn/jpush/android/a/a;Landroid/content/Context;Lcn/jpush/android/service/JPushMessageReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/jpush/android/a/a$a;->a:Lcn/jpush/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    .line 56
    iput-object p4, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    .line 57
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 60
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "intent was null"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "cn.jpush.android.intent.RECEIVE_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    const-string v1, "message_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    const/4 v0, 0x0

    .line 68
    if-eq v5, v1, :cond_1

    if-ne v6, v1, :cond_3

    .line 69
    :cond_1
    invoke-static {}, Lcn/jpush/android/service/d;->a()Lcn/jpush/android/service/d;

    move-result-object v0

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcn/jpush/android/service/d;->a(Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;

    move-result-object v0

    .line 73
    :cond_2
    :goto_1
    const-string v2, "JMessageReceiverHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "messageType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",jPushMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez v0, :cond_4

    .line 75
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "parse tagalias message failed"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    if-ne v7, v1, :cond_2

    .line 71
    invoke-static {}, Lcn/jpush/android/a/f;->a()Lcn/jpush/android/a/f;

    iget-object v0, p0, Lcn/jpush/android/a/a$a;->d:Landroid/content/Intent;

    invoke-static {v0}, Lcn/jpush/android/a/f;->a(Landroid/content/Intent;)Lcn/jpush/android/api/JPushMessage;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_4
    if-ne v1, v5, :cond_6

    .line 79
    invoke-virtual {v0}, Lcn/jpush/android/api/JPushMessage;->isTagCheckOperator()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/jpush/android/service/JPushMessageReceiver;->onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto :goto_0

    .line 82
    :cond_5
    iget-object v1, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/jpush/android/service/JPushMessageReceiver;->onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto :goto_0

    .line 84
    :cond_6
    if-ne v1, v6, :cond_7

    .line 85
    iget-object v1, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/jpush/android/service/JPushMessageReceiver;->onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto :goto_0

    .line 86
    :cond_7
    if-ne v1, v7, :cond_8

    .line 87
    iget-object v1, p0, Lcn/jpush/android/a/a$a;->c:Lcn/jpush/android/service/JPushMessageReceiver;

    iget-object v2, p0, Lcn/jpush/android/a/a$a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/jpush/android/service/JPushMessageReceiver;->onMobileNumberOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V

    goto/16 :goto_0

    .line 89
    :cond_8
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "unsupport message type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_9
    const-string v0, "JMessageReceiverHelper"

    const-string v1, "unsupport action type"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
