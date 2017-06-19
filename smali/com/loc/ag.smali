.class Lcom/loc/ag;
.super Lcom/loc/at;
.source "DexDownLoadRequest.java"


# instance fields
.field private d:Lcom/loc/ae;


# direct methods
.method constructor <init>(Lcom/loc/ae;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/loc/at;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/loc/ag;->d:Lcom/loc/ae;

    .line 36
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
    const/4 v0, 0x0

    .line 51
    return-object v0
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
    const/4 v0, 0x0

    .line 43
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/loc/ag;->d:Lcom/loc/ae;

    invoke-virtual {v0}, Lcom/loc/ae;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
