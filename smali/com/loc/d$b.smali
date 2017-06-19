.class Lcom/loc/d$b;
.super Landroid/os/Handler;
.source "APSServiceCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/loc/d;

.field final synthetic b:Lcom/loc/d;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/loc/d;Lcom/loc/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    iput-object p1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    .line 88
    iput-boolean v1, p0, Lcom/loc/d$b;->c:Z

    .line 89
    iput-boolean v1, p0, Lcom/loc/d$b;->d:Z

    .line 86
    iput-object p2, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 224
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 228
    :goto_1
    return-void

    .line 98
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v2, v2, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    const-string/jumbo v5, "isfirst"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/loc/d;->f:Z

    .line 101
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 102
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v6

    const-string/jumbo v5, "isNeedAddress"

    .line 104
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v8, "isOffset"

    .line 106
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 107
    iget-boolean v9, p0, Lcom/loc/d$b;->c:Z

    if-eq v5, v9, :cond_2

    .line 108
    :cond_0
    iget-object v9, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lcom/loc/d;->m:J

    .line 110
    :goto_2
    iput-boolean v5, p0, Lcom/loc/d$b;->c:Z

    .line 111
    iput-boolean v8, p0, Lcom/loc/d$b;->d:Z

    .line 112
    iget-object v9, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v9, v9, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v9, :cond_3

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->g:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    :goto_3
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/d;->i:Z

    .line 130
    iget-object v0, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_4
    const-string/jumbo v0, "wifiactivescan"

    .line 133
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    const-string/jumbo v4, "isKillProcess"

    .line 135
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/loc/d;->b:Z

    const-string/jumbo v1, "httptimeout"

    .line 136
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 137
    iget-object v1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->n:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    .line 147
    :goto_5
    iget-object v0, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    iget-object v1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->n:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/loc/d;->a(Lcom/loc/d;Lorg/json/JSONObject;)V

    .line 148
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 107
    :cond_2
    :try_start_4
    iget-boolean v9, p0, Lcom/loc/d$b;->d:Z

    if-ne v8, v9, :cond_0

    goto :goto_2

    .line 112
    :cond_3
    iget-object v9, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v9, v9, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 113
    invoke-virtual {v9}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    iget-wide v10, v9, Lcom/loc/d;->m:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    cmp-long v6, v6, v10

    if-ltz v6, :cond_4

    :goto_6
    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "location"

    .line 119
    iget-object v7, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v7, v7, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 121
    iput v1, v0, Landroid/os/Message;->what:I

    .line 122
    invoke-virtual {v4, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_4

    .line 159
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 113
    goto :goto_6

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->g:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 227
    :catch_2
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 139
    :cond_6
    :try_start_5
    iget-object v1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v3, "reversegeo"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 140
    iget-object v1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v3, "isOffset"

    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 142
    iget-object v1, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v1, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v3, "wifiactivescan"

    if-nez v0, :cond_7

    const-string/jumbo v0, "0"

    :goto_7
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "httptimeout"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "1"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 163
    :pswitch_2
    :try_start_6
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    invoke-virtual {v0}, Lcom/loc/d;->a()V

    goto/16 :goto_0

    .line 168
    :pswitch_3
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    invoke-virtual {v0}, Lcom/loc/d;->b()V

    goto/16 :goto_0

    .line 175
    :pswitch_4
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 179
    :try_start_7
    invoke-static {}, Lcom/loc/bu;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 186
    :cond_8
    :goto_8
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 179
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->a(Lcom/loc/d;)I

    move-result v0

    invoke-static {}, Lcom/loc/bu;->e()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 180
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->b(Lcom/loc/d;)I

    .line 181
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/loc/d;->i:Z

    .line 183
    iget-object v0, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 184
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->d:Lcom/loc/d$b;

    const/4 v2, 0x4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/d$b;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_8

    .line 192
    :pswitch_5
    :try_start_a
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 193
    :try_start_b
    invoke-static {}, Lcom/loc/bu;->f()Z

    move-result v0

    if-nez v0, :cond_b

    .line 209
    :cond_a
    :goto_9
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    .line 193
    :cond_b
    :try_start_d
    invoke-static {}, Lcom/loc/bu;->g()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_a

    .line 194
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/loc/d;->i:Z

    .line 196
    invoke-static {}, Lcom/loc/bu;->h()Z

    move-result v0

    if-nez v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bw;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 203
    :goto_a
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->d:Lcom/loc/d$b;

    const/4 v2, 0x5

    invoke-static {}, Lcom/loc/bu;->g()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/d$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 197
    :cond_c
    iget-object v0, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_a

    .line 200
    :cond_d
    iget-object v0, p0, Lcom/loc/d$b;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    .line 213
    :pswitch_6
    :try_start_e
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    iget-object v1, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    .line 217
    :try_start_f
    iget-object v0, p0, Lcom/loc/d$b;->b:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->c(Lcom/loc/d;)V

    .line 218
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    .line 93
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
    .end packed-switch
.end method
