.class Lcom/loc/d$a;
.super Ljava/lang/Thread;
.source "APSServiceCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/d;


# direct methods
.method constructor <init>(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->d(Lcom/loc/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 273
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->h:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 356
    :cond_0
    :goto_1
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 271
    :try_start_2
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v4, 0x9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/loc/d;->a(Lcom/loc/d;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 352
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->i(Lcom/loc/d;)V

    goto :goto_1

    .line 274
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-boolean v0, v0, Lcom/loc/d;->i:Z

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 326
    :try_start_4
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 328
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 353
    :catch_2
    move-exception v0

    .line 337
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 352
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->i(Lcom/loc/d;)V

    goto :goto_1

    .line 276
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-boolean v3, v3, Lcom/loc/d;->f:Z

    invoke-static {v2, v3}, Lcom/loc/d;->a(Lcom/loc/d;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 280
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->e(Lcom/loc/d;)Lcom/loc/aw;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    if-nez v0, :cond_6

    .line 297
    :goto_3
    :try_start_8
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 298
    :try_start_9
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_7

    .line 302
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/d;->i:Z

    .line 303
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->g:Ljava/util/Vector;

    if-nez v0, :cond_8

    :cond_4
    move-object v0, v1

    .line 318
    :cond_5
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 319
    :try_start_a
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v2}, Lcom/loc/d;->f(Lcom/loc/d;)V

    .line 321
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v2}, Lcom/loc/d;->g(Lcom/loc/d;)V

    .line 323
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v2, v0}, Lcom/loc/d;->a(Lcom/loc/d;Landroid/os/Messenger;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 353
    :catch_3
    move-exception v0

    .line 352
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->i(Lcom/loc/d;)V

    goto/16 :goto_1

    .line 281
    :cond_6
    :try_start_b
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v2}, Lcom/loc/d;->e(Lcom/loc/d;)Lcom/loc/aw;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, v3, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/loc/aw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 295
    :catch_4
    move-exception v0

    .line 294
    :try_start_c
    iget-object v2, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v3, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/loc/d;->a(Lcom/loc/d;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, v2, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    .line 353
    :catchall_1
    move-exception v0

    .line 352
    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->h(Lcom/loc/d;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 353
    :goto_5
    throw v0

    .line 298
    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 299
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/loc/d;->m:J

    goto :goto_4

    .line 318
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 303
    :cond_8
    :try_start_f
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    move-object v0, v1

    .line 306
    :goto_6
    if-lez v2, :cond_5

    .line 307
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "location"

    .line 309
    iget-object v6, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v6, v6, Lcom/loc/d;->l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 310
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 311
    iput v0, v4, Landroid/os/Message;->what:I

    .line 312
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->g:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 313
    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 314
    iget-object v4, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v4, v4, Lcom/loc/d;->g:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 315
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 327
    :cond_9
    :try_start_10
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    iget-object v0, v0, Lcom/loc/d;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 353
    :cond_a
    iget-object v0, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v0}, Lcom/loc/d;->i(Lcom/loc/d;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/loc/d$a;->a:Lcom/loc/d;

    invoke-static {v1}, Lcom/loc/d;->i(Lcom/loc/d;)V

    goto :goto_5
.end method
