.class final Lcom/loc/cm;
.super Ljava/lang/Thread;
.source "Unknown"


# instance fields
.field private synthetic a:Lcom/loc/cl;


# direct methods
.method constructor <init>(Lcom/loc/cl;Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    new-instance v1, Lcom/loc/cn;

    iget-object v2, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/loc/cn;-><init>(Lcom/loc/cl;B)V

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Lcom/loc/cn;)Lcom/loc/cn;

    iget-object v0, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    invoke-static {v1}, Lcom/loc/cl;->a(Lcom/loc/cl;)Lcom/loc/cn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Landroid/telephony/PhoneStateListener;)V

    iget-object v0, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    new-instance v1, Lcom/loc/co;

    iget-object v2, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/loc/co;-><init>(Lcom/loc/cl;B)V

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Lcom/loc/co;)Lcom/loc/co;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/cm;->a:Lcom/loc/cl;

    invoke-static {v1}, Lcom/loc/cl;->b(Lcom/loc/cl;)Lcom/loc/co;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void

    :catch_1
    move-exception v0

    goto :goto_0
.end method
