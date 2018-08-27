.class final Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "UpdateDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadingRandomAccessFile"
.end annotation


# instance fields
.field final synthetic this$0:Lezy/boost/update/UpdateDownloader;


# direct methods
.method public constructor <init>(Lezy/boost/update/UpdateDownloader;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;->this$0:Lezy/boost/update/UpdateDownloader;

    const-string p1, "rw"

    .line 236
    invoke-direct {p0, p2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 243
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;->this$0:Lezy/boost/update/UpdateDownloader;

    iget-object p2, p0, Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;->this$0:Lezy/boost/update/UpdateDownloader;

    invoke-static {p2}, Lezy/boost/update/UpdateDownloader;->access$000(Lezy/boost/update/UpdateDownloader;)J

    move-result-wide v0

    int-to-long p2, p3

    add-long v2, v0, p2

    invoke-static {p1, v2, v3}, Lezy/boost/update/UpdateDownloader;->access$002(Lezy/boost/update/UpdateDownloader;J)J

    .line 244
    iget-object p1, p0, Lezy/boost/update/UpdateDownloader$LoadingRandomAccessFile;->this$0:Lezy/boost/update/UpdateDownloader;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lezy/boost/update/UpdateDownloader;->access$100(Lezy/boost/update/UpdateDownloader;[Ljava/lang/Object;)V

    return-void
.end method
