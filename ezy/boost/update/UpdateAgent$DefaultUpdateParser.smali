.class Lezy/boost/update/UpdateAgent$DefaultUpdateParser;
.super Ljava/lang/Object;
.source "UpdateAgent.java"

# interfaces
.implements Lezy/boost/update/IUpdateParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezy/boost/update/UpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultUpdateParser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lezy/boost/update/UpdateAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lezy/boost/update/UpdateAgent$1;

    .prologue
    .line 280
    invoke-direct {p0}, Lezy/boost/update/UpdateAgent$DefaultUpdateParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p1}, Lezy/boost/update/UpdateInfo;->parse(Ljava/lang/String;)Lezy/boost/update/UpdateInfo;

    move-result-object v0

    return-object v0
.end method
