.class Lcom/loc/aw$b;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/aw;


# direct methods
.method private constructor <init>(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2143
    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/aw;Lcom/loc/aw$1;)V
    .locals 0

    .prologue
    .line 2138
    invoke-direct {p0, p1}, Lcom/loc/aw$b;-><init>(Lcom/loc/aw;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2148
    if-nez p1, :cond_1

    .line 2149
    :cond_0
    return-void

    .line 2148
    :cond_1
    if-eqz p2, :cond_0

    .line 2151
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2156
    iget-object v2, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v2}, Lcom/loc/aw;->a(Lcom/loc/aw;)Lcom/loc/bg;

    move-result-object v2

    const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"

    .line 2161
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 2199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    .line 2231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    .line 2236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    .line 2244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    .line 2252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2256
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_c

    .line 2285
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 2153
    :cond_3
    return-void

    .line 2163
    :cond_4
    if-eqz v2, :cond_5

    .line 2170
    :try_start_1
    invoke-virtual {v2}, Lcom/loc/bg;->a()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2177
    :goto_1
    if-nez v0, :cond_6

    .line 2188
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/aw;->a(Lcom/loc/aw;J)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2284
    :catch_0
    move-exception v0

    .line 2280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2164
    :cond_5
    return-void

    .line 2175
    :catch_1
    move-exception v1

    goto :goto_1

    .line 2178
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    iget-object v1, v1, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2179
    :try_start_4
    iget-object v2, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v2}, Lcom/loc/aw;->b(Lcom/loc/aw;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2180
    iget-object v2, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v2}, Lcom/loc/aw;->b(Lcom/loc/aw;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2181
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 2200
    :cond_7
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->a(Lcom/loc/aw;)Lcom/loc/bg;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    .line 2205
    :try_start_6
    invoke-virtual {v2}, Lcom/loc/bg;->c()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v0

    .line 2211
    :goto_3
    :try_start_7
    iget-object v1, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v1}, Lcom/loc/aw;->b(Lcom/loc/aw;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2214
    :goto_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2219
    :pswitch_1
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->c(Lcom/loc/aw;)V

    goto :goto_0

    .line 2201
    :cond_8
    return-void

    .line 2210
    :catch_2
    move-exception v1

    goto :goto_3

    .line 2212
    :cond_9
    iget-object v1, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/aw;->a(Lcom/loc/aw;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_4

    .line 2216
    :pswitch_2
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->c(Lcom/loc/aw;)V

    goto :goto_0

    .line 2222
    :pswitch_3
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->c(Lcom/loc/aw;)V

    goto :goto_0

    .line 2235
    :cond_a
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/aw;->k:Z

    goto :goto_0

    .line 2240
    :cond_b
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/aw;->k:Z

    .line 2241
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->d(Lcom/loc/aw;)Lcom/loc/cb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2242
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->e(Lcom/loc/aw;)V

    goto/16 :goto_0

    .line 2263
    :cond_c
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    invoke-static {v0}, Lcom/loc/aw;->f(Lcom/loc/aw;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2267
    iget-object v0, p0, Lcom/loc/aw$b;->a:Lcom/loc/aw;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/loc/aw;->a(Lcom/loc/aw;ZI)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 2214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
