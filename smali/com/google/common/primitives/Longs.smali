.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;
    }
.end annotation


# direct methods
.method static synthetic -wrap0([JJII)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([JJII)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 78
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 131
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 132
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 133
    return v0

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static lastIndexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 185
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 186
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 187
    return v0

    .line 185
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v4, :cond_0

    .line 515
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v4

    return-object v4

    .line 518
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 519
    .local v1, "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 520
    .local v3, "len":I
    new-array v0, v3, [J

    .line 521
    .local v0, "array":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 523
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_1
    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const-wide/high16 v10, -0x8000000000000000L

    const/16 v9, 0x9

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 337
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 338
    return-object v8

    .line 340
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    const/4 v5, 0x1

    .line 341
    .local v5, "negative":Z
    :cond_1
    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 342
    .local v3, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 343
    return-object v8

    .line 341
    .end local v3    # "index":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "index":I
    goto :goto_0

    .line 345
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 346
    .local v2, "digit":I
    if-ltz v2, :cond_4

    if-le v2, v9, :cond_5

    .line 347
    :cond_4
    return-object v8

    .line 349
    :cond_5
    neg-int v6, v2

    int-to-long v0, v6

    .local v0, "accum":J
    move v3, v4

    .line 350
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 351
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v2, v6, -0x30

    .line 352
    if-ltz v2, :cond_6

    if-le v2, v9, :cond_7

    .line 353
    :cond_6
    return-object v8

    .line 352
    :cond_7
    const-wide v6, -0xcccccccccccccccL

    cmp-long v6, v0, v6

    if-ltz v6, :cond_6

    .line 355
    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    .line 356
    int-to-long v6, v2

    add-long/2addr v6, v10

    cmp-long v6, v0, v6

    if-gez v6, :cond_8

    .line 357
    return-object v8

    .line 359
    :cond_8
    int-to-long v6, v2

    sub-long/2addr v0, v6

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 362
    :cond_9
    if-eqz v5, :cond_a

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6

    .line 364
    :cond_a
    cmp-long v6, v0, v10

    if-nez v6, :cond_b

    .line 365
    return-object v8

    .line 367
    :cond_b
    neg-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    return-object v6
.end method
