.class Lcom/loc/h;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/g;


# direct methods
.method constructor <init>(Lcom/loc/g;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/loc/h;->a:Lcom/loc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-eqz p1, :cond_3

    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 98
    if-nez v2, :cond_4

    move v2, v1

    .line 101
    :goto_0
    if-lez v2, :cond_5

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v3, v3, Lcom/loc/g;->a:Landroid/os/Handler;

    if-nez v3, :cond_6

    .line 112
    :goto_1
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    .line 113
    iget-object v3, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-wide v6, v3, Lcom/loc/g;->f:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-wide v6, v3, Lcom/loc/g;->e:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_7

    :goto_2
    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/loc/e;->a(DD)Z

    move-result v0

    if-nez v0, :cond_8

    .line 121
    :cond_1
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    .line 122
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 123
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 127
    :goto_3
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    .line 131
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 132
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 133
    iput v0, v1, Landroid/os/Message;->what:I

    .line 134
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-nez v0, :cond_9

    .line 137
    :goto_4
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/g;->f:J

    .line 146
    :cond_2
    :goto_5
    return-void

    .line 94
    :cond_3
    return-void

    :cond_4
    const-string/jumbo v3, "satellites"

    .line 99
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 105
    :cond_5
    iget-object v3, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v3, v3, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    return-void

    .line 110
    :cond_6
    iget-object v3, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v3, v3, Lcom/loc/g;->a:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    goto :goto_5

    :cond_7
    move v0, v1

    .line 113
    goto :goto_2

    .line 114
    :cond_8
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 117
    iget-object v1, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v1, v1, Lcom/loc/g;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v1, v4, v5, v6, v7}, Lcom/loc/j;->a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 119
    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    goto :goto_3

    .line 135
    :cond_9
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "gps"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 169
    if-nez p2, :cond_1

    .line 171
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/h;->a:Lcom/loc/g;

    iget-object v0, v0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 169
    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method
