.class public Lezy/boost/update/UpdateError;
.super Ljava/lang/Throwable;
.source "UpdateError.java"


# static fields
.field public static final CHECK_HTTP_STATUS:I = 0x7d5

.field public static final CHECK_NETWORK_IO:I = 0x7d4

.field public static final CHECK_NO_NETWORK:I = 0x7d3

.field public static final CHECK_NO_WIFI:I = 0x7d2

.field public static final CHECK_PARSE:I = 0x7d6

.field public static final CHECK_UNKNOWN:I = 0x7d1

.field public static final DOWNLOAD_CANCELLED:I = 0xbba

.field public static final DOWNLOAD_DISK_IO:I = 0xbbc

.field public static final DOWNLOAD_DISK_NO_SPACE:I = 0xbbb

.field public static final DOWNLOAD_HTTP_STATUS:I = 0xbc0

.field public static final DOWNLOAD_INCOMPLETE:I = 0xbc1

.field public static final DOWNLOAD_NETWORK_BLOCKED:I = 0xbbe

.field public static final DOWNLOAD_NETWORK_IO:I = 0xbbd

.field public static final DOWNLOAD_NETWORK_TIMEOUT:I = 0xbbf

.field public static final DOWNLOAD_UNKNOWN:I = 0xbb9

.field public static final DOWNLOAD_VERIFY:I = 0xbc2

.field public static final UPDATE_IGNORED:I = 0x3e9

.field public static final UPDATE_NO_NEWER:I = 0x3ea

.field public static final messages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    .line 81
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u8be5\u7248\u672c\u5df2\u7ecf\u5ffd\u7565"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u4e86"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u67e5\u8be2\u66f4\u65b0\u5931\u8d25\uff1a\u672a\u77e5\u9519\u8bef"

    const/16 v2, 0x7d1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u67e5\u8be2\u66f4\u65b0\u5931\u8d25\uff1a\u6ca1\u6709 WIFI"

    const/16 v2, 0x7d2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u67e5\u8be2\u66f4\u65b0\u5931\u8d25\uff1a\u6ca1\u6709\u7f51\u7edc"

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u67e5\u8be2\u66f4\u65b0\u5931\u8d25\uff1a\u7f51\u7edc\u5f02\u5e38"

    const/16 v2, 0x7d4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u67e5\u8be2\u66f4\u65b0\u5931\u8d25\uff1a\u9519\u8bef\u7684HTTP\u72b6\u6001"

    const/16 v2, 0x7d5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u67e5\u8be2\u66f4\u65b0\u5931\u8d25\uff1a\u89e3\u6790\u9519\u8bef"

    const/16 v2, 0x7d6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u672a\u77e5\u9519\u8bef"

    const/16 v2, 0xbb9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u4e0b\u8f7d\u88ab\u53d6\u6d88"

    const/16 v2, 0xbba

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u78c1\u76d8\u7a7a\u95f4\u4e0d\u8db3"

    const/16 v2, 0xbbb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u78c1\u76d8\u8bfb\u5199\u9519\u8bef"

    const/16 v2, 0xbbc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u7f51\u7edc\u5f02\u5e38"

    const/16 v2, 0xbbd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u7f51\u7edc\u4e2d\u65ad"

    const/16 v2, 0xbbe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u7f51\u7edc\u8d85\u65f6"

    const/16 v2, 0xbbf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u9519\u8bef\u7684HTTP\u72b6\u6001"

    const/16 v2, 0xbc0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u4e0b\u8f7d\u4e0d\u5b8c\u6574"

    const/16 v2, 0xbc1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u6821\u9a8c\u9519\u8bef"

    const/16 v2, 0xbc2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lezy/boost/update/UpdateError;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p1, p2}, Lezy/boost/update/UpdateError;->make(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lezy/boost/update/UpdateError;->code:I

    return-void
.end method

.method private static make(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lezy/boost/update/UpdateError;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isError()Z
    .locals 2

    .line 33
    iget v0, p0, Lezy/boost/update/UpdateError;->code:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lezy/boost/update/UpdateError;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lezy/boost/update/UpdateError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lezy/boost/update/UpdateError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lezy/boost/update/UpdateError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
