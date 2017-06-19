.class public Lcom/amap/api/location/AMapLocationClient;
.super Ljava/lang/Object;
.source "AMapLocationClient.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/location/AMapLocationClient$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/location/AMapLocationClient$a;

.field b:Landroid/content/Context;

.field c:Lcom/amap/api/location/LocationManagerBase;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:Lcom/amap/api/location/AMapLocationListener;

.field f:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 50
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amap/api/location/AMapLocationClient$a;

    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->f:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClient$a;-><init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 6

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient;->b:Landroid/content/Context;

    const-string/jumbo v0, "2.3.0"

    .line 90
    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.location.LocationManagerWrapper"

    const-class v3, Lcom/loc/a;

    const/4 v0, 0x2

    .line 91
    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/af;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/LocationManagerBase;

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 96
    new-instance v0, Lcom/loc/a;

    invoke-direct {v0, p1, p2}, Lcom/loc/a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    goto :goto_0
.end method


# virtual methods
.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 347
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    .line 349
    iput-object p1, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 350
    iput-wide p2, v1, Lcom/amap/api/fence/Fence;->d:D

    .line 351
    iput-wide p4, v1, Lcom/amap/api/fence/Fence;->c:D

    .line 352
    iput p6, v1, Lcom/amap/api/fence/Fence;->e:F

    .line 353
    iput-object p9, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 354
    iput-wide p7, v1, Lcom/amap/api/fence/Fence;->f:J

    .line 355
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 356
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 357
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 518
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 519
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 520
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 393
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 394
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 395
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 396
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/amap/api/fence/Fence;

    invoke-direct {v1}, Lcom/amap/api/fence/Fence;-><init>()V

    .line 375
    iput-object p2, v1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 376
    iput-object p1, v1, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 377
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xa

    .line 378
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 379
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 291
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 292
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 293
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z

    .line 298
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 2

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 271
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 272
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 273
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z

    .line 278
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "LocationManagerOption\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 2

    .prologue
    .line 427
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 428
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 429
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 2

    .prologue
    .line 305
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 306
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 307
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 2

    .prologue
    .line 440
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 441
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 442
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 318
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 319
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    .prologue
    .line 502
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 503
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 504
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 505
    iget-object v1, p0, Lcom/amap/api/location/AMapLocationClient;->a:Lcom/amap/api/location/AMapLocationClient$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
