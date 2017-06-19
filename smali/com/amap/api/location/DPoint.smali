.class public Lcom/amap/api/location/DPoint;
.super Ljava/lang/Object;
.source "DPoint.java"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    cmpl-double v8, p3, v6

    if-lez v8, :cond_0

    .line 30
    :goto_0
    cmpg-double v8, v6, v4

    if-gez v8, :cond_1

    .line 33
    :goto_1
    cmpl-double v6, p1, v2

    if-lez v6, :cond_2

    .line 36
    :goto_2
    cmpg-double v6, v2, v0

    if-gez v6, :cond_3

    .line 39
    :goto_3
    iput-wide v4, p0, Lcom/amap/api/location/DPoint;->a:D

    .line 40
    iput-wide v0, p0, Lcom/amap/api/location/DPoint;->b:D

    .line 41
    return-void

    :cond_0
    move-wide v6, p3

    .line 27
    goto :goto_0

    :cond_1
    move-wide v4, v6

    .line 30
    goto :goto_1

    :cond_2
    move-wide v2, p1

    .line 33
    goto :goto_2

    :cond_3
    move-wide v0, v2

    .line 36
    goto :goto_3
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/amap/api/location/DPoint;->b:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/amap/api/location/DPoint;->a:D

    return-wide v0
.end method
