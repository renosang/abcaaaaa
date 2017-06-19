.class Lcom/loc/d$c;
.super Ljava/lang/Thread;
.source "APSServiceCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/d;


# direct methods
.method constructor <init>(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->j(Lcom/loc/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->q:Z

    if-eqz v0, :cond_1

    .line 584
    :goto_1
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->q:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 594
    :goto_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 595
    return-void

    .line 578
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->k(Lcom/loc/d;)V

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    goto :goto_2

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/d;->q:Z

    .line 582
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xaaa9

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, v0, Lcom/loc/d;->p:Ljava/net/ServerSocket;

    goto :goto_1

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->p:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/d;->r:Ljava/net/Socket;

    .line 586
    iget-object v0, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, p0, Lcom/loc/d$c;->a:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->r:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/loc/d;->a(Lcom/loc/d;Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
