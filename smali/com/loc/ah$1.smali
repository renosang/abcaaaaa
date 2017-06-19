.class Lcom/loc/ah$1;
.super Ljava/lang/Thread;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/loc/ah$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/ah$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/ah$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    :try_start_0
    new-instance v1, Lcom/loc/aa;

    iget-object v0, p0, Lcom/loc/ah$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ak;->c()Lcom/loc/ak;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/aa;-><init>(Landroid/content/Context;Lcom/loc/z;)V

    .line 219
    iget-object v0, p0, Lcom/loc/ah$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/loc/al;

    invoke-direct {v2}, Lcom/loc/al;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v0

    .line 224
    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    .line 226
    invoke-virtual {v0}, Lcom/loc/am;->d()Ljava/lang/String;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/loc/ah$1;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v3, p0, Lcom/loc/ah$1;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
