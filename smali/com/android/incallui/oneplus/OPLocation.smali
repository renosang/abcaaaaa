.class public Lcom/android/incallui/oneplus/OPLocation;
.super Ljava/lang/Object;
.source "OPLocation.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;
    }
.end annotation


# instance fields
.field private mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;

.field private mLocationListener:Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mLocationListener:Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;

    .line 28
    return-void
.end method

.method private initOption()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 67
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 60
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 6
    .param p1, "amapLocation"    # Lcom/amap/api/location/AMapLocation;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    .line 94
    .local v1, "errorCode":I
    const-string/jumbo v3, "InCall-OPLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getErrorCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string/jumbo v0, ""

    .line 96
    .local v0, "desc":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 98
    .local v2, "locBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 99
    const-string/jumbo v3, "desc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string/jumbo v3, "InCall-OPLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "desc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPLocation;->mLocationListener:Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "locBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v0    # "desc":Ljava/lang/String;
    .restart local v1    # "errorCode":I
    .restart local v2    # "locBundle":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPLocation;->mLocationListener:Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;

    invoke-interface {v3, v0}, Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;->onLocationCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation(Landroid/content/Context;Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "InCall-OPLocation"

    const-string/jumbo v1, "-- startLocation --"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 45
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;

    .line 48
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 49
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 51
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPLocation;->initOption()V

    .line 53
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 54
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 56
    iput-object p2, p0, Lcom/android/incallui/oneplus/OPLocation;->mLocationListener:Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;

    .line 38
    :cond_1
    return-void
.end method

.method public stopLocation()V
    .locals 3

    .prologue
    .line 71
    const-string/jumbo v1, "InCall-OPLocation"

    const-string/jumbo v2, "-- stopLocation --"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mLocationListener:Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;

    .line 75
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 78
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 80
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPLocation;->mAMapLocationClientOption:Lcom/amap/api/location/AMapLocationClientOption;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
