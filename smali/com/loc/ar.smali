.class public Lcom/loc/ar;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# static fields
.field private static a:Lcom/loc/as;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljavax/net/ssl/SSLContext;

.field private f:Ljava/net/Proxy;

.field private volatile g:Z

.field private h:J

.field private i:J

.field private j:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method constructor <init>(IILjava/net/Proxy;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loc/ar;-><init>(IILjava/net/Proxy;Z)V

    .line 83
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/loc/ar;->g:Z

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/loc/ar;->h:J

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/loc/ar;->i:J

    .line 604
    new-instance v0, Lcom/loc/av;

    invoke-direct {v0, p0}, Lcom/loc/av;-><init>(Lcom/loc/ar;)V

    iput-object v0, p0, Lcom/loc/ar;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 59
    iput p1, p0, Lcom/loc/ar;->b:I

    .line 60
    iput p2, p0, Lcom/loc/ar;->c:I

    .line 61
    iput-object p3, p0, Lcom/loc/ar;->f:Ljava/net/Proxy;

    .line 62
    iput-boolean p4, p0, Lcom/loc/ar;->d:Z

    .line 63
    if-nez p4, :cond_0

    .line 79
    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "TLS"

    .line 66
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 68
    iput-object v0, p0, Lcom/loc/ar;->e:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "HttpUrlUtil"

    .line 71
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    const-string/jumbo v1, "HttpUtil"

    const-string/jumbo v2, "HttpUtil"

    .line 75
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/loc/au;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 456
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 458
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    .line 459
    if-ne v0, v1, :cond_1

    .line 465
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 466
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 467
    :try_start_2
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v0, 0x2

    invoke-direct {v1, v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v0, 0x2

    .line 469
    :try_start_3
    new-array v0, v0, [B

    .line 470
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    .line 471
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v6, 0x0

    .line 483
    aget-byte v6, v0, v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_2

    :cond_0
    move-object v2, v1

    :goto_0
    const/16 v0, 0x400

    .line 491
    :try_start_4
    new-array v0, v0, [B

    .line 492
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 495
    sget-object v0, Lcom/loc/ar;->a:Lcom/loc/as;

    if-nez v0, :cond_4

    .line 498
    :goto_2
    new-instance v0, Lcom/loc/au;

    invoke-direct {v0}, Lcom/loc/au;-><init>()V

    .line 499
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v0, Lcom/loc/au;->a:[B

    .line 500
    iput-object v5, v0, Lcom/loc/au;->b:Ljava/util/Map;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 505
    if-nez v4, :cond_5

    .line 514
    :goto_3
    if-nez v3, :cond_6

    .line 524
    :goto_4
    if-nez v1, :cond_7

    .line 534
    :goto_5
    if-nez v2, :cond_8

    .line 544
    :goto_6
    if-nez p1, :cond_9

    .line 501
    :goto_7
    return-object v0

    .line 461
    :cond_1
    :try_start_5
    new-instance v1, Lcom/loc/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 501
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 503
    :goto_8
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 552
    :goto_9
    if-nez v4, :cond_a

    .line 514
    :goto_a
    if-nez v3, :cond_b

    .line 524
    :goto_b
    if-nez v2, :cond_c

    .line 534
    :goto_c
    if-nez v1, :cond_d

    .line 544
    :goto_d
    if-nez p1, :cond_e

    .line 505
    :goto_e
    throw v0

    :cond_2
    const/4 v6, 0x1

    .line 483
    :try_start_7
    aget-byte v0, v0, v6

    const/16 v6, -0x75

    if-ne v0, v6, :cond_0

    .line 484
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v2, v0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 493
    :try_start_8
    invoke-virtual {v4, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 501
    :catch_1
    move-exception v0

    goto :goto_8

    .line 496
    :cond_4
    sget-object v0, Lcom/loc/ar;->a:Lcom/loc/as;

    invoke-interface {v0}, Lcom/loc/as;->a()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 507
    :cond_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 512
    :catch_2
    move-exception v4

    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    .line 509
    invoke-static {v4, v5, v6}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 516
    :cond_6
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 522
    :catch_3
    move-exception v3

    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    .line 518
    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 526
    :cond_7
    :try_start_b
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_5

    .line 532
    :catch_4
    move-exception v1

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    .line 528
    invoke-static {v1, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 536
    :cond_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_6

    .line 542
    :catch_5
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 538
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 546
    :cond_9
    :try_start_d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_7

    .line 552
    :catch_6
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 548
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    .line 507
    :cond_a
    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_a

    .line 512
    :catch_7
    move-exception v4

    const-string/jumbo v5, "HttpUrlUtil"

    const-string/jumbo v6, "parseResult"

    .line 509
    invoke-static {v4, v5, v6}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 516
    :cond_b
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_b

    .line 522
    :catch_8
    move-exception v3

    const-string/jumbo v4, "HttpUrlUtil"

    const-string/jumbo v5, "parseResult"

    .line 518
    invoke-static {v3, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 526
    :cond_c
    :try_start_10
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_c

    .line 532
    :catch_9
    move-exception v2

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "parseResult"

    .line 528
    invoke-static {v2, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 536
    :cond_d
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_d

    .line 542
    :catch_a
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 538
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 546
    :cond_e
    :try_start_12
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_b

    goto/16 :goto_e

    .line 552
    :catch_b
    move-exception v1

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "parseResult"

    .line 548
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    .line 503
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_9

    :catchall_4
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_9

    .line 501
    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_8

    :catch_d
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 618
    if-nez p0, :cond_0

    .line 641
    return-object v0

    .line 623
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 624
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 625
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 626
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 627
    if-eqz v0, :cond_2

    .line 630
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 633
    :goto_2
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    .line 634
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "&"

    .line 631
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    if-nez p1, :cond_1

    .line 570
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    .line 572
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "csid"

    .line 573
    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    iget v0, p0, Lcom/loc/ar;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 579
    iget v0, p0, Lcom/loc/ar;->c:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 581
    return-void

    .line 564
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "addHeaders"

    .line 576
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/au;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/loc/au;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/ar;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 371
    if-nez p3, :cond_1

    .line 377
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 378
    invoke-direct {p0, v0}, Lcom/loc/ar;->a(Ljava/net/HttpURLConnection;)Lcom/loc/au;

    move-result-object v0

    return-object v0

    .line 371
    :cond_1
    array-length v1, p3

    if-lez v1, :cond_0

    .line 372
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 374
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 375
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 381
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 384
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 387
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 390
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 393
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 396
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makePostReqeust"

    .line 399
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 407
    invoke-static {}, Lcom/loc/q;->a()V

    .line 410
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/loc/ar;->f:Ljava/net/Proxy;

    if-nez v1, :cond_1

    .line 414
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 416
    :goto_0
    iget-boolean v1, p0, Lcom/loc/ar;->d:Z

    if-nez v1, :cond_2

    .line 423
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 428
    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 431
    :cond_0
    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/loc/ar;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    .line 432
    if-nez p3, :cond_4

    const-string/jumbo v1, "GET"

    .line 439
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 443
    :goto_3
    return-object v0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/loc/ar;->f:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_2
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    .line 418
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/loc/ar;->e:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v0

    .line 420
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/loc/ar;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_1

    .line 428
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_0

    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "close"

    .line 429
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "POST"

    .line 433
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 435
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 436
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_3
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/loc/ar;->i:J

    .line 91
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/aq$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/loc/aq$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    if-eqz p4, :cond_2

    .line 105
    :try_start_0
    invoke-static {p3}, Lcom/loc/ar;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    if-nez v0, :cond_3

    .line 113
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lcom/loc/ar;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bytes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/loc/ar;->i:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "RANGE"

    .line 116
    invoke-virtual {v1, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v0, 0xc8

    .line 121
    if-ne v4, v0, :cond_4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    const/16 v0, 0xce

    if-ne v4, v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    and-int/2addr v0, v3

    if-nez v0, :cond_6

    .line 127
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x400

    .line 128
    new-array v3, v0, [B

    .line 131
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/loc/ar;->g:Z

    if-nez v0, :cond_b

    .line 145
    invoke-interface {p4}, Lcom/loc/aq$a;->c()V

    .line 163
    :goto_5
    if-nez v2, :cond_c

    .line 177
    :goto_6
    if-nez v1, :cond_d

    .line 314
    :cond_1
    :goto_7
    return-void

    .line 184
    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "?"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-nez v2, :cond_e

    .line 177
    :goto_8
    if-eqz v1, :cond_1

    .line 179
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 184
    :catch_1
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    const/4 v0, 0x1

    move v3, v0

    .line 121
    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 122
    :cond_6
    :try_start_3
    new-instance v0, Lcom/loc/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 184
    :catch_2
    move-exception v0

    .line 150
    :try_start_4
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    if-nez v2, :cond_f

    .line 177
    :goto_9
    if-eqz v1, :cond_1

    .line 179
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    .line 184
    :catch_3
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 131
    :cond_7
    :try_start_6
    iget-boolean v0, p0, Lcom/loc/ar;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    iget-wide v6, p0, Lcom/loc/ar;->h:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_8

    iget-wide v6, p0, Lcom/loc/ar;->i:J

    iget-wide v8, p0, Lcom/loc/ar;->h:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_0

    :cond_8
    const/16 v0, 0x400

    .line 132
    if-eq v4, v0, :cond_a

    .line 135
    new-array v0, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 136
    invoke-static {v3, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-wide v6, p0, Lcom/loc/ar;->i:J

    invoke-interface {p4, v0, v6, v7}, Lcom/loc/aq$a;->a([BJ)V

    .line 139
    :goto_b
    iget-wide v6, p0, Lcom/loc/ar;->i:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/loc/ar;->i:J
    :try_end_6
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 184
    :catch_4
    move-exception v0

    .line 152
    :try_start_7
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    if-nez v2, :cond_10

    .line 177
    :goto_c
    if-eqz v1, :cond_1

    .line 179
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_7

    .line 184
    :catch_5
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 131
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 133
    :cond_a
    :try_start_9
    iget-wide v6, p0, Lcom/loc/ar;->i:J

    invoke-interface {p4, v3, v6, v7}, Lcom/loc/aq$a;->a([BJ)V
    :try_end_9
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_b

    .line 184
    :catch_6
    move-exception v0

    .line 154
    :try_start_a
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 163
    if-nez v2, :cond_11

    .line 177
    :goto_d
    if-eqz v1, :cond_1

    .line 179
    :try_start_b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_7

    .line 184
    :catch_7
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 143
    :cond_b
    :try_start_c
    invoke-interface {p4}, Lcom/loc/aq$a;->b()V
    :try_end_c
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    .line 184
    :catch_8
    move-exception v0

    .line 156
    :try_start_d
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 163
    if-nez v2, :cond_12

    .line 177
    :goto_e
    if-eqz v1, :cond_1

    .line 179
    :try_start_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_7

    .line 184
    :catch_9
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 165
    :cond_c
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_6

    .line 174
    :catch_a
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 174
    :catch_b
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 179
    :cond_d
    :try_start_10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_c

    goto/16 :goto_7

    .line 184
    :catch_c
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 165
    :cond_e
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_e

    goto/16 :goto_8

    .line 174
    :catch_d
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 174
    :catch_e
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 165
    :cond_f
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_10

    goto/16 :goto_9

    .line 174
    :catch_f
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 174
    :catch_10
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 165
    :cond_10
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_12

    goto/16 :goto_c

    .line 174
    :catch_11
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 174
    :catch_12
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 165
    :cond_11
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_d

    .line 174
    :catch_13
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 174
    :catch_14
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 165
    :cond_12
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_16

    goto/16 :goto_e

    .line 174
    :catch_15
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 174
    :catch_16
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 184
    :catch_17
    move-exception v0

    .line 159
    :try_start_16
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 163
    if-nez v2, :cond_13

    .line 177
    :goto_f
    if-eqz v1, :cond_1

    .line 179
    :try_start_17
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_18

    goto/16 :goto_7

    .line 184
    :catch_18
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 165
    :cond_13
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1a

    goto :goto_f

    .line 174
    :catch_19
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 174
    :catch_1a
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 184
    :catch_1b
    move-exception v0

    .line 161
    :try_start_19
    invoke-interface {p4, v0}, Lcom/loc/aq$a;->a(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 163
    if-nez v2, :cond_14

    .line 177
    :goto_10
    if-eqz v1, :cond_1

    .line 179
    :try_start_1a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1c

    goto/16 :goto_7

    .line 184
    :catch_1c
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v1, "HttpUrlUtil"

    const-string/jumbo v2, "makeDownloadGetRequest"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 165
    :cond_14
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1d
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1e

    goto :goto_10

    .line 174
    :catch_1d
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 168
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 174
    :catch_1e
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 172
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 184
    :catchall_0
    move-exception v0

    .line 163
    if-nez v2, :cond_15

    .line 177
    :goto_11
    if-nez v1, :cond_16

    .line 184
    :goto_12
    throw v0

    .line 165
    :cond_15
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_20

    goto :goto_11

    .line 174
    :catch_1f
    move-exception v2

    .line 167
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    .line 168
    invoke-static {v2, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 174
    :catch_20
    move-exception v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v3, "HttpUrlUtil"

    const-string/jumbo v4, "makeDownloadGetRequest"

    .line 172
    invoke-static {v2, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 179
    :cond_16
    :try_start_1d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_21

    goto :goto_12

    .line 184
    :catch_21
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "HttpUrlUtil"

    const-string/jumbo v3, "makeDownloadGetRequest"

    .line 182
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/loc/ar;->h:J

    .line 95
    return-void
.end method
