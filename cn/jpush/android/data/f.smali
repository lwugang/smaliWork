.class public abstract Lcn/jpush/android/data/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private volatile a:I

.field private volatile b:I

.field private volatile c:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    iput v0, p0, Lcn/jpush/android/data/f;->a:I

    .line 24
    iput v0, p0, Lcn/jpush/android/data/f;->b:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/data/f;->e:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/data/f;->f:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcn/jpush/android/data/f;->g:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcn/jpush/android/data/f;->h:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcn/jpush/android/data/f;->i:I

    .line 43
    iput-object v2, p0, Lcn/jpush/android/data/f;->j:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcn/jpush/android/data/f;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Lcn/jpush/android/data/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iget v2, p0, Lcn/jpush/android/data/f;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/jpush/android/data/f;->b:I

    .line 52
    monitor-exit v1

    .line 62
    :goto_0
    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 62
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lcn/jpush/android/data/f;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :try_start_3
    invoke-virtual {p0}, Lcn/jpush/android/data/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    iget v2, p0, Lcn/jpush/android/data/f;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/jpush/android/data/f;->a:I

    .line 58
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_4

    .line 117
    iget-object v2, p0, Lcn/jpush/android/data/f;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v3, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcn/jpush/android/data/f;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcn/jpush/android/data/f;->b:I

    if-gtz v3, :cond_1

    :cond_0
    move v0, v1

    .line 120
    :cond_1
    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/data/f;->b:I

    .line 122
    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    :cond_3
    monitor-exit v2

    .line 140
    :goto_0
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 129
    :cond_4
    iget-object v2, p0, Lcn/jpush/android/data/f;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_1
    iget-object v3, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, p0, Lcn/jpush/android/data/f;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcn/jpush/android/data/f;->a:I

    if-gtz v3, :cond_6

    :cond_5
    move v0, v1

    .line 131
    :cond_6
    if-eqz v0, :cond_8

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/data/f;->a:I

    .line 133
    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 136
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    :cond_8
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    return-void
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    :cond_0
    iget-object v1, p0, Lcn/jpush/android/data/f;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 74
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcn/jpush/android/data/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/jpush/android/data/f;->g:Landroid/content/Context;

    iget-object v2, p0, Lcn/jpush/android/data/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lcn/jpush/android/data/f;->j:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    iget-object v2, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    iget v3, p0, Lcn/jpush/android/data/f;->i:I

    if-eq v2, v3, :cond_2

    .line 80
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t upgrade read-only database from version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/jpush/android/data/f;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcn/jpush/android/data/f;->a:I

    .line 84
    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcn/jpush/android/data/f;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 86
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :cond_4
    iget-object v0, p0, Lcn/jpush/android/data/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    :cond_0
    iget-object v1, p0, Lcn/jpush/android/data/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/data/f;->b:I

    .line 97
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 99
    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 102
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcn/jpush/android/data/f;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
