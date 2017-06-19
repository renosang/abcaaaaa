.class public Lcom/loc/d;
.super Ljava/lang/Object;
.source "APSServiceCore.java"

# interfaces
.implements Lcom/amap/api/location/APSServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/d$a;,
        Lcom/loc/d$b;,
        Lcom/loc/d$c;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:Lcom/loc/d$b;

.field e:Lcom/loc/d$a;

.field f:Z

.field g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field volatile h:Z

.field i:Z

.field j:Ljava/lang/Object;

.field k:Landroid/os/Looper;

.field l:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field m:J

.field n:Lorg/json/JSONObject;

.field o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field p:Ljava/net/ServerSocket;

.field q:Z

.field r:Ljava/net/Socket;

.field s:Z

.field t:Lcom/loc/d$c;

.field private volatile u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Lcom/loc/aw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/loc/d;->b:Z

    .line 54
    iput-boolean v2, p0, Lcom/loc/d;->u:Z

    .line 58
    iput-boolean v2, p0, Lcom/loc/d;->v:Z

    .line 59
    iput-object v3, p0, Lcom/loc/d;->c:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/loc/d$b;

    invoke-direct {v0, p0, p0}, Lcom/loc/d$b;-><init>(Lcom/loc/d;Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->d:Lcom/loc/d$b;

    .line 65
    iput-object v3, p0, Lcom/loc/d;->e:Lcom/loc/d$a;

    .line 69
    iput-boolean v2, p0, Lcom/loc/d;->f:Z

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->g:Ljava/util/Vector;

    .line 74
    iput v2, p0, Lcom/loc/d;->w:I

    .line 75
    iput-boolean v2, p0, Lcom/loc/d;->x:Z

    .line 76
    iput-boolean v2, p0, Lcom/loc/d;->y:Z

    .line 235
    iput-object v3, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    .line 255
    iput-boolean v2, p0, Lcom/loc/d;->h:Z

    .line 257
    iput-boolean v2, p0, Lcom/loc/d;->i:Z

    .line 258
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->j:Ljava/lang/Object;

    .line 261
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/d;->m:J

    .line 474
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    .line 548
    iput-object v3, p0, Lcom/loc/d;->p:Ljava/net/ServerSocket;

    .line 549
    iput-boolean v2, p0, Lcom/loc/d;->q:Z

    .line 550
    iput-object v3, p0, Lcom/loc/d;->r:Ljava/net/Socket;

    .line 551
    iput-boolean v2, p0, Lcom/loc/d;->s:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/loc/d;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/loc/d;->w:I

    return v0
.end method

.method private a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    .prologue
    .line 361
    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 362
    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 363
    invoke-virtual {v0, p2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 371
    return-object v0
.end method

.method static synthetic a(Lcom/loc/d;ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/loc/d;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/d;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/loc/d;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    invoke-virtual {v0, p1}, Lcom/loc/aw;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 2

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Lcom/loc/bu;->q()Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    :cond_0
    :goto_0
    invoke-static {}, Lcom/loc/bu;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 392
    :goto_1
    invoke-static {}, Lcom/loc/bu;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    :cond_1
    :goto_2
    invoke-static {}, Lcom/loc/bu;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 414
    :cond_2
    :goto_3
    return-void

    .line 377
    :cond_3
    if-eqz p1, :cond_0

    const-string/jumbo v0, "0"

    .line 378
    invoke-static {v0}, Lcom/loc/bu;->a(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    .line 380
    iput v1, v0, Landroid/os/Message;->what:I

    .line 381
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    goto :goto_3

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->a()V

    goto :goto_1

    .line 392
    :cond_5
    iget-boolean v0, p0, Lcom/loc/d;->x:Z

    if-nez v0, :cond_1

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->x:Z

    .line 397
    iget-object v0, p0, Lcom/loc/d;->d:Lcom/loc/d$b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 400
    :cond_6
    iget-boolean v0, p0, Lcom/loc/d;->y:Z

    if-nez v0, :cond_2

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->y:Z

    .line 405
    iget-object v0, p0, Lcom/loc/d;->d:Lcom/loc/d$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method static synthetic a(Lcom/loc/d;Landroid/os/Messenger;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/loc/d;->a(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/loc/d;->a(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/d;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/loc/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 628
    if-eqz p1, :cond_3

    const/16 v1, 0x7530

    :try_start_0
    const-string/jumbo v0, "jsonp1"

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 640
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 641
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 642
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 643
    if-nez v6, :cond_4

    :cond_0
    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 672
    :goto_0
    :try_start_3
    sget v6, Lcom/loc/e;->j:I

    .line 673
    sput v0, Lcom/loc/e;->j:I

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 675
    iget-object v0, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_10

    :goto_1
    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    .line 676
    invoke-static {v0}, Lcom/loc/bw;->d(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_12

    .line 694
    :cond_1
    :goto_2
    if-eqz v3, :cond_14

    .line 725
    :cond_2
    :goto_3
    :try_start_4
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v1, "HTTP/1.0 200 OK"

    .line 727
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content-Length:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 730
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 735
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 744
    :goto_4
    return-void

    .line 629
    :cond_3
    return-void

    .line 643
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string/jumbo v7, " "

    .line 644
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 648
    if-nez v6, :cond_6

    :cond_5
    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_0

    :cond_6
    array-length v7, v6

    if-le v7, v4, :cond_5

    const/4 v7, 0x1

    .line 649
    aget-object v6, v6, v7

    const-string/jumbo v7, "\\?"

    .line 650
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 651
    if-nez v6, :cond_8

    :cond_7
    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto :goto_0

    :cond_8
    array-length v7, v6

    if-le v7, v4, :cond_7

    const/4 v7, 0x1

    .line 652
    aget-object v6, v6, v7

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 653
    if-nez v7, :cond_a

    :cond_9
    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto/16 :goto_0

    :cond_a
    array-length v6, v7

    if-lez v6, :cond_9

    move v6, v5

    .line 654
    :goto_5
    array-length v8, v7

    if-lt v6, v8, :cond_b

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    goto/16 :goto_0

    .line 655
    :cond_b
    aget-object v8, v7, v6

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 656
    if-nez v8, :cond_d

    .line 654
    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 656
    :cond_d
    array-length v9, v8

    if-le v9, v4, :cond_c

    const-string/jumbo v9, "to"

    const/4 v10, 0x0

    .line 657
    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    :goto_7
    const-string/jumbo v9, "callback"

    const/4 v10, 0x0

    .line 660
    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    :goto_8
    const-string/jumbo v9, "_"

    const/4 v10, 0x0

    .line 663
    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    .line 664
    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 740
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 717
    :goto_9
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "&&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "({\'package\':\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result-object v0

    .line 725
    :try_start_8
    new-instance v2, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v3, "HTTP/1.0 200 OK"

    .line 727
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Content-Length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 730
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 735
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    .line 738
    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_e
    const/4 v1, 0x1

    .line 658
    :try_start_a
    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_7

    :cond_f
    const/4 v9, 0x1

    .line 661
    aget-object v0, v8, v9
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_8

    .line 675
    :cond_10
    :try_start_b
    iget-object v0, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    cmp-long v0, v8, v10

    if-gtz v0, :cond_11

    move v0, v4

    :goto_a
    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_11
    move v0, v5

    goto :goto_a

    .line 678
    :cond_12
    :try_start_c
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/loc/aw;->a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 679
    iget-object v0, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v0

    if-nez v0, :cond_13

    .line 691
    :goto_b
    :try_start_d
    sput v6, Lcom/loc/e;->j:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 740
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_9

    .line 680
    :cond_13
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\',\'error_code\':"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 682
    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ",\'error\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 683
    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v3

    goto :goto_b

    .line 692
    :catch_3
    move-exception v0

    .line 691
    :try_start_f
    sput v6, Lcom/loc/e;->j:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 740
    :catchall_0
    move-exception v0

    .line 725
    :goto_c
    :try_start_10
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    const/4 v6, 0x1

    invoke-direct {v1, v4, v6, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string/jumbo v4, "HTTP/1.0 200 OK"

    .line 727
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Content-Length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 730
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 735
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 738
    :goto_d
    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    .line 743
    :catch_4
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 692
    :catchall_1
    move-exception v0

    .line 691
    :try_start_13
    sput v6, Lcom/loc/e;->j:I

    throw v0

    .line 695
    :cond_14
    iget-object v0, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_15

    .line 700
    iget-object v0, p0, Lcom/loc/d;->o:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 704
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\'precision\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 705
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",\'x\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 706
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "},\'version_code\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "2.3.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\',\'version\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "2.3.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 710
    :goto_e
    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bw;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 696
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v3

    goto :goto_e

    .line 739
    :catch_5
    move-exception v0

    .line 735
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_4

    .line 738
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 739
    :catchall_2
    move-exception v0

    .line 735
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4

    .line 738
    :goto_f
    :try_start_16
    throw v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    .line 739
    :catch_7
    move-exception v0

    .line 735
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4

    goto/16 :goto_4

    .line 738
    :catch_8
    move-exception v0

    goto/16 :goto_4

    .line 739
    :catchall_3
    move-exception v0

    .line 735
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4

    .line 738
    :goto_10
    :try_start_19
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_4

    .line 739
    :catch_9
    move-exception v1

    .line 735
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4

    goto/16 :goto_d

    .line 738
    :catch_a
    move-exception v1

    goto/16 :goto_d

    .line 739
    :catchall_4
    move-exception v0

    .line 735
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 736
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_4

    .line 738
    :goto_11
    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4

    :catch_b
    move-exception v1

    goto :goto_11

    :catch_c
    move-exception v1

    goto/16 :goto_d

    .line 740
    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_c

    :catchall_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_c

    .line 738
    :catch_d
    move-exception v1

    goto :goto_10

    .line 740
    :catch_e
    move-exception v1

    move-object v1, v3

    goto/16 :goto_9

    .line 738
    :catch_f
    move-exception v1

    goto :goto_f

    :catch_10
    move-exception v0

    goto/16 :goto_4
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    invoke-virtual {v0, p1}, Lcom/loc/aw;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/d;)I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/loc/d;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/d;->w:I

    return v0
.end method

.method static synthetic c(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->i()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->h:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 418
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->f()V

    return-void
.end method

.method static synthetic e(Lcom/loc/d;)Lcom/loc/aw;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 446
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->v:Z

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->v:Z

    .line 450
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    iget-object v1, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/aw;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 447
    :cond_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 461
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->u:Z

    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/loc/d;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-void

    .line 462
    :cond_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 470
    iput-boolean v1, p0, Lcom/loc/d;->u:Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->e()V

    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 478
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 479
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/d;->k:Landroid/os/Looper;

    .line 483
    iget-object v1, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/e;->a(Landroid/content/Context;)V

    .line 484
    iget-object v1, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    iget-object v2, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/loc/aw;->a(Landroid/content/Context;)V

    .line 485
    iget-object v1, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/d;->a:Landroid/content/Context;

    .line 486
    invoke-static {v3}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-virtual {v1, v2}, Lcom/loc/aw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :try_start_1
    new-instance v1, Lcom/loc/v$a;

    const-string/jumbo v2, "loc"

    const-string/jumbo v3, "2.3.0"

    const-string/jumbo v4, "AMAP_Location_SDK_Android 2.3.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/loc/e;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/v$a;->a()Lcom/loc/v;
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 497
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/loc/d;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/loc/o;->a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 499
    :try_start_3
    iget-object v1, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v2, "key"

    iget-object v3, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    iget-object v1, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v2, "X-INFO"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "AMAP_Location_SDK_Android 2.3.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "netloc"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "gpsstatus"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "nbssid"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :goto_1
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :goto_2
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "wait1stwifi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    :goto_3
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "autoup"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 516
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "wifiactivescan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 524
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    iget-object v1, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/loc/aw;->a(Lorg/json/JSONObject;)V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->u:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 532
    :goto_5
    return-void

    .line 506
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 523
    :catch_0
    move-exception v0

    goto :goto_4

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    .line 531
    :catch_1
    move-exception v0

    goto :goto_5

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/loc/d;->n:Lorg/json/JSONObject;

    const-string/jumbo v1, "wait1stwifi"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 496
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->d()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/loc/d;->b()V

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->u:Z

    .line 752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->v:Z

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->x:Z

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->y:Z

    const/4 v0, 0x0

    .line 755
    iput v0, p0, Lcom/loc/d;->w:I

    .line 757
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->b()V

    .line 758
    iget-object v0, p0, Lcom/loc/d;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 760
    iget-boolean v0, p0, Lcom/loc/d;->b:Z

    if-nez v0, :cond_0

    .line 763
    :goto_0
    iget-object v0, p0, Lcom/loc/d;->d:Lcom/loc/d$b;

    if-nez v0, :cond_1

    .line 772
    :goto_1
    return-void

    .line 761
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    goto :goto_1

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/loc/d;->d:Lcom/loc/d$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/d$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic h(Lcom/loc/d;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->c()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->h()V

    return-void
.end method

.method static synthetic j(Lcom/loc/d;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/loc/d;->u:Z

    return v0
.end method

.method static synthetic k(Lcom/loc/d;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/loc/d;->g()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 559
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/d;->s:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 570
    return-void

    .line 560
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/d$c;

    invoke-direct {v0, p0}, Lcom/loc/d$c;-><init>(Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->t:Lcom/loc/d$c;

    .line 561
    iget-object v0, p0, Lcom/loc/d;->t:Lcom/loc/d$c;

    invoke-virtual {v0}, Lcom/loc/d$c;->start()V

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->s:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/loc/d;->p:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/loc/d;->r:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    .line 613
    :try_start_1
    iput-object v0, p0, Lcom/loc/d;->p:Ljava/net/ServerSocket;

    const/4 v0, 0x0

    .line 614
    iput-object v0, p0, Lcom/loc/d;->t:Lcom/loc/d$c;

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->s:Z

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/d;->q:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    .line 624
    return-void

    .line 602
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/d;->p:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    goto :goto_1

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/loc/d;->r:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 623
    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/loc/d;->d:Lcom/loc/d$b;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 239
    :try_start_0
    new-instance v0, Lcom/loc/aw;

    invoke-direct {v0}, Lcom/loc/aw;-><init>()V

    iput-object v0, p0, Lcom/loc/d;->z:Lcom/loc/aw;

    .line 240
    iget-object v0, p0, Lcom/loc/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/d;->c:Ljava/lang/String;

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/d;->h:Z

    .line 243
    new-instance v0, Lcom/loc/d$a;

    invoke-direct {v0, p0}, Lcom/loc/d$a;-><init>(Lcom/loc/d;)V

    iput-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$a;

    .line 244
    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$a;

    const-string/jumbo v1, "serviceThread"

    invoke-virtual {v0, v1}, Lcom/loc/d$a;->setName(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/loc/d;->e:Lcom/loc/d$a;

    invoke-virtual {v0}, Lcom/loc/d$a;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/loc/d;->j:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/loc/d;->h:Z

    .line 777
    iget-object v0, p0, Lcom/loc/d;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 778
    monitor-exit v1

    .line 785
    :goto_0
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 784
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    return v0
.end method
