.class final Lcom/loc/cn;
.super Landroid/telephony/PhoneStateListener;
.source "Unknown"


# instance fields
.field private synthetic a:Lcom/loc/cl;


# direct methods
.method private constructor <init>(Lcom/loc/cl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cl;B)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/loc/cn;-><init>(Lcom/loc/cl;)V

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/cl;->b(Lcom/loc/cl;J)J

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-static {v0, p1}, Lcom/loc/cl;->a(Lcom/loc/cl;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Z)Z

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cl;Z)Z

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-static {v0}, Lcom/loc/cl;->f(Lcom/loc/cl;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cl;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/cl;->a(Lcom/loc/cl;I)I

    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/loc/cl;->b(Lcom/loc/cl;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-static {v0}, Lcom/loc/cl;->g(Lcom/loc/cl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/loc/cl;->c(Lcom/loc/cl;I)I

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-static {v0}, Lcom/loc/cl;->h(Lcom/loc/cl;)I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-static {v1}, Lcom/loc/cl;->h(Lcom/loc/cl;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    invoke-static {v0, v1}, Lcom/loc/cl;->c(Lcom/loc/cl;I)I

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/loc/cl;->c(Lcom/loc/cl;I)I

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cn;->a:Lcom/loc/cl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/loc/cl;->c(Lcom/loc/cl;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
