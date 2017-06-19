.class Lcom/loc/aw$1;
.super Ljava/util/TimerTask;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/aw;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/loc/aw;


# direct methods
.method constructor <init>(Lcom/loc/aw;I)V
    .locals 0

    .prologue
    .line 3093
    iput-object p1, p0, Lcom/loc/aw$1;->b:Lcom/loc/aw;

    iput p2, p0, Lcom/loc/aw$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3097
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 3101
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/aw$1;->b:Lcom/loc/aw;

    invoke-static {v4}, Lcom/loc/aw;->g(Lcom/loc/aw;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    .line 3102
    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    .line 3106
    return-void

    :cond_0
    move v0, v1

    .line 3102
    goto :goto_0

    .line 3108
    :cond_1
    iget-object v0, p0, Lcom/loc/aw$1;->b:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->f(Lcom/loc/aw;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3111
    iget-object v0, p0, Lcom/loc/aw$1;->b:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->h(Lcom/loc/aw;)V

    .line 3113
    :goto_1
    return-void

    .line 3109
    :cond_2
    iget-object v0, p0, Lcom/loc/aw$1;->b:Lcom/loc/aw;

    iget v1, p0, Lcom/loc/aw$1;->a:I

    invoke-static {v0, v1}, Lcom/loc/aw;->a(Lcom/loc/aw;I)V

    goto :goto_1
.end method
