.class final Lcom/loc/ce;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:B

.field protected b:[B

.field protected c:D

.field protected d:I

.field protected e:I

.field protected f:D

.field protected g:B

.field protected h:B

.field protected i:[B

.field protected j:B


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/loc/ce;->a:B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/loc/ce;->b:[B

    iput-wide v2, p0, Lcom/loc/ce;->c:D

    iput v1, p0, Lcom/loc/ce;->d:I

    iput v1, p0, Lcom/loc/ce;->e:I

    iput-wide v2, p0, Lcom/loc/ce;->f:D

    iput-byte v1, p0, Lcom/loc/ce;->g:B

    iput-byte v1, p0, Lcom/loc/ce;->h:B

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/loc/ce;->i:[B

    iput-byte v1, p0, Lcom/loc/ce;->j:B

    return-void
.end method
