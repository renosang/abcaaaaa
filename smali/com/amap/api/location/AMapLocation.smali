.class public Lcom/amap/api/location/AMapLocation;
.super Landroid/location/Location;
.source "AMapLocation.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:D

.field private r:D

.field private s:I


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string/jumbo v0, ""

    .line 111
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 115
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 119
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 123
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 127
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 131
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 135
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 139
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 143
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 149
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 154
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    .line 164
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    const-string/jumbo v0, "success"

    .line 168
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 172
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    .line 182
    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 187
    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    .line 192
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    .line 208
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 209
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->r:D

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    .line 111
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 115
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 119
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 123
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 127
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 131
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 135
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 139
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 143
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 149
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 154
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    .line 164
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    const-string/jumbo v0, "success"

    .line 168
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 172
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    .line 182
    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 187
    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    .line 192
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    .line 200
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 697
    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 725
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 711
    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->q:D

    return-wide v0
.end method

.method public getLocationType()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    invoke-super {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 739
    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setErrorCode(I)V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    if-nez v0, :cond_0

    .line 263
    packed-switch p1, :pswitch_data_0

    .line 306
    :goto_0
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    .line 307
    return-void

    .line 261
    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "success"

    .line 265
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    .line 268
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    .line 271
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    .line 274
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 277
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u89e3\u6790XML\u51fa\u9519"

    .line 280
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    .line 283
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "KEY\u9519\u8bef"

    .line 286
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u5176\u4ed6\u9519\u8bef"

    .line 289
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    .line 292
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    .line 295
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    .line 298
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    .line 301
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 497
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 498
    return-void
.end method

.method public setLocationDetail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    .line 227
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 513
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->r:D

    .line 514
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setOffset(Z)V
    .locals 0

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    .line 583
    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setSatellites(I)V
    .locals 0

    .prologue
    .line 533
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    .line 534
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public toStr()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStr(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 634
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 685
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "country"

    .line 637
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "province"

    .line 638
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "city"

    .line 639
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cityCode"

    .line 640
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "district"

    .line 641
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "adCode"

    .line 642
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "address"

    .line 643
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "road"

    .line 644
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "street"

    .line 645
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "number"

    .line 646
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiName"

    .line 647
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorCode"

    .line 648
    iget v3, p0, Lcom/amap/api/location/AMapLocation;->m:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorInfo"

    .line 649
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationDetail"

    .line 650
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "altitude"

    .line 651
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "bearing"

    .line 652
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "speed"

    .line 653
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "satellites"

    .line 654
    iget v3, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    :try_start_2
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 657
    if-nez v2, :cond_2

    :cond_1
    :goto_1
    :pswitch_1
    :try_start_3
    const-string/jumbo v2, "time"

    .line 668
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_2
    const-string/jumbo v2, "locationType"

    .line 670
    iget v3, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "accuracy"

    .line 671
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "latitude"

    .line 672
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "longitude"

    .line 673
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "provider"

    .line 674
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 684
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 680
    goto/16 :goto_0

    :cond_2
    :try_start_4
    const-string/jumbo v3, "desc"

    .line 658
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "desc"

    const-string/jumbo v4, "desc"

    .line 659
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 666
    :catch_1
    move-exception v2

    goto :goto_1

    .line 635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "province="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "district="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cityCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "road="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "poiName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "street="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "streetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "errorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "locationDetail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "locationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
