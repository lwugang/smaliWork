.class public final Lcn/jpush/android/data/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v2, p0, Lcn/jpush/android/data/e;->a:J

    .line 6
    iput v1, p0, Lcn/jpush/android/data/e;->b:I

    .line 7
    iput v1, p0, Lcn/jpush/android/data/e;->c:I

    .line 8
    iput v1, p0, Lcn/jpush/android/data/e;->d:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/e;->e:Ljava/lang/String;

    .line 10
    iput-wide v2, p0, Lcn/jpush/android/data/e;->f:J

    .line 11
    iput-wide v2, p0, Lcn/jpush/android/data/e;->g:J

    .line 14
    iput-wide v2, p0, Lcn/jpush/android/data/e;->a:J

    .line 15
    iput v1, p0, Lcn/jpush/android/data/e;->b:I

    .line 16
    iput v1, p0, Lcn/jpush/android/data/e;->c:I

    .line 17
    iput v1, p0, Lcn/jpush/android/data/e;->d:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/e;->e:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcn/jpush/android/data/e;->f:J

    .line 20
    iput-wide v2, p0, Lcn/jpush/android/data/e;->g:J

    .line 21
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcn/jpush/android/data/e;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcn/jpush/android/data/e;->b:I

    .line 34
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcn/jpush/android/data/e;->a:J

    .line 28
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/jpush/android/data/e;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcn/jpush/android/data/e;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcn/jpush/android/data/e;->c:I

    .line 40
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcn/jpush/android/data/e;->g:J

    .line 60
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcn/jpush/android/data/e;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcn/jpush/android/data/e;->d:I

    .line 47
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcn/jpush/android/data/e;->f:J

    .line 68
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/jpush/android/data/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcn/jpush/android/data/e;->g:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcn/jpush/android/data/e;->f:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocalNotificationDBData [ln_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/jpush/android/data/e;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ln_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/data/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ln_remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/data/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ln_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/data/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ln_extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/data/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ln_trigger_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/android/data/e;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ln_add_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/jpush/android/data/e;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
