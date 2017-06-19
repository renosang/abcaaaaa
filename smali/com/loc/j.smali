.class public Lcom/loc/j;
.super Ljava/lang/Object;
.source "OffsetUtil.java"


# static fields
.field static a:D

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/j;->b:Z

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 135
    sput-wide v0, Lcom/loc/j;->a:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_0

    .line 89
    new-instance v0, Lcom/amap/api/location/DPoint;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    .line 90
    invoke-static {p0, v0}, Lcom/loc/j;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    if-eqz p0, :cond_1

    const-string/jumbo v0, "libwgs2gcj.so"

    .line 48
    invoke-static {p0, v0}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/loc/j;->b:Z

    invoke-static {p1, v0}, Lcom/loc/j;->a(Lcom/amap/api/location/DPoint;Z)Lcom/amap/api/location/DPoint;

    move-result-object v0

    return-object v0

    .line 45
    :cond_1
    return-object v0

    .line 50
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-boolean v1, Lcom/loc/j;->b:Z

    if-nez v1, :cond_0

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/j;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/location/DPoint;Z)Lcom/amap/api/location/DPoint;
    .locals 6

    .prologue
    const/4 v0, 0x2

    .line 104
    :try_start_0
    new-array v0, v0, [D

    .line 105
    if-nez p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bx;->a(DD)[D

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    new-instance v1, Lcom/amap/api/location/DPoint;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    .line 129
    return-object v1

    :cond_1
    const/4 v1, 0x2

    .line 106
    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    invoke-static {v1, v0}, Lcom/amap/api/location/CoordUtil;->convertToGcj([D[D)I

    move-result v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bx;->a(DD)[D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 120
    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bx;->a(DD)[D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    .line 132
    return-object p0
.end method
