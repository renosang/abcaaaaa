.class public Lcom/loc/e;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:I

.field public static n:Z

.field public static o:I

.field static p:Ljava/lang/String;

.field static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/lang/String;

.field private static t:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "http://apilocate.amap.com/mobile/binary"

    .line 44
    sput-object v0, Lcom/loc/e;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 77
    sput-object v0, Lcom/loc/e;->a:Ljava/lang/String;

    .line 78
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.amap.api.location"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.autonavi.aps.amapapi"

    aput-object v1, v0, v3

    sput-object v0, Lcom/loc/e;->t:[Ljava/lang/String;

    .line 87
    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    .line 91
    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    .line 95
    sput-object v2, Lcom/loc/e;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 103
    sput-object v0, Lcom/loc/e;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 107
    sput-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 121
    sput-object v0, Lcom/loc/e;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 125
    sput-object v0, Lcom/loc/e;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 129
    sput-object v0, Lcom/loc/e;->i:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 133
    sput v0, Lcom/loc/e;->j:I

    .line 137
    sput-object v2, Lcom/loc/e;->k:Ljava/lang/String;

    .line 141
    sput-object v2, Lcom/loc/e;->l:Ljava/lang/String;

    const/16 v0, 0x14

    .line 145
    sput v0, Lcom/loc/e;->m:I

    .line 149
    sput-boolean v3, Lcom/loc/e;->n:Z

    .line 153
    sput v3, Lcom/loc/e;->o:I

    .line 471
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    .line 473
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNKWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string/jumbo v1, "GPRS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const-string/jumbo v1, "EDGE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "UMTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "EVDO_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "EVDO_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "1xRTT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "HSDPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string/jumbo v2, "HSUPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "HSPA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string/jumbo v2, "IDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "EVDO_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "LTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string/jumbo v2, "EHRPD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/loc/e;->r:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string/jumbo v2, "HSPAP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 489
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 185
    if-eqz p0, :cond_1

    .line 188
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    .line 190
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    .line 191
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    .line 192
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    .line 193
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    .line 196
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorInfo(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    .line 199
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setStreet(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setNumber(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    .line 203
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "citycode"

    .line 204
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "desc"

    .line 205
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "adcode"

    .line 206
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    .line 213
    if-nez v3, :cond_2

    .line 216
    :cond_0
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V

    .line 221
    return-object v0

    .line 186
    :cond_1
    return-object v0

    .line 213
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, " "

    const-string/jumbo v3, ""

    .line 214
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/loc/v;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 461
    :try_start_0
    new-instance v0, Lcom/loc/v$a;

    const-string/jumbo v2, "loc"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.3.0"

    invoke-direct {v0, v2, p0, v3}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/e;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/v$a;->a()Lcom/loc/v;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Lcom/loc/l;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/loc/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 326
    invoke-static {p0}, Lcom/loc/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/loc/bw;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/loc/e;->c()V

    .line 331
    invoke-static {p0}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/e;->p:Ljava/lang/String;

    .line 335
    sget-object v0, Lcom/loc/e;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/e;->b(Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "http://abroad.apilocate.amap.com/mobile/binary"

    .line 328
    sput-object v0, Lcom/loc/e;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(DD)Z
    .locals 10

    .prologue
    const/16 v8, 0x7c

    const/4 v1, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    const-wide v2, 0x4052400000000000L    # 73.0

    .line 165
    sub-double v2, p2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    .line 166
    sub-double v4, p0, v4

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 168
    if-gez v3, :cond_1

    .line 169
    :cond_0
    return v0

    :cond_1
    const/16 v4, 0x65

    .line 168
    if-ge v3, v4, :cond_0

    if-ltz v2, :cond_0

    if-ge v2, v8, :cond_0

    .line 171
    mul-int/lit8 v3, v3, 0x7c

    add-int/2addr v2, v3

    :try_start_0
    const-string/jumbo v3, "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000001011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011101010111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111101111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000110111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011010111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100110001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111110011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111100000000000010111110100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000001111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111000000111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111101111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000101111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000011110000000001111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000011000011111100000000111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000001111111100111111111100110111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000101111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011111000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100100000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011100000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110011111110000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110111111110000000000000000000000111011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000011111111111111111111111111111111111111111111111100001111111111111111111111111111111111111111111111111010000000000000000000000111111111111111111111111111111111111111111110000000000000001111111111111111111111111111111111111111111100000000000000000000011111111111111111111111111111111100000000000000000000000000001111111111111111111111111111111111111111110000000000000000000001111111111111111111111111111111100000000000000000000000000000001111111111111111111111111111111111111111000000000000000000000111111111111111111111111111111110000000000000000000000000000001111111111111111111111111111111111111111100000000000000000000111111111111111111111111111111000000000000000000000000000000000111111111111111111111111111111111111111111000000000000000000001111111111111111111111111110000000000000000000000000000000000001110011111111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000001111111111111111111111111111111111111000000000000000000001111111111111111111000000000000000000000000000000000000000000000000011111111111111111111111111111111111100000000000000000000011111111111111111100000000000000000000000000000000000000000000000000011111111111111111111111111111111111000000000000000000001111111111111111100000000000000000000000000000000000000000000000000000000111111111111111111111111111111110000000000000000000000000111111111100000000000000000000000000000000000000000000000000111111111111111111111111111111111111111000000000000000000000000011111111100000000000000000000000000000000000000000000000000011111111111111111111111111111110001111100000000000000000000000000111110000000000000000000000000000000000000000000000000000001111111111111111111111111111111000000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000011111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110000000000000000000000"

    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x31

    .line 173
    if-eq v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    return v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "phone"

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-object v1

    .line 349
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 350
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 359
    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 352
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 359
    :catch_0
    move-exception v0

    .line 358
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 412
    if-nez p0, :cond_1

    .line 413
    :cond_0
    return-void

    .line 412
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 418
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 421
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    if-nez v0, :cond_6

    :cond_2
    move-object v0, v1

    .line 427
    :goto_0
    if-nez v0, :cond_7

    .line 436
    :cond_3
    :goto_1
    return-void

    .line 416
    :cond_4
    return-void

    .line 419
    :cond_5
    return-void

    .line 423
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 424
    invoke-static {v0}, Lcom/loc/e;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 425
    new-instance v0, Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/loc/bh;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 427
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    sput-object v0, Lcom/loc/e;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/loc/e;->t:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 373
    :try_start_0
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 378
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string/jumbo v1, "a9a9d23668a1a7ea93de9b21d67e436a"

    const-string/jumbo v2, "F13160D440C7D0229DA95450F66AF92154AC84DF088F8CA3100B2E8131D57F3DC67124D4C466056E7A3DFBE035E1B9A4B9DA4DB68AE65A43EDFD92F5C60EF0C9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string/jumbo v1, "fe643c382e5c3b3962141f1a2e815a78"

    const-string/jumbo v2, "FB923EE67A8B4032DAA517DD8CD7A26FF7C25B0C3663F92A0B61251C4FFFA858DF169D61321C3E7919CB67DF8EFEC827"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string/jumbo v1, "b2e8bd171989cb2c3c13bd89b4c1067a"

    const-string/jumbo v2, "239CE372F804D4BE4EAFFD183668379BDF274440E6F246AB16BBE6F5D1D30DEACFBBF0C942485727FF12288228760A9E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string/jumbo v1, "9a571aa113ad987d626c0457828962e6"

    const-string/jumbo v2, "D2FF99A88BEB04683D89470D4FA72B1749DA456AB0D0F1A476477CE5A6874F53A9106423D905F9D808C0FCE8E7F1E04AC642F01FE41D0C7D933971F45CBA72B7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string/jumbo v1, "668319f11506def6208d6afe320dfd52"

    const-string/jumbo v2, "53E53D46011A6BBAEA4FAE5442E659E0577CDD336F930C28635C322FB3F51C3C63F7FBAC9EAE448DFA2E5E5D716C4807"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;

    const-string/jumbo v1, "256b0f26bb2a9506be6cfdb84028ae08"

    const-string/jumbo v2, "AF2228680EDC323FBA035362EB7E1E38A0C33E1CF6F6FB805EE553A230CBA754CD9552EB9B546542CBE619E8293151BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :goto_1
    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loc/e;->q:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 445
    if-nez p0, :cond_1

    .line 446
    :cond_0
    new-array v0, v0, [B

    return-object v0

    .line 445
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 448
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 450
    new-array v3, v2, [B

    .line 451
    :goto_0
    if-lt v0, v2, :cond_2

    .line 455
    return-object v3

    .line 452
    :cond_2
    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 453
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
