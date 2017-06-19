.class public Lcom/loc/bw;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static a:I

.field private static b:[Ljava/lang/String;

.field private static c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/text/DecimalFormat;

.field private static e:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    sput v0, Lcom/loc/bw;->a:I

    .line 52
    sput-object v1, Lcom/loc/bw;->b:[Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/bw;->c:Ljava/util/Hashtable;

    .line 1411
    sput-object v1, Lcom/loc/bw;->d:Ljava/text/DecimalFormat;

    .line 1412
    sput-object v1, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AmapLoc;Lcom/autonavi/aps/amapapi/model/AmapLoc;)F
    .locals 4

    .prologue
    const/4 v0, 0x4

    .line 521
    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 523
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 524
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 525
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 526
    invoke-static {v0}, Lcom/loc/bw;->a([D)F

    move-result v0

    return v0
.end method

.method public static a([D)F
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 503
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 509
    new-array v8, v2, [F

    .line 510
    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 511
    aget v0, v8, v9

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 507
    return v0
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 337
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static a(II)I
    .locals 2

    .prologue
    .line 869
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1194
    if-eqz p0, :cond_0

    .line 1196
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 1203
    :cond_0
    return v0
.end method

.method public static a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    .locals 2

    .prologue
    const/16 v0, 0x9

    .line 403
    invoke-static {p1}, Lcom/loc/bw;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    if-eqz p0, :cond_0

    .line 407
    instance-of v1, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "android.telephony.cdma.CdmaCellLocation"

    .line 411
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    .line 419
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 408
    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 539
    if-eqz p0, :cond_0

    .line 544
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    .line 540
    :cond_0
    return-object v0

    .line 549
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/loc/bw;

    monitor-enter v1

    .line 1414
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1417
    :goto_0
    sget-object v2, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_3

    .line 1426
    sget-object v2, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v2, 0x0

    .line 1428
    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 1429
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide p0

    .line 1431
    :cond_1
    sget-object v0, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_2
    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1419
    :cond_3
    :try_start_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, p2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1424
    :catch_0
    move-exception v2

    goto :goto_1

    :cond_4
    :try_start_3
    const-string/jumbo v0, "NULL"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1498
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 1499
    sget-object v0, Lcom/loc/bw;->d:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 1502
    :goto_0
    sget-object v0, Lcom/loc/bw;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 1503
    sget-object v0, Lcom/loc/bw;->d:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    return-object v0

    .line 1500
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/loc/bw;->d:Ljava/text/DecimalFormat;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "UTF-8"

    .line 1344
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1350
    :goto_0
    invoke-static {v0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1349
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(D)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 195
    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 197
    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a(JJ)Z
    .locals 6

    .prologue
    const-class v1, Lcom/loc/bw;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "yyyyMMdd"

    const/4 v0, 0x0

    .line 1445
    sget-object v3, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_0

    .line 1454
    sget-object v3, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    :goto_0
    :try_start_1
    sget-object v2, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :goto_1
    monitor-exit v1

    .line 1464
    return v0

    .line 1447
    :cond_0
    :try_start_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v3, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1452
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1459
    :cond_1
    :try_start_3
    sget-object v2, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/loc/bw;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1463
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 450
    if-eqz p0, :cond_0

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 455
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v0

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    :try_start_0
    const-string/jumbo v4, "android.provider.Settings$Global"

    const-string/jumbo v0, "AIRPLANE_MODE_ON"

    .line 476
    invoke-static {v4, v0}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 477
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 478
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 479
    aput-object v3, v5, v6

    const/4 v3, 0x1

    .line 480
    aput-object v0, v5, v3

    const/4 v0, 0x2

    .line 481
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v6, Landroid/content/ContentResolver;

    .line 482
    aput-object v6, v0, v3

    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    .line 483
    aput-object v6, v0, v3

    const-string/jumbo v3, "getInt"

    .line 484
    invoke-static {v4, v3, v5, v0}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v2, :cond_3

    :goto_0
    return v1

    .line 451
    :cond_0
    return v1

    :cond_1
    :try_start_1
    const-string/jumbo v4, "android.provider.Settings$System"

    const-string/jumbo v0, "AIRPLANE_MODE_ON"

    .line 458
    invoke-static {v4, v0}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 459
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 460
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 461
    aput-object v3, v5, v6

    const/4 v3, 0x1

    .line 462
    aput-object v0, v5, v3

    const/4 v0, 0x2

    .line 463
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v6, Landroid/content/ContentResolver;

    .line 464
    aput-object v6, v0, v3

    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    .line 465
    aput-object v6, v0, v3

    const-string/jumbo v3, "getInt"

    .line 466
    invoke-static {v4, v3, v5, v0}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    .line 485
    goto :goto_0

    :catch_0
    move-exception v0

    .line 493
    :goto_2
    return v1

    .line 467
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/net/wifi/ScanResult;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 971
    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 978
    :cond_1
    :goto_0
    return v0

    .line 971
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 973
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 975
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 976
    goto :goto_0

    :cond_3
    move v0, v1

    .line 974
    goto :goto_0
.end method

.method public static a(Lcom/amap/api/location/AMapLocation;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 256
    if-eqz p0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    .line 265
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    .line 266
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v2

    .line 267
    cmpl-double v3, v4, v8

    if-nez v3, :cond_1

    cmpl-double v3, v6, v8

    if-nez v3, :cond_1

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 269
    cmpl-double v2, v4, v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, v6, v2

    if-gtz v2, :cond_0

    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 274
    cmpg-double v2, v4, v2

    if-gez v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v6, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 269
    goto :goto_1

    :cond_3
    move v2, v0

    .line 274
    goto :goto_2
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 292
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v4

    .line 311
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    .line 312
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v2

    .line 313
    cmpl-double v3, v4, v8

    if-nez v3, :cond_1

    cmpl-double v3, v6, v8

    if-nez v3, :cond_1

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-nez v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 315
    cmpl-double v2, v4, v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, v6, v2

    if-gtz v2, :cond_0

    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 320
    cmpg-double v2, v4, v2

    if-gez v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v6, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 315
    goto :goto_1

    :cond_3
    move v2, v0

    .line 320
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,"

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 180
    :cond_0
    return v1

    .line 182
    :cond_1
    return v1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 902
    invoke-static {p0, p1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(J)[B
    .locals 6

    .prologue
    const/16 v0, 0x8

    .line 1385
    new-array v1, v0, [B

    const/4 v0, 0x0

    .line 1386
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1389
    return-object v1

    .line 1387
    :cond_0
    mul-int/lit8 v2, v0, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final a(Ljava/io/File;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1295
    if-nez p0, :cond_1

    .line 1296
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t operate on null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x800

    .line 1299
    new-array v0, v0, [B

    .line 1302
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1303
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1304
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1308
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1309
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1311
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 1305
    :cond_2
    invoke-virtual {v2, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 591
    :try_start_0
    invoke-static {p0}, Lcom/loc/w;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    .line 596
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 348
    if-nez p0, :cond_2

    :goto_0
    const/4 v1, 0x2

    .line 351
    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v3, v2

    const-string/jumbo v1, "0"

    aput-object v1, v3, v4

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-le v1, v5, :cond_5

    move v1, v4

    .line 360
    :goto_1
    if-nez v1, :cond_6

    :goto_2
    const/4 v0, 0x0

    .line 375
    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 379
    :goto_3
    if-eqz v0, :cond_9

    .line 382
    :goto_4
    aget-object v0, v3, v2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    :cond_0
    aget-object v0, v3, v2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_1
    move-object v0, v3

    .line 392
    :goto_5
    return-object v0

    .line 349
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 354
    goto :goto_1

    :cond_4
    move v1, v2

    .line 356
    goto :goto_1

    :cond_5
    move v1, v2

    .line 358
    goto :goto_1

    .line 361
    :cond_6
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 362
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v2

    .line 364
    :goto_6
    array-length v6, v5

    if-lt v1, v6, :cond_8

    .line 367
    :cond_7
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_2

    .line 364
    :cond_8
    aget-char v6, v5, v1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 378
    :catch_0
    move-exception v0

    move v0, v2

    .line 377
    goto :goto_3

    :cond_9
    const-string/jumbo v0, "0"

    .line 380
    aput-object v0, v3, v2

    goto :goto_4

    .line 382
    :cond_a
    aget-object v0, v3, v4

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    sput-object v3, Lcom/loc/bw;->b:[Ljava/lang/String;

    move-object v0, v3

    goto :goto_5

    .line 384
    :cond_b
    aget-object v0, v3, v4

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Lcom/loc/bw;->b:[Ljava/lang/String;

    if-nez v0, :cond_c

    move-object v0, v3

    goto :goto_5

    .line 386
    :cond_c
    sget-object v0, Lcom/loc/bw;->b:[Ljava/lang/String;

    goto :goto_5
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final b([B)J
    .locals 7

    .prologue
    const/16 v6, 0x8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1270
    :goto_0
    if-lt v0, v6, :cond_0

    .line 1274
    return-wide v2

    .line 1271
    :cond_0
    shl-long/2addr v2, v6

    .line 1272
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 1270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 684
    if-eqz p0, :cond_1

    .line 687
    sget-object v1, Lcom/loc/e;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 694
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 701
    :goto_0
    :try_start_1
    sget-object v2, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_3

    .line 712
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    if-nez v1, :cond_4

    .line 728
    :cond_0
    :goto_2
    sget-object v0, Lcom/loc/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 731
    :goto_3
    sget-object v0, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 734
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 685
    :cond_1
    return-object v0

    .line 688
    :cond_2
    sget-object v0, Lcom/loc/e;->k:Ljava/lang/String;

    return-object v0

    .line 699
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 702
    :try_start_2
    sput-object v2, Lcom/loc/e;->l:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 711
    :catch_1
    move-exception v2

    goto :goto_1

    .line 715
    :cond_4
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_5

    .line 718
    :goto_5
    if-nez v0, :cond_6

    .line 724
    :goto_6
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 716
    :cond_5
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 719
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    const-string/jumbo v0, ","

    .line 729
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loc/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string/jumbo v0, ","

    .line 732
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loc/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1214
    if-nez p0, :cond_0

    .line 1217
    :goto_0
    sget-object v1, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1215
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public static b(D)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide v2, 0x4056800000000000L    # 90.0

    .line 211
    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    .line 213
    cmpg-double v2, p0, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 1397
    new-array v1, v0, [B

    const/4 v0, 0x0

    .line 1398
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1401
    return-object v1

    .line 1399
    :cond_0
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x6

    .line 1317
    new-array v1, v0, [B

    const-string/jumbo v0, ":"

    .line 1318
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    .line 1319
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 1323
    return-object v1

    .line 1320
    :cond_0
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1321
    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 1319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 562
    sget v1, Lcom/loc/bw;->a:I

    if-gtz v1, :cond_0

    const-string/jumbo v1, "android.os.Build$VERSION"

    :try_start_0
    const-string/jumbo v2, "SDK_INT"

    .line 568
    invoke-static {v1, v2}, Lcom/loc/bv;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 579
    :goto_0
    return v0

    .line 563
    :cond_0
    sget v0, Lcom/loc/bw;->a:I

    return v0

    .line 578
    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v2, "SDK"

    .line 571
    invoke-static {v1, v2}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 577
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final c([B)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1280
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 1282
    return v0
.end method

.method public static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 746
    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->i(Landroid/content/Context;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 771
    :goto_0
    return-object v0

    .line 749
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1333
    invoke-static {p0, v0}, Lcom/loc/bw;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 1472
    new-array v1, v0, [B

    const/4 v0, 0x0

    .line 1473
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1476
    return-object v1

    .line 1474
    :cond_0
    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final d([B)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    .line 1287
    if-lt v0, v2, :cond_0

    .line 1291
    return v1

    .line 1288
    :cond_0
    shl-int/lit8 v1, v1, 0x8

    .line 1289
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1363
    :try_start_0
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1364
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :goto_0
    return-object v0

    .line 1369
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "activity"

    .line 1230
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1232
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1242
    return v4

    .line 1233
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1234
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1235
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 1238
    return v4

    .line 1236
    :cond_2
    return v5

    .line 1242
    :catch_0
    move-exception v0

    .line 1244
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1245
    return v5
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    invoke-static {}, Lcom/loc/bw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "amaplocationapi"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1393
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/bw;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1468
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/bw;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 858
    invoke-static {v0, v1}, Lcom/loc/bw;->a(II)I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static i()V
    .locals 1

    .prologue
    .line 988
    sget-object v0, Lcom/loc/bw;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 989
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    .line 1082
    :try_start_0
    sget-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    .line 1083
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1090
    :goto_0
    return-object v0

    .line 1089
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static k()Z
    .locals 2

    .prologue
    .line 1486
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    .line 1487
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
