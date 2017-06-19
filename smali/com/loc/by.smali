.class final Lcom/loc/by;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:Lcom/loc/bz;

.field protected d:Lcom/loc/dg;

.field protected e:Lcom/loc/cj;

.field protected f:Lcom/loc/cf;

.field protected g:Lcom/loc/cd;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/loc/by;->a:S

    iput v1, p0, Lcom/loc/by;->b:I

    iput-object v0, p0, Lcom/loc/by;->c:Lcom/loc/bz;

    iput-object v0, p0, Lcom/loc/by;->d:Lcom/loc/dg;

    iput-object v0, p0, Lcom/loc/by;->e:Lcom/loc/cj;

    iput-object v0, p0, Lcom/loc/by;->f:Lcom/loc/cf;

    iput-object v0, p0, Lcom/loc/by;->g:Lcom/loc/cd;

    return-void
.end method
