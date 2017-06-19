.class public Lcom/loc/bq;
.super Lcom/loc/at;
.source "LocationRequest.java"


# instance fields
.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/loc/at;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/loc/bq;->d:Ljava/util/Map;

    .line 21
    iput-object v1, p0, Lcom/loc/bq;->e:Ljava/util/Map;

    const-string/jumbo v0, ""

    .line 22
    iput-object v0, p0, Lcom/loc/bq;->f:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/loc/bq;->g:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/loc/bq;->d:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/loc/bq;->f:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/loc/bq;->d:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/loc/bq;->g:[B

    .line 57
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/loc/bq;->e:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/loc/bq;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/loc/bq;->g:[B

    return-object v0
.end method
