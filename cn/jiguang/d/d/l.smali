.class public final Lcn/jiguang/d/d/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lorg/json/JSONObject;

.field private c:Z

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/d/d/l;->a:Ljava/io/File;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/d/d/l;->d:Z

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/d/d/l;->e:J

    invoke-static {p1}, Lcn/jiguang/d/d/m;->a(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/jiguang/d/d/l;->b(Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/d/d/l;->c:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/d/d/l;->a:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/d/d/l;->d:Z

    iput-object p2, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/jiguang/d/d/l;->b(Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jiguang/d/d/l;->c:Z

    iget-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/jiguang/d/g/f;->b(Lorg/json/JSONObject;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/jiguang/d/d/l;->e:J

    :cond_0
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Z
    .locals 4

    const-string v0, "uid"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/d/d/l;->e:J

    return-wide v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    iput-object p1, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/d/d/l;->d:Z

    iget-object v0, p0, Lcn/jiguang/d/d/l;->a:Ljava/io/File;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/d/g/c;->a(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/d/d/l;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/d/d/l;->e:J

    return-void
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/d/l;->a:Ljava/io/File;

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/d/d/l;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/d/d/l;->c:Z

    return v0
.end method
