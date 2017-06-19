.class public Lcom/loc/bj;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bj$a;
    }
.end annotation


# static fields
.field private static a:Lcom/loc/bj;


# instance fields
.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/bj$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/loc/bj;->a:Lcom/loc/bj;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/loc/bj;->c:J

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bj;->d:Z

    .line 34
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/bj$a;
    .locals 18

    .prologue
    monitor-enter p0

    .line 346
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    monitor-exit p0

    .line 347
    return-object v2

    .line 346
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    .line 352
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 353
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 354
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v10, v3

    :goto_0
    if-gez v10, :cond_4

    move-object v3, v5

    .line 520
    :cond_2
    :goto_1
    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 522
    invoke-virtual {v12}, Ljava/util/Hashtable;->clear()V

    .line 524
    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 526
    return-object v3

    :cond_3
    const/4 v2, 0x0

    monitor-exit p0

    .line 349
    return-object v2

    .line 362
    :cond_4
    :try_start_2
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loc/bj$a;

    .line 363
    invoke-virtual {v3}, Lcom/loc/bj$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    .line 368
    invoke-virtual {v3}, Lcom/loc/bj$a;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/loc/bj;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_7

    move v9, v4

    .line 382
    :goto_2
    invoke-virtual {v3}, Lcom/loc/bj$a;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 383
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 384
    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    .line 385
    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 388
    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 391
    invoke-virtual {v13}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 392
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    new-array v15, v4, [D

    .line 393
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    new-array v0, v4, [D

    move-object/from16 v16, v0

    const/4 v4, 0x0

    .line 395
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v8, v4

    .line 396
    :goto_5
    if-nez v17, :cond_a

    .line 402
    :cond_5
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/loc/bj;->a([D[D)[D

    move-result-object v4

    const/4 v6, 0x0

    .line 413
    aget-wide v6, v4, v6

    const-wide v14, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v6, v6, v14

    if-gez v6, :cond_2

    const/4 v6, 0x1

    .line 416
    aget-wide v6, v4, v6

    const-wide v14, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v6, v6, v14

    if-gez v6, :cond_2

    .line 419
    if-nez v9, :cond_d

    .line 361
    :cond_6
    add-int/lit8 v3, v10, -0x1

    move v10, v3

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x1

    .line 370
    invoke-virtual {v3}, Lcom/loc/bj$a;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/loc/bj;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_2

    move v9, v4

    goto/16 :goto_2

    .line 385
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, ""

    .line 386
    invoke-virtual {v13, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 388
    :cond_9
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, ""

    .line 389
    invoke-virtual {v13, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 396
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 397
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    :goto_6
    aput-wide v6, v15, v8

    .line 399
    invoke-virtual {v12, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-wide/16 v6, 0x0

    :goto_7
    aput-wide v6, v16, v8

    .line 400
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    .line 401
    goto :goto_5

    :cond_b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 398
    goto :goto_6

    :cond_c
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 399
    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    .line 419
    aget-wide v6, v4, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide v8, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_6

    goto/16 :goto_1
.end method

.method public static declared-synchronized a()Lcom/loc/bj;
    .locals 2

    .prologue
    const-class v1, Lcom/loc/bj;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/loc/bj;->a:Lcom/loc/bj;

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    sget-object v0, Lcom/loc/bj;->a:Lcom/loc/bj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/bj;

    invoke-direct {v0}, Lcom/loc/bj;-><init>()V

    sput-object v0, Lcom/loc/bj;->a:Lcom/loc/bj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    invoke-virtual {p2}, Ljava/util/Hashtable;->clear()V

    const-string/jumbo v1, "#"

    .line 568
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 569
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 576
    return-void

    .line 565
    :cond_0
    return-void

    .line 569
    :cond_1
    aget-object v3, v1, v0

    .line 570
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "|"

    .line 570
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    .line 573
    invoke-virtual {p2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private a([D[D)[D
    .locals 14

    .prologue
    const/4 v0, 0x3

    .line 586
    new-array v3, v0, [D

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 592
    :goto_0
    array-length v10, p1

    if-lt v0, v10, :cond_0

    const/4 v0, 0x0

    .line 603
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    aput-wide v4, v3, v0

    const/4 v0, 0x1

    .line 604
    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    const/4 v0, 0x2

    .line 605
    int-to-double v4, v1

    aput-wide v4, v3, v0

    const/4 v0, 0x0

    .line 606
    :goto_1
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 612
    return-object v3

    .line 593
    :cond_0
    aget-wide v10, p1, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 594
    aget-wide v10, p2, v0

    aget-wide v12, p2, v0

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 595
    aget-wide v10, p1, v0

    aget-wide v12, p2, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 596
    aget-wide v10, p2, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 597
    add-int/lit8 v2, v2, 0x1

    .line 598
    aget-wide v10, p1, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 599
    add-int/lit8 v1, v1, 0x1

    .line 592
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_2
    aget-wide v4, v3, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 608
    aput-wide v4, v3, v0

    .line 610
    :cond_3
    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "#.00"

    invoke-static {v1, v2}, Lcom/loc/bw;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    return v3

    .line 537
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ",access"

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 541
    :cond_2
    return v3

    :cond_3
    const-string/jumbo v0, ",access"

    .line 540
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const-string/jumbo v0, ",access"

    .line 543
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 545
    aget-object v1, v0, v3

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 548
    aget-object v0, v0, v3

    .line 550
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 553
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",access"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 546
    :cond_4
    aget-object v1, v0, v3

    aget-object v0, v0, v3

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_5
    return v3
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "gps"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/loc/bj;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "found#\u2297"

    const-string/jumbo v0, "cgiwifi"

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wifi"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "cgi"

    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    .line 271
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    :cond_1
    monitor-exit p0

    .line 278
    return-object v1

    :cond_2
    monitor-exit p0

    .line 227
    return-object v1

    .line 233
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/bj;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 234
    return-object v1

    :cond_4
    monitor-exit p0

    .line 240
    return-object v1

    .line 248
    :cond_5
    :try_start_2
    invoke-direct {p0, p2, p1}, Lcom/loc/bj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/bj$a;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    const-string/jumbo v2, "found#cgiwifi"

    goto :goto_0

    .line 253
    :cond_6
    invoke-direct {p0, p2, p1}, Lcom/loc/bj;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/bj$a;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    const-string/jumbo v2, "found#wifi"

    goto :goto_0

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    .line 264
    :goto_1
    if-eqz v0, :cond_0

    const-string/jumbo v2, "found#cgi"

    goto :goto_0

    .line 262
    :cond_8
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bj$a;

    goto :goto_1

    .line 271
    :cond_9
    invoke-virtual {v0}, Lcom/loc/bj$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/loc/bj$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    const-string/jumbo v2, "mem"

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/loc/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 276
    :goto_2
    invoke-virtual {v0}, Lcom/loc/bj$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 274
    :cond_a
    :try_start_3
    invoke-virtual {v0}, Lcom/loc/bj$a;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/loc/e;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/loc/bj;->d:Z

    if-nez v0, :cond_0

    .line 741
    invoke-static {}, Lcom/loc/bw;->b()J

    .line 743
    :try_start_0
    invoke-static {}, Lcom/loc/bk;->a()Lcom/loc/bk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bk;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bj;->d:Z

    .line 759
    return-void

    .line 736
    :cond_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/loc/bj;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 79
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/loc/bj;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 91
    :goto_0
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "offpct"

    .line 92
    invoke-static {v1, v2}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_1
    const-string/jumbo v1, "wifi"

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v0, "cgi"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 171
    :cond_0
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 179
    :cond_1
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bj;->c:J

    .line 180
    new-instance v1, Lcom/loc/bj$a;

    invoke-direct {v1, p0}, Lcom/loc/bj$a;-><init>(Lcom/loc/bj;)V

    .line 181
    invoke-virtual {v1, p3}, Lcom/loc/bj$a;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    .line 182
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/loc/bj$a;->a(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_4
    if-nez p5, :cond_14

    :goto_5
    monitor-exit p0

    .line 212
    return-void

    :cond_2
    monitor-exit p0

    .line 68
    return-void

    :cond_3
    monitor-exit p0

    .line 73
    return-void

    :cond_4
    monitor-exit p0

    .line 78
    return-void

    :cond_5
    monitor-exit p0

    .line 86
    return-void

    .line 89
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/bj;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_2
    const-string/jumbo v2, "offpct"

    .line 96
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p3, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 100
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 105
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_e

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    array-length v3, v2

    move v1, v0

    :goto_6
    if-lt v1, v3, :cond_b

    const/16 v1, 0x8

    .line 116
    if-ge v0, v1, :cond_d

    :cond_9
    const-string/jumbo v0, "cgiwifi"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cgiwifi"

    const-string/jumbo v1, "cgi"

    .line 137
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->C()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    .line 139
    invoke-static {v3}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_a
    monitor-exit p0

    .line 104
    return-void

    .line 111
    :cond_b
    :try_start_3
    aget-object v4, v2, v1

    const-string/jumbo v5, ","

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_c

    .line 111
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 113
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    monitor-exit p0

    .line 120
    return-void

    .line 122
    :cond_e
    :try_start_4
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    monitor-exit p0

    .line 129
    return-void

    :cond_f
    :try_start_5
    const-string/jumbo v0, ","

    .line 153
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 161
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 168
    return-void

    :cond_10
    monitor-exit p0

    .line 160
    return-void

    .line 173
    :cond_11
    :try_start_6
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->E()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 177
    return-void

    :cond_12
    const/4 v0, 0x0

    .line 182
    goto/16 :goto_3

    .line 184
    :cond_13
    :try_start_7
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 195
    :cond_14
    :try_start_8
    invoke-static {}, Lcom/loc/bk;->a()Lcom/loc/bk;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/loc/bk;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 200
    :catch_0
    move-exception v0

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    return v1

    .line 308
    :cond_1
    invoke-static {p2}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "#"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const-string/jumbo v2, "network"

    .line 314
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    :goto_0
    return v0

    .line 311
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public b()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bj;->c:J

    sub-long/2addr v2, v4

    .line 290
    iget-wide v4, p0, Lcom/loc/bj;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    iget-object v4, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    const/16 v5, 0x168

    if-gt v4, v5, :cond_2

    const-wide/32 v4, 0x2255100

    .line 294
    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    .line 295
    goto :goto_0

    :cond_2
    move v0, v1

    .line 293
    goto :goto_0

    :cond_3
    move v2, v0

    .line 294
    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "#"

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 635
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 636
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 641
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    .line 643
    :goto_1
    array-length v6, v5

    if-lt v0, v6, :cond_4

    .line 651
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 655
    mul-int/lit8 v2, v3, 0x2

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 637
    :cond_1
    aget-object v3, v2, v0

    const-string/jumbo v5, ",nb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    :cond_2
    aget-object v3, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_3
    aget-object v3, v2, v0

    const-string/jumbo v5, ",access"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 644
    :cond_4
    aget-object v6, v5, v0

    const-string/jumbo v7, ",nb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 645
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 646
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 643
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_6
    aget-object v6, v5, v0

    const-string/jumbo v7, ",access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 647
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 331
    iput-wide v0, p0, Lcom/loc/bj;->c:J

    .line 332
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    iput-boolean v2, p0, Lcom/loc/bj;->d:Z

    .line 336
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/loc/bj;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method
