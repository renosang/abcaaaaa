.class public Lcom/loc/f;
.super Ljava/lang/Object;
.source "FenceManager.java"


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/fence/Fence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    .line 32
    iput-object p1, p0, Lcom/loc/f;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "fenceid"

    .line 51
    iget-object v3, p2, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "event"

    .line 52
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/loc/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/app/PendingIntent;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    if-nez p2, :cond_2

    .line 210
    :cond_0
    return v1

    .line 208
    :cond_1
    return v1

    .line 209
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 219
    :goto_0
    if-nez v2, :cond_5

    .line 229
    :cond_3
    return v1

    .line 215
    :cond_4
    return v1

    .line 219
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/Fence;

    .line 221
    iget-object v3, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 225
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 228
    goto :goto_0

    .line 221
    :cond_7
    invoke-direct {p0, v0}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/amap/api/fence/Fence;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    .line 375
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 369
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    if-nez p1, :cond_2

    .line 242
    :cond_0
    return v2

    .line 240
    :cond_1
    return v2

    .line 241
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 247
    :cond_3
    :goto_0
    if-nez v3, :cond_5

    .line 265
    :cond_4
    return v2

    .line 247
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 250
    :goto_1
    if-nez v4, :cond_7

    .line 260
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 250
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 251
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    .line 252
    iget-object v5, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 256
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 259
    goto :goto_1

    .line 252
    :cond_9
    invoke-direct {p0, v1}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_2
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 383
    return-void
.end method

.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 283
    :cond_0
    if-nez v4, :cond_3

    .line 348
    :cond_1
    return-void

    .line 279
    :cond_2
    return-void

    .line 283
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    .line 286
    invoke-direct {p0, v1}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 289
    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 290
    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->d:D

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    .line 291
    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->c:D

    aput-wide v6, v2, v3

    const/4 v3, 0x2

    .line 292
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    const/4 v3, 0x3

    .line 293
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v2, v3

    .line 294
    invoke-static {v2}, Lcom/loc/bw;->a([D)F

    move-result v2

    .line 295
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    const/high16 v6, 0x43fa0000    # 500.0f

    .line 296
    cmpl-float v6, v3, v6

    if-ltz v6, :cond_5

    .line 297
    iget v3, v1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v6, 0x43fa0000    # 500.0f

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 307
    cmpl-float v2, v2, v6

    if-lez v2, :cond_7

    .line 308
    iget v2, v1, Lcom/amap/api/fence/Fence;->g:I

    if-nez v2, :cond_6

    move v2, v3

    :goto_2
    const/4 v3, 0x0

    .line 311
    iput v3, v1, Lcom/amap/api/fence/Fence;->g:I

    .line 318
    :goto_3
    if-nez v2, :cond_9

    .line 336
    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 337
    iget-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_4

    .line 338
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/amap/api/fence/Fence;->h:J

    sub-long/2addr v2, v6

    .line 339
    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->c()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gtz v2, :cond_b

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_4

    .line 340
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_0

    .line 299
    :cond_5
    iget v6, v1, Lcom/amap/api/fence/Fence;->e:F

    add-float/2addr v3, v6

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    .line 309
    goto :goto_2

    .line 313
    :cond_7
    iget v2, v1, Lcom/amap/api/fence/Fence;->g:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_8

    :goto_6
    const/4 v2, 0x1

    .line 316
    iput v2, v1, Lcom/amap/api/fence/Fence;->g:I

    move v2, v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    .line 314
    goto :goto_6

    .line 319
    :cond_9
    iget v2, v1, Lcom/amap/api/fence/Fence;->g:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-wide/16 v2, -0x1

    .line 321
    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    .line 322
    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_0

    .line 327
    :pswitch_1
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/fence/Fence;->h:J

    .line 328
    invoke-virtual {v1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Lcom/amap/api/fence/Fence;I)V

    goto/16 :goto_0

    .line 337
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 339
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/PendingIntent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    if-nez p1, :cond_1

    .line 166
    :cond_0
    return v1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    invoke-direct {p0, v1}, Lcom/loc/f;->a(Ljava/util/List;)Z

    move-result v0

    return v0

    .line 169
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/Fence;

    .line 170
    iget-object v0, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 186
    :cond_0
    return v1

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 192
    :cond_2
    return v1
.end method

.method public a(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 77
    if-nez p2, :cond_1

    .line 78
    :cond_0
    return v3

    .line 77
    :cond_1
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget v0, p1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 88
    return v3

    .line 83
    :cond_2
    return v3

    .line 89
    :cond_3
    iget v0, p1, Lcom/amap/api/fence/Fence;->e:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 93
    return v3

    .line 94
    :cond_4
    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    :cond_5
    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    const/4 v0, 0x7

    .line 108
    invoke-virtual {p1}, Lcom/amap/api/fence/Fence;->a()I

    move-result v2

    if-gt v2, v0, :cond_9

    .line 116
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    .line 117
    :goto_0
    if-nez v4, :cond_a

    :cond_6
    const/16 v0, 0x14

    .line 121
    if-gt v2, v0, :cond_b

    const/4 v0, -0x1

    .line 127
    iput v0, p1, Lcom/amap/api/fence/Fence;->g:I

    .line 128
    invoke-direct {p0}, Lcom/loc/f;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 98
    return v3

    .line 103
    :cond_8
    return v3

    .line 112
    :cond_9
    return v3

    .line 117
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 125
    :cond_b
    return v3

    .line 129
    :cond_c
    iget-object v0, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 139
    if-nez v2, :cond_f

    .line 142
    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/loc/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 134
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/Fence;

    .line 135
    iget-object v4, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object v1, v2

    :cond_e
    move-object v2, v1

    .line 138
    goto :goto_2

    .line 140
    :cond_f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3
.end method
