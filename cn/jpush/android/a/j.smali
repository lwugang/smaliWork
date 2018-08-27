.class public final Lcn/jpush/android/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 62
    sput-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e3

    const-string v2, "Message JSON parsing succeed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e4

    const-string v2, "Message JSON parsing failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e5

    const-string v2, "Message already received, give up"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e6

    const-string v2, "Message already received, still process"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e8

    const-string v2, "User clicked and opened the Message"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e9

    const-string v2, "Message download succeed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ea

    const-string v2, "Message received succeed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3eb

    const-string v2, "Message silence download succeed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ec

    const-string v2, "Video silence downlaod succeed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ed

    const-string v2, "User clicked video and jumped to url Message (browser)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f0

    const-string v2, "Video is force closed by user"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ef

    const-string v2, "User clicked \'OK\'"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3ee

    const-string v2, "User clicked \'Cancel\'"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f3

    const-string v2, "Download failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f4

    const-string v2, "User clicked to download again"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f5

    const-string v2, "The file already exist and same size. Don\'t download again."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x44c

    const-string v2, "Invalid param or unexpected result."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f6

    const-string v2, "Failed to preload required resource"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f7

    const-string v2, "User clicked install alert on status bar after downloading finished."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f8

    const-string v2, "User clicked the webview\'s url"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f9

    const-string v2, "User clicked call action"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3fa

    const-string v2, "The Message show in the status bar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3fb

    const-string v2, "Click applist and show the Message"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3fc

    const-string v2, "Down image failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3fd

    const-string v2, "Down html failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3fe

    const-string v2, "Down Message failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x406

    const-string v2, "Discard the message because it is not in the push time"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x407

    const-string v2, "Stop push service"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    const/16 v1, 0x408

    const-string v2, "Resume push service"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "StatusCode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown report code - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/a/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
