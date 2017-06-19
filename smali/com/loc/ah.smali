.class Lcom/loc/ah;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ah$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "copy"

    invoke-static {v1, v2}, Lcom/loc/al;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loc/al;

    invoke-direct {v2}, Lcom/loc/al;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v9

    .line 446
    if-nez v9, :cond_1

    .line 447
    :cond_0
    return-object v8

    .line 446
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-static {v9}, Lcom/loc/ah;->a(Ljava/util/List;)V

    move v7, v0

    .line 450
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    move-object v0, v8

    .line 491
    :goto_1
    return-object v0

    .line 451
    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/am;

    .line 453
    invoke-virtual {v6}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;Lcom/loc/v;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 486
    invoke-virtual {v6}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 450
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 457
    :cond_3
    :try_start_0
    new-instance v0, Lcom/loc/am$a;

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/loc/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/loc/am;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/loc/am$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/am$a;->a(Ljava/lang/String;)Lcom/loc/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/am$a;->a()Lcom/loc/am;

    move-result-object v0

    .line 465
    invoke-virtual {v6}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;Lcom/loc/am;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v6}, Lcom/loc/am;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 473
    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;Lcom/loc/am;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 326
    :try_start_0
    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p3}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/loc/ah;->b(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 333
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    .line 336
    :try_start_2
    new-array v0, v0, [B

    .line 338
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 341
    invoke-virtual {p3}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;)V

    .line 366
    if-nez v3, :cond_1

    .line 378
    :goto_1
    if-nez v1, :cond_2

    .line 392
    :goto_2
    return-void

    :cond_0
    const/4 v4, 0x0

    .line 339
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 350
    :goto_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 366
    :goto_4
    if-nez v3, :cond_3

    .line 378
    :goto_5
    if-nez v2, :cond_4

    .line 387
    :goto_6
    throw v0

    .line 368
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 376
    :catch_1
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 380
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 387
    :catch_2
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 350
    :catch_3
    move-exception v0

    move-object v3, v2

    .line 357
    :goto_7
    :try_start_6
    throw v0

    .line 364
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 357
    :catch_4
    move-exception v0

    move-object v3, v2

    .line 364
    :goto_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 368
    :cond_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 376
    :catch_5
    move-exception v1

    .line 375
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 380
    :cond_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_6

    .line 387
    :catch_6
    move-exception v1

    .line 385
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 364
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 357
    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_8

    .line 350
    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_7

    .line 387
    :catch_b
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method static a(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-static {p0, p1, p2}, Lcom/loc/ah;->c(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method static a(Lcom/loc/aa;Landroid/content/Context;Lcom/loc/v;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    new-instance v0, Lcom/loc/al;

    invoke-direct {v0}, Lcom/loc/al;-><init>()V

    .line 274
    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {p0, v2}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Ljava/lang/String;)Lcom/loc/am;

    move-result-object v3

    .line 278
    if-nez v3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-static {p1, p0, v2}, Lcom/loc/ah;->b(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3}, Lcom/loc/am;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 288
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    const-string/jumbo v1, "errorstatus"

    .line 289
    invoke-virtual {v0, v1}, Lcom/loc/am;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method static a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/ao;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dynamiclog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/loc/ao;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 528
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    move v2, v0

    .line 501
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_0

    .line 521
    return-void

    .line 502
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    .line 501
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 503
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    .line 504
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/am;

    .line 506
    invoke-virtual {v0}, Lcom/loc/am;->e()Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {v1}, Lcom/loc/am;->e()Ljava/lang/String;

    move-result-object v5

    .line 512
    invoke-static {v5, v4}, Lcom/loc/an;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 502
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 514
    :cond_2
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;Lcom/loc/v;)Z
    .locals 1

    .prologue
    .line 396
    invoke-static {p0, p2}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/loc/ah;->a(Lcom/loc/aa;Ljava/lang/String;Ljava/lang/String;Lcom/loc/v;)Z

    move-result v0

    return v0
.end method

.method static a(Lcom/loc/aa;Ljava/lang/String;Ljava/lang/String;Lcom/loc/v;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    invoke-static {p0, p1}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Ljava/lang/String;)Lcom/loc/am;

    move-result-object v0

    .line 411
    if-nez v0, :cond_1

    .line 430
    :cond_0
    return v3

    .line 413
    :cond_1
    invoke-virtual {p3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/loc/am;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    invoke-virtual {v0}, Lcom/loc/am;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/loc/ah;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x1

    return v0

    .line 414
    :cond_2
    return v3
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p0}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    :cond_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    invoke-static {p0, p1, p2}, Lcom/loc/ah;->c(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 261
    invoke-static {p2}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/ah;->c(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/loc/ah$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/ah$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/ah$1;->start()V

    .line 247
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    invoke-static {p0, p2}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    invoke-static {p2}, Lcom/loc/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/al;

    invoke-direct {v1}, Lcom/loc/al;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/aa;->a(Ljava/lang/String;Lcom/loc/ab;)V

    .line 181
    return-void

    .line 177
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
