.class final Lcn/jpush/android/ui/PushActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jpush/android/ui/PushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/jpush/android/ui/PushActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/jpush/android/ui/PushActivity;)V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 300
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 301
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/jpush/android/data/b;

    .line 305
    iget-object v1, p0, Lcn/jpush/android/ui/PushActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jpush/android/ui/PushActivity;

    .line 306
    if-nez v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 309
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/jpush/android/ui/PushActivity;->setRequestedOrientation(I)V

    .line 312
    invoke-static {v1, v0}, Lcn/jpush/android/ui/PushActivity;->a(Lcn/jpush/android/ui/PushActivity;Lcn/jpush/android/data/b;)V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-virtual {v1}, Lcn/jpush/android/ui/PushActivity;->b()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
