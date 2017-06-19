.class Lcom/amap/api/location/AMapLocationClient$a;
.super Landroid/os/Handler;
.source "AMapLocationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method public constructor <init>(Lcom/amap/api/location/AMapLocationClient;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 122
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/location/AMapLocationClient;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 117
    iput-object p1, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    .line 128
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget v2, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b

    .line 130
    packed-switch v2, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 133
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, v3, Lcom/amap/api/location/AMapLocationClient;->d:Lcom/amap/api/location/AMapLocationClientOption;

    .line 134
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->d:Lcom/amap/api/location/AMapLocationClientOption;

    .line 135
    invoke-interface {v2, v3}, Lcom/amap/api/location/LocationManagerBase;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    goto :goto_0

    .line 144
    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/location/AMapLocationListener;

    iput-object v2, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 145
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 146
    invoke-interface {v2, v3}, Lcom/amap/api/location/LocationManagerBase;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v2

    goto :goto_0

    .line 155
    :pswitch_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/location/AMapLocationListener;

    iput-object v2, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 156
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->e:Lcom/amap/api/location/AMapLocationListener;

    .line 157
    invoke-interface {v2, v3}, Lcom/amap/api/location/LocationManagerBase;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v2

    goto :goto_0

    .line 166
    :pswitch_3
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->startLocation()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 171
    :catch_3
    move-exception v2

    goto :goto_0

    .line 175
    :pswitch_4
    :try_start_5
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->stopLocation()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 180
    :catch_4
    move-exception v2

    goto :goto_0

    .line 184
    :pswitch_5
    :try_start_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/amap/api/fence/Fence;

    move-object v11, v0

    .line 185
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v3, v11, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iget-wide v4, v11, Lcom/amap/api/fence/Fence;->d:D

    iget-wide v6, v11, Lcom/amap/api/fence/Fence;->c:D

    iget v8, v11, Lcom/amap/api/fence/Fence;->e:F

    iget-wide v9, v11, Lcom/amap/api/fence/Fence;->f:J

    iget-object v11, v11, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-interface/range {v2 .. v11}, Lcom/amap/api/location/LocationManagerBase;->addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 192
    :catch_5
    move-exception v2

    goto :goto_0

    .line 196
    :pswitch_6
    :try_start_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/PendingIntent;

    .line 197
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v3, v2}, Lcom/amap/api/location/LocationManagerBase;->removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 202
    :catch_6
    move-exception v2

    goto :goto_0

    .line 206
    :pswitch_7
    :try_start_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/fence/Fence;

    .line 207
    iget-object v3, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, v3, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    iget-object v4, v2, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    iget-object v2, v2, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/amap/api/location/LocationManagerBase;->removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 213
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 217
    :pswitch_8
    :try_start_9
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    .line 218
    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->startAssistantLocation()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    .line 223
    :catch_8
    move-exception v2

    goto/16 :goto_0

    .line 227
    :pswitch_9
    :try_start_a
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    .line 228
    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->stopAssistantLocation()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    .line 233
    :catch_9
    move-exception v2

    goto/16 :goto_0

    .line 237
    :pswitch_a
    :try_start_b
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    invoke-interface {v2}, Lcom/amap/api/location/LocationManagerBase;->onDestroy()V

    .line 238
    iget-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/location/AMapLocationClient;->c:Lcom/amap/api/location/LocationManagerBase;

    const/4 v2, 0x0

    .line 239
    iput-object v2, p0, Lcom/amap/api/location/AMapLocationClient$a;->a:Lcom/amap/api/location/AMapLocationClient;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 244
    :catch_a
    move-exception v2

    goto/16 :goto_0

    .line 256
    :catch_b
    move-exception v2

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method
