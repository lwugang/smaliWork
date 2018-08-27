.class public Lezy/boost/update/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lezy/boost/update/IUpdateChecker;


# instance fields
.field final mPostData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lezy/boost/update/UpdateChecker;->mPostData:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lezy/boost/update/UpdateChecker;->mPostData:[B

    return-void
.end method


# virtual methods
.method public check(Lezy/boost/update/ICheckAgent;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 38
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 39
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lezy/boost/update/UpdateChecker;->mPostData:[B

    if-nez v0, :cond_0

    const-string v0, "GET"

    .line 42
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_0

    :cond_0
    const-string v0, "POST"

    .line 45
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 48
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    .line 49
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Length"

    .line 50
    iget-object v1, p0, Lezy/boost/update/UpdateChecker;->mPostData:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lezy/boost/update/UpdateChecker;->mPostData:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 54
    :goto_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 55
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lezy/boost/update/UpdateUtil;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lezy/boost/update/ICheckAgent;->setInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_1
    new-instance v0, Lezy/boost/update/UpdateError;

    const/16 v1, 0x7d5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lezy/boost/update/UpdateError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lezy/boost/update/ICheckAgent;->setError(Lezy/boost/update/UpdateError;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 60
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    new-instance v0, Lezy/boost/update/UpdateError;

    const/16 v1, 0x7d4

    invoke-direct {v0, v1}, Lezy/boost/update/UpdateError;-><init>(I)V

    invoke-interface {p1, v0}, Lezy/boost/update/ICheckAgent;->setError(Lezy/boost/update/UpdateError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_2

    .line 64
    :goto_3
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method
