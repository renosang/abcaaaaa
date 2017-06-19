.class Lcom/loc/a$a;
.super Ljava/lang/Thread;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/loc/a;


# direct methods
.method public constructor <init>(Lcom/loc/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    iput-object p1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    .line 407
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/a$a;->a:Z

    .line 408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/loc/a$a;->a:Z

    .line 417
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/a$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    invoke-static {v0, v6}, Lcom/loc/a;->a(Lcom/loc/a;Z)Z

    .line 538
    return-void

    .line 417
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 424
    :try_start_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 425
    iput v1, v0, Landroid/os/Message;->what:I

    .line 426
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_5

    .line 436
    :goto_2
    :try_start_3
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 448
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    .line 449
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    .line 450
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 469
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->h:Landroid/os/Messenger;

    if-eqz v0, :cond_c

    .line 497
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/loc/a;->n:J

    .line 498
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/a;->a(Lcom/loc/a;Z)Z

    .line 499
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 500
    iput v1, v0, Landroid/os/Message;->what:I

    .line 501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isfirst"

    .line 502
    iget-object v3, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    invoke-static {v3}, Lcom/loc/a;->c(Lcom/loc/a;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "wifiactivescan"

    .line 503
    iget-object v3, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isNeedAddress"

    .line 504
    iget-object v3, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isKillProcess"

    .line 505
    iget-object v3, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isOffset"

    .line 506
    iget-object v3, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "httptimeout"

    .line 507
    iget-object v3, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v3, v3, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 508
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 509
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->i:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 512
    :try_start_4
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    if-nez v1, :cond_e

    .line 520
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/a;->b(Lcom/loc/a;Z)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 522
    :try_start_6
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 528
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 536
    :catch_1
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 427
    :cond_5
    :try_start_8
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 434
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_6
    const-wide/16 v0, 0x7d0

    .line 438
    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 444
    :catch_3
    move-exception v0

    .line 440
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 448
    :cond_7
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    .line 449
    invoke-static {v0}, Lcom/loc/a;->a(Lcom/loc/a;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_8
    :try_start_b
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_6
    const-wide/16 v0, 0x7d0

    .line 458
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 464
    :catch_4
    move-exception v0

    .line 460
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 450
    :cond_a
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->b(Lcom/loc/a;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-boolean v0, v0, Lcom/loc/a;->p:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    if-eqz v0, :cond_8

    goto/16 :goto_3

    .line 452
    :cond_b
    :try_start_d
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-wide v0, v0, Lcom/loc/a;->n:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/a;->n:J
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_6

    .line 474
    :cond_c
    :try_start_e
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget v1, v0, Lcom/loc/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/a;->l:I

    .line 475
    iget-object v0, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget v0, v0, Lcom/loc/a;->l:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_d

    const-wide/16 v0, 0x32

    .line 489
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_3

    .line 491
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 476
    :cond_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 477
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 478
    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/16 v3, 0xa

    .line 479
    invoke-virtual {v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    const-string/jumbo v3, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1"

    .line 480
    invoke-virtual {v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    const-string/jumbo v3, "location"

    .line 481
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 482
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 483
    iput v1, v0, Landroid/os/Message;->what:I

    .line 484
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->b:Lcom/loc/a$b;

    if-eqz v1, :cond_4

    .line 485
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->b:Lcom/loc/a$b;

    invoke-virtual {v1, v0}, Lcom/loc/a$b;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_4

    .line 513
    :cond_e
    :try_start_f
    iget-object v1, p0, Lcom/loc/a$a;->b:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_5

    .line 519
    :catch_6
    move-exception v0

    .line 518
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_5
.end method
