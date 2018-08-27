.class public final Lcn/jiguang/a/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5000

    sput v0, Lcn/jiguang/a/c/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_1

    const-string v0, "ReportHelper"

    const-string v1, "context did not init, return"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcn/jiguang/a/a/c/d;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "ReportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package info total num - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data size: - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jiguang/e/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcn/jiguang/a/c/c;->a:I

    if-gt v0, v1, :cond_2

    const-string v0, "app_list"

    invoke-static {v0, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v3, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcn/jiguang/a/c/c;->a:I

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v3, -0x1

    if-ne v4, v1, :cond_5

    :cond_3
    const-string v4, "app_list"

    invoke-static {v4, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v4, "ReportHelper"

    const-string v5, "Got JSONException when report applist."

    invoke-static {v4, v5}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 20

    const-string v2, "ReportHelper"

    const-string v3, "periodTasks..."

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ReportHelper"

    const-string v3, "periodTasks failed,isValidRegistered:false"

    invoke-static {v2, v3}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcn/jiguang/g/b/a;

    invoke-direct {v2}, Lcn/jiguang/g/b/a;-><init>()V

    const-string v3, "last_report_device_info"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "lbs_report_enable"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "last_collection_location"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "location_report_delay"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "location_collect_frequency"

    const-wide/32 v4, 0xdbba0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "last_check_userapp_status"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "nb_upload"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "nb_lasttime"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_enable"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_interval"

    const-wide/32 v4, 0x36ee80

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_last_collect_time"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_app_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    const-string v3, "app_running_collect_process_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcn/jiguang/d/a/d;->b(Landroid/content/Context;Lcn/jiguang/g/b/a;)Lcn/jiguang/g/b/a;

    move-result-object v10

    new-instance v11, Lcn/jiguang/g/b/a;

    invoke-direct {v11}, Lcn/jiguang/g/b/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v2, "last_report_device_info"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    const/4 v3, 0x1

    :goto_1
    const-string v2, "lbs_report_enable"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v6, 0x0

    if-eqz v14, :cond_14

    const-string v2, "last_collection_location"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "location_collect_frequency"

    const-wide/32 v8, 0xdbba0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-gtz v2, :cond_1

    const-string v2, "location_report_delay"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_1

    add-long v4, v12, v16

    sub-long/2addr v4, v8

    const-string v2, "last_collection_location"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v2, v7}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    :cond_1
    const-string v2, "JAnalyticsCommonConfigs"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v15, "isCollectionLocationNeeded last:"

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, ",now:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v4, v12, v4

    cmp-long v2, v4, v8

    if-ltz v2, :cond_14

    const/4 v2, 0x1

    const-string v4, "last_collection_location"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    move v4, v2

    :goto_2
    const-string v2, "last_check_userapp_status"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v2, v5}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x0

    const-string v2, "JAnalyticsCommonConfigs"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "now - appListLastReportTime:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v16, v12, v6

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v6, v12, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    const-string v2, "last_check_userapp_status"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v2, v5}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    const/4 v5, 0x1

    :cond_2
    const-string v2, "nb_upload"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v10, v2, v6}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "WIFI"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v2, "nb_lasttime"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v2, v6}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v12, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v2, v6, v8

    if-lez v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    move v6, v2

    :cond_3
    :goto_4
    const-string v2, "app_running_collect_enable"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    const-string v2, "app_running_last_collect_time"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-gtz v2, :cond_f

    const/4 v7, 0x0

    const-string v2, "app_running_last_collect_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v2, v10}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcn/jiguang/d/a/d;->a(Landroid/content/Context;Lcn/jiguang/g/b/a;)V

    new-instance v2, Lcn/jiguang/a/b/b;

    if-eqz v14, :cond_13

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_6
    invoke-direct/range {v2 .. v9}, Lcn/jiguang/a/b/b;-><init>(ZZZZZII)V

    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->a:Z

    if-eqz v3, :cond_5

    invoke-static/range {p0 .. p0}, Lcn/jiguang/a/a/c/b;->c(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lcn/jiguang/d/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/g/e;->a(Landroid/content/Context;)V

    :cond_6
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->b:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Z)V

    :cond_7
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->c:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->d:Z

    if-eqz v3, :cond_9

    invoke-static/range {p0 .. p0}, Lcn/jiguang/a/a/c/i;->a(Landroid/content/Context;)V

    :cond_9
    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/a;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {p0 .. p0}, Lcn/jiguang/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcn/jiguang/a/a/a/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_7
    iget-boolean v3, v2, Lcn/jiguang/a/b/b;->e:Z

    if-eqz v3, :cond_b

    iget v3, v2, Lcn/jiguang/a/b/b;->f:I

    iget v2, v2, Lcn/jiguang/a/b/b;->g:I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2}, Lcn/jiguang/g/d;->a(Landroid/content/Context;II)V

    :cond_b
    invoke-static/range {p0 .. p1}, Lcn/jiguang/a/a/c/g;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    const-string v2, "JAnalyticsCommonConfigs"

    const-string v7, "can not allow get mobile phone number"

    invoke-static {v2, v7}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    sub-long v16, v12, v16

    const-string v2, "app_running_collect_interval"

    const-wide/32 v18, 0x36ee80

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v16, v18

    if-ltz v2, :cond_12

    const-string v2, "app_running_collect_app_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v2, "app_running_collect_process_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v2, v7}, Lcn/jiguang/g/b/a;->b(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v8, :cond_10

    if-eqz v9, :cond_11

    :cond_10
    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_4

    const-string v2, "app_running_last_collect_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v2, v10}, Lcn/jiguang/g/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcn/jiguang/g/b/a;

    goto/16 :goto_5

    :cond_11
    const/4 v7, 0x0

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v3

    const-string v4, "ReportHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reportMacListInfo eroor."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    move v4, v6

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ReportHelper"

    const-string v1, "Unexpected! JCore hasn\'t been register, give up this report"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/jiguang/a/a/c/d;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/a/a/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string v0, "ReportHelper"

    const-string v1, "Report User Apps Status"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/a/a/c/a;

    invoke-direct {v0, p0, p1}, Lcn/jiguang/a/a/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/jiguang/a/a/c/a;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {p0}, Lcn/jiguang/d/a/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ReportHelper"

    const-string v1, "Unexpected! JCore hasn\'t been register, give up this report"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string v0, "ReportHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action:reportOperation - content:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "ReportHelper"

    const-string v1, "Report Location info"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcn/jiguang/a/a/b/f;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReportHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportLocationInfo failed error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 14

    const/4 v1, 0x0

    const-string v0, "ReportHelper"

    const-string v2, "action:reportPermissionInfo"

    invoke-static {v0, v2}, Lcn/jiguang/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/a/a/c/d;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "ReportHelper"

    const-string v1, "Can not get any pemission"

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    array-length v7, v6

    const-string v3, "["

    invoke-static {p0}, Lcn/jiguang/d/a/d;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcn/jiguang/d/a/d;->d(Landroid/content/Context;)J

    move-result-wide v10

    move v0, v1

    move v5, v1

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_1

    aget-object v4, v6, v0

    if-nez v5, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    const/16 v5, 0x32

    if-ge v0, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v9, 0x3e8

    if-gt v5, v9, :cond_3

    if-ne v4, v7, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "{\"total\":%d,\"page\":%d,\"senderid\":\"%s\",\"uid\":%s,\"permission_list\":%s}"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v1

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    aput-object v8, v9, v12

    const/4 v12, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x4

    aput-object v0, v9, v12

    invoke-static {v3, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ReportHelper"

    invoke-static {v3, v0}, Lcn/jiguang/e/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android_permissions"

    invoke-static {v3, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/d/d/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    add-int/lit8 v0, v2, 0x1

    const-string v2, "["

    move-object v3, v2

    move v2, v0

    move v0, v1

    :cond_4
    move v5, v0

    move v0, v4

    goto/16 :goto_0

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ",\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/jiguang/a/a/c/g;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jiguang/a/c/c;->a(Landroid/content/Context;I)V

    :try_start_0
    invoke-static {}, Lcn/jiguang/d/h/f;->a()Lcn/jiguang/d/h/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/jiguang/d/h/f;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ReportHelper"

    const-string v1, "Fail to start other app caused by OutOfMemory."

    invoke-static {v0, v1}, Lcn/jiguang/e/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
