.class Lcom/loc/aw$2;
.super Ljava/util/TimerTask;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/aw;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/aw;


# direct methods
.method constructor <init>(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 3728
    iput-object p1, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3734
    sget-object v0, Lcom/loc/bd;->a:[I

    aget v0, v0, v3

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_2

    .line 3738
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 3740
    iget-object v0, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->j(Lcom/loc/aw;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "fetchoffdatamobile"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v7, v4

    .line 3753
    :goto_0
    invoke-static {}, Lcom/loc/bm;->a()Lcom/loc/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bm;->b()Ljava/util/ArrayList;

    move-result-object v9

    .line 3757
    if-nez v9, :cond_4

    .line 3776
    :cond_0
    iget-object v0, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->m(Lcom/loc/aw;)V

    .line 3779
    :try_start_0
    invoke-static {}, Lcom/loc/bk;->a()Lcom/loc/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    .line 3780
    invoke-static {v1}, Lcom/loc/aw;->l(Lcom/loc/aw;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    .line 3779
    invoke-virtual {v0, v1, v2}, Lcom/loc/bk;->b(Landroid/content/Context;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3781
    if-nez v0, :cond_7

    .line 3795
    :cond_1
    :goto_1
    return-void

    .line 3735
    :cond_2
    iget-object v0, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->i(Lcom/loc/aw;)V

    .line 3736
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v0, "1"

    .line 3742
    iget-object v1, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v1}, Lcom/loc/aw;->j(Lcom/loc/aw;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "fetchoffdatamobile"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v7, v0

    .line 3748
    goto :goto_0

    :catch_0
    move-exception v0

    move v7, v4

    goto :goto_0

    .line 3757
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 3762
    iget-object v0, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->k(Lcom/loc/aw;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_2
    move v8, v4

    .line 3765
    :goto_3
    if-ge v8, v10, :cond_0

    const/16 v0, 0x14

    if-ge v8, v0, :cond_0

    .line 3766
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/loc/bl;

    .line 3767
    iget-object v0, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->l(Lcom/loc/aw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v1}, Lcom/loc/aw;->k(Lcom/loc/aw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/loc/bl;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_6

    move v5, v4

    :goto_4
    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/loc/bd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z

    .line 3765
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    .line 3763
    :cond_5
    iget-object v0, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    iget-object v1, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-virtual {v1, v3}, Lcom/loc/aw;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/aw;->a(Lcom/loc/aw;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    move v5, v3

    .line 3767
    goto :goto_4

    .line 3781
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3782
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3783
    iget-object v2, p0, Lcom/loc/aw$2;->a:Lcom/loc/aw;

    invoke-static {v2}, Lcom/loc/aw;->k(Lcom/loc/aw;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 3793
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
