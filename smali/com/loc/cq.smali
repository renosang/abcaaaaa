.class final Lcom/loc/cq;
.super Ljava/util/TimerTask;
.source "Unknown"


# instance fields
.field private synthetic a:Lcom/loc/cp;


# direct methods
.method constructor <init>(Lcom/loc/cp;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cq;->a:Lcom/loc/cp;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    :try_start_0
    sget-boolean v0, Lcom/loc/cl;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cq;->a:Lcom/loc/cp;

    iget-object v0, v0, Lcom/loc/cp;->a:Lcom/loc/cl;

    invoke-static {v0}, Lcom/loc/cl;->c(Lcom/loc/cl;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cq;->a:Lcom/loc/cp;

    iget-object v0, v0, Lcom/loc/cp;->a:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/cq;->a:Lcom/loc/cp;

    iget-object v1, v1, Lcom/loc/cp;->a:Lcom/loc/cl;

    invoke-static {v1}, Lcom/loc/cl;->c(Lcom/loc/cl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Landroid/net/wifi/WifiManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method
