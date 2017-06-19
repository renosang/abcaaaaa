.class Lcom/loc/bf$1;
.super Landroid/telephony/PhoneStateListener;
.source "CgiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bf;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bf;


# direct methods
.method constructor <init>(Lcom/loc/bf;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    .prologue
    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-virtual {v0, p1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v0, p1}, Lcom/loc/bf;->a(Lcom/loc/bf;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_0
    return-void

    .line 982
    :cond_0
    return-void

    .line 992
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .prologue
    .line 1045
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1046
    packed-switch v0, :pswitch_data_0

    .line 1067
    :goto_0
    return-void

    .line 1051
    :pswitch_0
    iget-object v0, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v0}, Lcom/loc/bf;->b(Lcom/loc/bf;)V

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1057
    :pswitch_1
    iget-object v0, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v0}, Lcom/loc/bf;->c(Lcom/loc/bf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 2

    .prologue
    const/16 v0, -0x71

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v1}, Lcom/loc/bf;->a(Lcom/loc/bf;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1009
    :goto_0
    iget-object v1, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v1, v0}, Lcom/loc/bf;->a(Lcom/loc/bf;I)V

    .line 1015
    :goto_1
    return-void

    .line 1001
    :pswitch_0
    invoke-static {p1}, Lcom/loc/bw;->a(I)I

    move-result v0

    goto :goto_0

    .line 1004
    :pswitch_1
    invoke-static {p1}, Lcom/loc/bw;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    goto :goto_1

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    const/16 v0, -0x71

    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v1}, Lcom/loc/bf;->a(Lcom/loc/bf;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1034
    :goto_0
    iget-object v1, p0, Lcom/loc/bf$1;->a:Lcom/loc/bf;

    invoke-static {v1, v0}, Lcom/loc/bf;->a(Lcom/loc/bf;I)V

    .line 1040
    :goto_1
    return-void

    .line 1020
    :cond_0
    return-void

    .line 1026
    :pswitch_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-static {v0}, Lcom/loc/bw;->a(I)I

    move-result v0

    goto :goto_0

    .line 1029
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1024
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
