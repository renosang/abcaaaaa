.class final Lcom/loc/cg;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:[B

.field protected b:S

.field protected c:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/cg;->a:[B

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/cg;->b:S

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/cg;->c:[B

    return-void
.end method
