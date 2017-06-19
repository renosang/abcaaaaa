.class public Lcom/loc/bj$a;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bj;

.field private b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/loc/bj;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 771
    iput-object p1, p0, Lcom/loc/bj$a;->a:Lcom/loc/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object v0, p0, Lcom/loc/bj$a;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 769
    iput-object v0, p0, Lcom/loc/bj$a;->c:Ljava/lang/String;

    .line 773
    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/loc/bj$a;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0
.end method

.method public a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/loc/bj$a;->b:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 781
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "##"

    const-string/jumbo v1, "#"

    .line 791
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bj$a;->c:Ljava/lang/String;

    .line 793
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcom/loc/bj$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/loc/bj$a;->c:Ljava/lang/String;

    return-object v0
.end method
