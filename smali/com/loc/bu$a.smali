.class Lcom/loc/bu$a;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "0"

    .line 554
    iput-object v0, p0, Lcom/loc/bu$a;->a:Ljava/lang/String;

    const-string/jumbo v0, "0"

    .line 555
    iput-object v0, p0, Lcom/loc/bu$a;->b:Ljava/lang/String;

    const-string/jumbo v0, "0"

    .line 556
    iput-object v0, p0, Lcom/loc/bu$a;->c:Ljava/lang/String;

    return-void
.end method
