.class Lcom/loc/ah$a;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/loc/aa;Ljava/lang/String;)Lcom/loc/am;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-static {p1}, Lcom/loc/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/al;

    invoke-direct {v1}, Lcom/loc/al;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-object v3

    .line 70
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    .line 72
    return-object v0
.end method

.method static a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/loc/al;

    invoke-direct {v0}, Lcom/loc/al;-><init>()V

    .line 54
    invoke-virtual {v0, p1}, Lcom/loc/al;->a(Lcom/loc/am;)V

    .line 55
    invoke-virtual {p0, v0, p2}, Lcom/loc/aa;->a(Lcom/loc/ab;Ljava/lang/String;)V

    .line 56
    return-void
.end method
