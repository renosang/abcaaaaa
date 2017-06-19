.class public Lcom/amap/api/location/AMapLocationClientOption;
.super Ljava/lang/Object;
.source "AMapLocationClientOption.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    .line 23
    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    .line 27
    sget v0, Lcom/loc/e;->j:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    .line 32
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    .line 37
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    .line 42
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 47
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    .line 52
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 57
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    .line 63
    iput-boolean v2, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    .line 68
    iput-boolean v3, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    .line 94
    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    .line 395
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    .line 396
    iget-object v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 397
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    .line 398
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    .line 399
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    .line 400
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 401
    iget-boolean v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    .line 402
    iget-wide v0, p1, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    .line 403
    return-object p0
.end method


# virtual methods
.method public clone()Lcom/amap/api/location/AMapLocationClientOption;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    invoke-direct {v0, p0}, Lcom/amap/api/location/AMapLocationClientOption;->a(Lcom/amap/api/location/AMapLocationClientOption;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    return-object v0
.end method

.method public getHttpTimeOut()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->b:J

    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->a:J

    return-wide v0
.end method

.method public getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method

.method public isGpsFirst()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    return v0
.end method

.method public isKillProcess()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->h:Z

    return v0
.end method

.method public isMockEnable()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->d:Z

    return v0
.end method

.method public isNeedAddress()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    return v0
.end method

.method public isOffset()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->j:Z

    return v0
.end method

.method public isOnceLocation()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->c:Z

    return v0
.end method

.method public isWifiActiveScan()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/amap/api/location/AMapLocationClientOption;->f:Z

    return v0
.end method

.method public setGpsFirst(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->i:Z

    .line 323
    return-object p0
.end method

.method public setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->g:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    .line 267
    return-object p0
.end method

.method public setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocationClientOption;->e:Z

    .line 217
    return-object p0
.end method
