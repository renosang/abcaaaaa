.class public Lcom/loc/a$b;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/loc/a;


# direct methods
.method public constructor <init>(Lcom/loc/a;)V
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    .line 594
    iput-object p1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    .line 595
    return-void
.end method

.method public constructor <init>(Lcom/loc/a;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    .line 589
    iput-object p1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    .line 590
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v2, 0xa

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 599
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 602
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 700
    return-void

    .line 605
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v0

    .line 606
    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 705
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->e:Lcom/loc/f;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    if-nez v0, :cond_8

    .line 716
    :goto_2
    if-nez v1, :cond_9

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->a(Lcom/loc/a;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-result v0

    if-nez v0, :cond_a

    .line 733
    :cond_1
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    move-result v0

    if-nez v0, :cond_c

    .line 742
    :goto_4
    return-void

    :cond_2
    :try_start_4
    const-class v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 607
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "location"

    .line 608
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 609
    invoke-static {v0}, Lcom/loc/e;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v0

    :try_start_5
    const-string/jumbo v1, "lbs"

    .line 610
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 623
    :sswitch_1
    :try_start_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8

    .line 624
    :try_start_7
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_5
    move-object v1, v0

    .line 632
    goto :goto_1

    .line 625
    :cond_3
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/loc/a;->m:J

    .line 626
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/loc/a;->p:Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 632
    :catch_1
    move-exception v1

    :goto_6
    move-object v1, v0

    .line 633
    goto :goto_1

    .line 635
    :sswitch_2
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/a;->m:J

    .line 636
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iput-boolean v4, v0, Lcom/loc/a;->p:Z

    .line 637
    return-void

    .line 646
    :sswitch_3
    :try_start_8
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->d(Lcom/loc/a;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 652
    :goto_7
    return-void

    .line 658
    :sswitch_4
    :try_start_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 659
    iput v1, v0, Landroid/os/Message;->what:I

    .line 660
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    if-nez v1, :cond_4

    .line 664
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget v1, v0, Lcom/loc/a;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/a;->o:I

    .line 665
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget v0, v0, Lcom/loc/a;->o:I

    if-lt v0, v2, :cond_5

    .line 675
    :goto_8
    return-void

    .line 661
    :cond_4
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/a;->o:I

    .line 662
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_8

    .line 674
    :catch_2
    move-exception v0

    goto :goto_8

    .line 666
    :cond_5
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->b:Lcom/loc/a$b;

    const/16 v1, 0x65

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/a$b;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_8

    .line 681
    :sswitch_5
    :try_start_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 682
    iput v1, v0, Landroid/os/Message;->what:I

    .line 683
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    if-nez v1, :cond_6

    .line 687
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget v1, v0, Lcom/loc/a;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/a;->o:I

    .line 688
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget v0, v0, Lcom/loc/a;->o:I

    if-lt v0, v2, :cond_7

    .line 698
    :goto_9
    return-void

    .line 684
    :cond_6
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/a;->o:I

    .line 685
    iget-object v1, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->h:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_9

    .line 697
    :catch_3
    move-exception v0

    goto :goto_9

    .line 689
    :cond_7
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->b:Lcom/loc/a$b;

    const/16 v1, 0x66

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/a$b;->sendEmptyMessageDelayed(IJ)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9

    .line 706
    :cond_8
    :try_start_b
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0, v1}, Lcom/loc/f;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    .line 714
    :catch_4
    move-exception v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    :try_start_c
    const-string/jumbo v0, "gps"

    .line 716
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    .line 717
    invoke-static {v0}, Lcom/loc/a;->e(Lcom/loc/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->g:Lcom/loc/i;

    if-nez v0, :cond_b

    .line 721
    :goto_a
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    .line 722
    invoke-interface {v0, v1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_b

    .line 730
    :catch_5
    move-exception v0

    .line 726
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 719
    :cond_b
    :try_start_d
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->g:Lcom/loc/i;

    invoke-virtual {v0, v1}, Lcom/loc/i;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_a

    .line 734
    :cond_c
    :try_start_e
    iget-object v0, p0, Lcom/loc/a$b;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->stopLocation()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_4

    .line 741
    :catch_6
    move-exception v0

    .line 737
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 651
    :catch_7
    move-exception v0

    goto/16 :goto_7

    .line 632
    :catch_8
    move-exception v0

    move-object v0, v1

    goto/16 :goto_6

    .line 616
    :catch_9
    move-exception v0

    goto/16 :goto_1

    .line 602
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
    .end sparse-switch
.end method
