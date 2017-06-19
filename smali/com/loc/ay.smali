.class public Lcom/loc/ay;
.super Ljava/lang/Object;
.source "MPos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ay$a;,
        Lcom/loc/ay$b;,
        Lcom/loc/ay$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ay$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ay$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:[[S

.field private d:Lcom/loc/ay$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    .line 20
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/loc/ay;->c:[[S

    .line 21
    new-instance v0, Lcom/loc/ay$b;

    invoke-direct {v0, p0}, Lcom/loc/ay$b;-><init>(Lcom/loc/ay;)V

    iput-object v0, p0, Lcom/loc/ay;->d:Lcom/loc/ay$b;

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/loc/ay;)[[S
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/loc/ay;->c:[[S

    return-object v0
.end method

.method static synthetic b(Lcom/loc/ay;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(DD)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ay$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/loc/ay;->d:Lcom/loc/ay$b;

    invoke-virtual {v0}, Lcom/loc/ay$b;->a()V

    .line 317
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v0, p0, Lcom/loc/ay;->d:Lcom/loc/ay$b;

    invoke-static {v0}, Lcom/loc/ay$b;->a(Lcom/loc/ay$b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/16 v0, 0x0

    .line 331
    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/loc/ay$c;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/ay$c;-><init>(Lcom/loc/ay;DD)V

    const/4 v1, 0x0

    move v3, v1

    .line 333
    :goto_1
    iget-object v1, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_4

    .line 349
    iget-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 354
    :goto_2
    iget-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    .line 363
    return-object v6

    .line 318
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 319
    new-instance v2, Lcom/loc/ay$a;

    invoke-direct {v2, p0}, Lcom/loc/ay$a;-><init>(Lcom/loc/ay;)V

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {v2}, Lcom/loc/ay$a;->a()V

    .line 324
    iget-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 321
    iget-object v4, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ay$c;

    invoke-virtual {v2, v0}, Lcom/loc/ay$a;->a(Lcom/loc/ay$c;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 327
    return-object v0

    .line 334
    :cond_4
    iget-object v1, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ay$a;

    invoke-virtual {v1}, Lcom/loc/ay$a;->b()Lcom/loc/ay$c;

    move-result-object v1

    .line 335
    invoke-static {v0, v1}, Lcom/loc/ay$c;->b(Lcom/loc/ay$c;Lcom/loc/ay$c;)D

    move-result-wide v4

    .line 336
    iget v1, v1, Lcom/loc/ay$c;->e:I

    if-gtz v1, :cond_6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    .line 344
    cmpg-double v1, v4, v8

    if-gez v1, :cond_5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v8

    if-lez v1, :cond_5

    .line 345
    iget-object v1, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ay$a;

    iget-object v2, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/ay$a;

    invoke-static {v2}, Lcom/loc/ay$a;->b(Lcom/loc/ay$a;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lcom/loc/ay$a;->a(Lcom/loc/ay$a;D)D

    .line 333
    :cond_5
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_6
    const-wide v8, 0x40bb580000000000L    # 7000.0

    .line 340
    cmpg-double v1, v4, v8

    if-gez v1, :cond_5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v8

    if-lez v1, :cond_5

    .line 341
    iget-object v1, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ay$a;

    iget-object v2, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/ay$a;

    invoke-static {v2}, Lcom/loc/ay$a;->b(Lcom/loc/ay$a;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v8

    invoke-static {v1, v4, v5}, Lcom/loc/ay$a;->a(Lcom/loc/ay$a;D)D

    goto :goto_4

    .line 355
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_8

    .line 361
    iget-object v0, p0, Lcom/loc/ay;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ay$a;

    invoke-virtual {v0}, Lcom/loc/ay$a;->b()Lcom/loc/ay$c;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 356
    :cond_8
    return-object v6
.end method

.method public a(ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 285
    iget-object v0, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 286
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "\\|"

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 290
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 291
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 295
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v0, 0x2

    .line 296
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v6

    .line 297
    new-instance v0, Lcom/loc/ay$c;

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/loc/ay$c;-><init>(Lcom/loc/ay;DDII)V

    .line 298
    iget-object v1, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_2

    move v3, v9

    .line 302
    :goto_1
    if-lt v3, v8, :cond_3

    .line 310
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 312
    return-void

    .line 288
    :cond_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Atomic Pos Larger Than MAXN 512!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v8

    .line 303
    :goto_2
    iget-object v0, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    .line 302
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ay$c;

    iget-object v1, p0, Lcom/loc/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ay$c;

    invoke-static {v0, v1}, Lcom/loc/ay$c;->a(Lcom/loc/ay$c;Lcom/loc/ay$c;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/loc/ay;->c:[[S

    aget-object v0, v0, v3

    aput-short v11, v0, v2

    .line 306
    iget-object v0, p0, Lcom/loc/ay;->c:[[S

    aget-object v0, v0, v2

    aput-short v11, v0, v3

    goto :goto_3
.end method
