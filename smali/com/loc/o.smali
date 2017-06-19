.class public Lcom/loc/o;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 690
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "1"

    .line 692
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 699
    :goto_0
    return-object v1

    .line 698
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "getTS"

    .line 697
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/v;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x75

    .line 240
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    invoke-static {p0}, Lcom/loc/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/loc/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 253
    invoke-static {p0}, Lcom/loc/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 260
    :goto_0
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 264
    invoke-static {p0}, Lcom/loc/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 272
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 274
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 278
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 280
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 284
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 286
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 291
    invoke-static {p0}, Lcom/loc/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Lcom/loc/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lcom/loc/q;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 317
    invoke-static {p0}, Lcom/loc/q;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/q;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/q;->g(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 335
    invoke-static {p0}, Lcom/loc/q;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-static {p0}, Lcom/loc/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 347
    if-nez p3, :cond_1

    .line 351
    invoke-static {p0}, Lcom/loc/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 355
    :goto_1
    if-nez p3, :cond_2

    .line 359
    invoke-static {p0}, Lcom/loc/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 366
    :goto_2
    if-nez p3, :cond_3

    .line 374
    invoke-static {p0}, Lcom/loc/q;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 376
    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 378
    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 380
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/loc/w;->a([B)[B

    move-result-object v1

    .line 385
    invoke-static {p0}, Lcom/loc/w;->a(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    .line 387
    array-length v2, v1

    if-gt v2, v3, :cond_4

    .line 404
    invoke-static {v1, v0}, Lcom/loc/r;->a([BLjava/security/Key;)[B

    move-result-object v0

    .line 406
    :goto_4
    invoke-static {v0}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 410
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, ""

    .line 348
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 410
    :catch_0
    move-exception v0

    const-string/jumbo v1, "CInfo"

    const-string/jumbo v2, "InitXInfo"

    .line 413
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-object v6

    :cond_2
    :try_start_1
    const-string/jumbo v0, ""

    .line 356
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    .line 368
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    .line 370
    invoke-static {v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 v2, 0x75

    .line 388
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x75

    .line 390
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    invoke-static {v2, v0}, Lcom/loc/r;->a([BLjava/security/Key;)[B

    move-result-object v2

    .line 395
    array-length v0, v1

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x80

    .line 397
    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x75

    const/16 v3, 0x80

    .line 399
    array-length v4, v1

    add-int/lit8 v4, v4, -0x75

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 705
    :try_start_0
    invoke-static {p0}, Lcom/loc/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    .line 714
    :catch_0
    move-exception v0

    const-string/jumbo v2, "CInfo"

    const-string/jumbo v3, "Scode"

    .line 713
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 673
    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 674
    if-gtz p1, :cond_0

    move v2, v0

    :goto_0
    and-int/lit16 v3, p1, 0xff

    if-lt v3, v5, :cond_1

    :goto_1
    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 676
    and-int/lit16 v0, p1, 0xff

    if-eq v0, v5, :cond_3

    .line 684
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 674
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 682
    :catch_0
    move-exception v0

    const-string/jumbo v1, "CInfo"

    const-string/jumbo v2, "writeField"

    .line 680
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 677
    :try_start_1
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    .line 667
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    .line 652
    if-gt v0, v1, :cond_1

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    :goto_1
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    .line 659
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v1

    .line 661
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/o;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 653
    goto :goto_1
.end method
