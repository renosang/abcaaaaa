.class public Lcom/loc/g;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/content/Context;

.field c:Landroid/location/LocationManager;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:J

.field f:J

.field g:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/a$b;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 53
    iput-wide v0, p0, Lcom/loc/g;->e:J

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/loc/g;->f:J

    .line 88
    new-instance v0, Lcom/loc/h;

    invoke-direct {v0, p0}, Lcom/loc/h;-><init>(Lcom/loc/g;)V

    iput-object v0, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    .line 34
    iput-object p1, p0, Lcom/loc/g;->b:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    .line 36
    iget-object v0, p0, Lcom/loc/g;->b:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    if-nez v0, :cond_1

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method a(JF)V
    .locals 7

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .line 57
    if-eqz v6, :cond_1

    .line 60
    :goto_0
    iput-wide p1, p0, Lcom/loc/g;->e:J

    .line 61
    iget-object v0, p0, Lcom/loc/g;->c:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/loc/g;->g:Landroid/location/LocationListener;

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 84
    :cond_0
    :goto_1
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/loc/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "gps"

    .line 71
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const/16 v2, 0xc

    .line 72
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    const/4 v2, 0x2

    .line 74
    iput v2, v0, Landroid/os/Message;->what:I

    .line 75
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    .prologue
    .line 40
    iput-object p1, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    .line 41
    iget-object v0, p0, Lcom/loc/g;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/loc/g;->a(JF)V

    .line 44
    return-void
.end method
