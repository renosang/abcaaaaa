.class final Lcom/loc/cr;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:Lcom/loc/cb;


# direct methods
.method constructor <init>(Lcom/loc/cb;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cr;->a:Lcom/loc/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/location/Location;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    return v4

    :cond_1
    const-string/jumbo v0, "gps"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_2

    :goto_0
    if-nez p1, :cond_3

    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/loc/cr;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {}, Lcom/loc/cb;->h()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    invoke-static {}, Lcom/loc/cb;->i()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cz;->a(I)V

    invoke-static {}, Lcom/loc/cb;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/loc/cz;->b(I)V

    :goto_1
    iget-object v2, p0, Lcom/loc/cr;->a:Lcom/loc/cb;

    invoke-static {v2}, Lcom/loc/cb;->b(Lcom/loc/cb;)Lcom/loc/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loc/cy;->a()Z

    invoke-static {p1}, Lcom/loc/cr;->a(Landroid/location/Location;)Z

    iget-object v2, p0, Lcom/loc/cr;->a:Lcom/loc/cb;

    invoke-static {v2}, Lcom/loc/cb;->b(Lcom/loc/cb;)Lcom/loc/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loc/cy;->a()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {}, Lcom/loc/cb;->j()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-static {}, Lcom/loc/cb;->k()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cz;->a(I)V

    invoke-static {}, Lcom/loc/cb;->k()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/loc/cz;->b(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    return-void

    :cond_6
    invoke-static {}, Lcom/loc/cb;->l()I

    move-result v2

    invoke-static {v2}, Lcom/loc/cz;->a(I)V

    invoke-static {}, Lcom/loc/cb;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Lcom/loc/cz;->b(I)V

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/loc/cr;->a(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/location/Location;->setTime(J)V

    iget-object v2, p0, Lcom/loc/cr;->a:Lcom/loc/cb;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, v0, v1}, Lcom/loc/cb;->a(Lcom/loc/cb;Landroid/location/Location;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    return-void
.end method
