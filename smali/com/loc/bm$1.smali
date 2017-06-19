.class Lcom/loc/bm$1;
.super Ljava/lang/Object;
.source "HeatMap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bm;->b()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/loc/bl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bm;


# direct methods
.method constructor <init>(Lcom/loc/bm;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/loc/bm$1;->a:Lcom/loc/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/loc/bl;Lcom/loc/bl;)I
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p2}, Lcom/loc/bl;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/loc/bl;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 220
    check-cast p1, Lcom/loc/bl;

    check-cast p2, Lcom/loc/bl;

    invoke-virtual {p0, p1, p2}, Lcom/loc/bm$1;->a(Lcom/loc/bl;Lcom/loc/bl;)I

    move-result v0

    return v0
.end method
