.class public final Lcn/jpush/android/data/d;
.super Lcn/jpush/android/data/f;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static volatile b:Lcn/jpush/android/data/d;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ln_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ln_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ln_remove"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ln_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ln_extra"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ln_trigger_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ln_add_time"

    aput-object v2, v0, v1

    sput-object v0, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jpush/android/data/d;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "jpush_local_notification.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/jpush/android/data/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/jpush/android/data/d;
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    if-nez v0, :cond_1

    .line 51
    sget-object v1, Lcn/jpush/android/data/d;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcn/jpush/android/data/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/jpush/android/data/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcn/jpush/android/data/d;->b:Lcn/jpush/android/data/d;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "LocalNotificationDb"

    const-string v2, "cursor is null"

    invoke-static {v0, v2}, Lcn/jpush/android/d/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 95
    :goto_0
    return-object v0

    .line 82
    :cond_1
    :try_start_0
    new-instance v0, Lcn/jpush/android/data/e;

    invoke-direct {v0}, Lcn/jpush/android/data/e;-><init>()V

    .line 83
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jpush/android/data/e;->a(J)V

    .line 84
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/jpush/android/data/e;->a(I)V

    .line 85
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/jpush/android/data/e;->b(I)V

    .line 86
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/jpush/android/data/e;->c(I)V

    .line 87
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/jpush/android/data/e;->a(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jpush/android/data/e;->c(J)V

    .line 89
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jpush/android/data/e;->b(J)V

    .line 90
    const-string v2, "LocalNotificationDb"

    invoke-virtual {v0}, Lcn/jpush/android/data/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jpush/android/d/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 94
    const-string v2, "LocalNotificationDb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initLocalNotificationDBData exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-virtual {p0, v4}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ln_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "t_localnotification"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 202
    invoke-virtual {p0, v4}, Lcn/jpush/android/data/d;->b(Z)V

    .line 205
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    :try_start_1
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {p0, v4}, Lcn/jpush/android/data/d;->b(Z)V

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcn/jpush/android/data/d;->b(Z)V

    throw v0
.end method

.method public final a(JIIILjava/lang/String;JJ)J
    .locals 7

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    .line 103
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string v3, "ln_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string v3, "ln_count"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v3, "ln_remove"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v3, "ln_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v3, "ln_extra"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "ln_trigger_time"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string v3, "ln_add_time"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "t_localnotification"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 117
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/jpush/android/data/d;->b(Z)V

    .line 120
    :cond_0
    :goto_0
    return-wide v0

    .line 114
    :catch_0
    move-exception v2

    .line 115
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/jpush/android/data/d;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/jpush/android/data/d;->b(Z)V

    throw v0
.end method

.method public final a(IJ)Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ln_count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ln_trigger_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "t_localnotification"

    sget-object v3, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v1, "LocalNotificationDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOutDatas exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 169
    goto :goto_0
.end method

.method public final a(JJ)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 150
    const-wide/32 v0, 0x493e0

    add-long/2addr v0, p1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ln_count>0 and ln_trigger_time<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ln_trigger_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "t_localnotification"

    sget-object v3, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "LocalNotificationDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRtcDatas exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/d/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 158
    goto :goto_0
.end method

.method public final a(JI)Lcn/jpush/android/data/e;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 173
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ln_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ln_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "t_localnotification"

    sget-object v3, Lcn/jpush/android/data/d;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    :cond_0
    invoke-static {v1}, Lcn/jpush/android/data/d;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 184
    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->b(Z)V

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_0
    if-eqz v1, :cond_2

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_2
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->b(Z)V

    throw v0

    .line 190
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "open database failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final a()[I
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 210
    const-string v4, "1"

    .line 213
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ln_id"

    aput-object v1, v3, v0

    .line 217
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "t_localnotification"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 218
    if-eqz v2, :cond_7

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 219
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v11

    .line 223
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v10, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 225
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v10

    .line 228
    :goto_0
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, Lcn/jpush/android/data/d;->a(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    :try_start_4
    const-string v1, "delete from t_localnotification"

    .line 231
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v12

    .line 242
    :goto_1
    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_1
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->b(Z)V

    .line 246
    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->b(Z)V

    .line 251
    :cond_2
    :goto_2
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    move-object v1, v0

    move v2, v11

    move-object v0, v10

    .line 240
    :goto_3
    :try_start_5
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 242
    if-eqz v10, :cond_3

    .line 243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_3
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->b(Z)V

    .line 246
    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->b(Z)V

    goto :goto_2

    .line 242
    :catchall_0
    move-exception v0

    move-object v2, v10

    move v1, v11

    :goto_4
    if-eqz v2, :cond_4

    .line 243
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_4
    invoke-virtual {p0, v11}, Lcn/jpush/android/data/d;->b(Z)V

    .line 246
    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p0, v12}, Lcn/jpush/android/data/d;->b(Z)V

    :cond_5
    throw v0

    .line 242
    :catchall_1
    move-exception v0

    move v1, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    move v1, v12

    goto :goto_4

    :catchall_3
    move-exception v0

    move v1, v2

    move-object v2, v10

    goto :goto_4

    .line 239
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    move-object v10, v2

    move v2, v11

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    move-object v10, v2

    move v2, v11

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v10, v2

    move v2, v11

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v10, v2

    move v2, v12

    goto :goto_3

    :cond_6
    move v1, v11

    goto :goto_1

    :cond_7
    move-object v0, v10

    goto :goto_0

    :cond_8
    move-object v0, v10

    goto :goto_2
.end method

.method public final b(JIIILjava/lang/String;JJ)J
    .locals 7

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    .line 127
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/jpush/android/data/d;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ln_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 132
    const-string v4, "ln_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v4, "ln_count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v4, "ln_remove"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v4, "ln_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v4, "ln_extra"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "ln_trigger_time"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    const-string v4, "ln_add_time"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "t_localnotification"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 143
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/jpush/android/data/d;->b(Z)V

    .line 146
    :cond_0
    :goto_0
    return-wide v0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/jpush/android/data/d;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/jpush/android/data/d;->b(Z)V

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    const-string v0, "CREATE TABLE t_localnotification (_id INTEGER PRIMARY KEY AUTOINCREMENT ,ln_id long not null,ln_count integer not null,ln_remove integer not null,ln_type integer not null,ln_extra text ,ln_trigger_time long ,ln_add_time long );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    const-string v0, "LocalNotificationDb"

    const-string v1, "\u8868\u5df2\u7ecf\u5b58\u5728"

    invoke-static {v0, v1}, Lcn/jpush/android/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "DROP TABLE IF EXISTS t_localnotification"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcn/jpush/android/data/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method
