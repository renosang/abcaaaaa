.class Lcom/loc/aw$a;
.super Ljava/lang/Object;
.source "APS.java"

# interfaces
.implements Lcom/loc/ax$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/aw;


# direct methods
.method constructor <init>(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/loc/aw$a;->a:Lcom/loc/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/loc/aw$a;->a:Lcom/loc/aw;

    iput p1, v0, Lcom/loc/aw;->e:I

    .line 3403
    return-void
.end method
