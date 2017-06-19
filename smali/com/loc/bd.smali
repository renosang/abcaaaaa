.class public Lcom/loc/bd;
.super Ljava/lang/Object;
.source "Off.java"


# static fields
.field public static final a:[I

.field static b:I

.field private static volatile c:Ljava/lang/String;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/loc/bn;

.field private static f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    sput-object v1, Lcom/loc/bd;->c:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    .line 69
    new-instance v0, Lcom/loc/bn;

    invoke-direct {v0}, Lcom/loc/bn;-><init>()V

    sput-object v0, Lcom/loc/bd;->e:Lcom/loc/bn;

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    .line 72
    sput-object v1, Lcom/loc/bd;->g:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/loc/bd;->a:[I

    const v0, 0x34383

    .line 2309
    sput v0, Lcom/loc/bd;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static a(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 2311
    new-array v2, v1, [I

    move v1, v0

    :goto_0
    const/4 v3, 0x4

    .line 2314
    if-lt v0, v3, :cond_0

    .line 2322
    sget v0, Lcom/loc/bd;->b:I

    add-int/2addr v0, v1

    .line 2323
    return v0

    .line 2316
    :cond_0
    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 2317
    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    .line 2318
    aget v4, v2, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 2319
    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 2320
    aget v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    rsub-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 2314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(ILcom/loc/bi;Ljava/lang/String;[IIILjava/lang/String;I)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 1782
    add-int/lit8 v7, p7, 0x1

    const/16 v1, 0x19

    .line 1783
    if-gt v7, v1, :cond_1

    .line 1789
    add-int v1, p4, p5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    add-int v5, v1, p0

    .line 1790
    invoke-static {p1, p2, p3, v5, p6}, Lcom/loc/bd;->a(Lcom/loc/bi;Ljava/lang/String;[IILjava/lang/String;)I

    move-result v1

    .line 1791
    if-eq p4, v5, :cond_2

    :cond_0
    const v2, 0x7fffffff

    .line 1794
    if-eq v1, v2, :cond_4

    .line 1796
    if-eqz v1, :cond_5

    .line 1798
    if-ltz v1, :cond_6

    .line 1801
    add-int/lit8 v4, v5, 0x10

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/bd;->a(ILcom/loc/bi;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    return v0

    .line 1787
    :cond_1
    return v0

    .line 1791
    :cond_2
    if-ne v5, p5, :cond_0

    .line 1792
    if-eqz v1, :cond_3

    move p4, v0

    :cond_3
    return p4

    .line 1795
    :cond_4
    return v0

    .line 1797
    :cond_5
    return v5

    :cond_6
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    .line 1799
    invoke-static/range {v0 .. v7}, Lcom/loc/bd;->a(ILcom/loc/bi;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/loc/bi;Ljava/lang/String;[IILjava/lang/String;)I
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1823
    int-to-long v2, p3

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/loc/bi;->a(J)V

    const-string/jumbo v0, "gsm"

    .line 1824
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cdma"

    .line 1840
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "wifi"

    .line 1857
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    const v0, 0x7fffffff

    .line 1879
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1825
    aget v0, p2, v0

    const/4 v2, 0x1

    .line 1826
    aget v2, p2, v2

    .line 1827
    invoke-virtual {p0}, Lcom/loc/bi;->d()I

    move-result v3

    .line 1828
    invoke-virtual {p0}, Lcom/loc/bi;->e()I

    move-result v4

    .line 1829
    if-lt v0, v3, :cond_1

    .line 1831
    if-gt v0, v3, :cond_2

    .line 1833
    if-lt v2, v4, :cond_3

    .line 1835
    if-gt v2, v4, :cond_4

    .line 1838
    return v1

    .line 1830
    :cond_1
    return v7

    .line 1832
    :cond_2
    return v6

    .line 1834
    :cond_3
    return v7

    .line 1836
    :cond_4
    return v6

    :cond_5
    const/4 v0, 0x3

    .line 1841
    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1842
    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x1

    .line 1843
    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const/4 v3, 0x2

    .line 1844
    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x3

    .line 1845
    new-array v3, v0, [I

    move v0, v1

    .line 1846
    :goto_1
    if-lt v0, v9, :cond_6

    .line 1856
    return v1

    .line 1847
    :cond_6
    invoke-virtual {p0}, Lcom/loc/bi;->d()I

    move-result v4

    aput v4, v3, v0

    .line 1848
    aget v4, v2, v0

    aget v5, v3, v0

    if-lt v4, v5, :cond_7

    .line 1851
    aget v4, v2, v0

    aget v5, v3, v0

    if-gt v4, v5, :cond_8

    .line 1846
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1850
    :cond_7
    return v7

    .line 1853
    :cond_8
    return v6

    .line 1858
    :cond_9
    invoke-static {p1}, Lcom/loc/bw;->b(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v0, 0x6

    .line 1859
    new-array v4, v0, [I

    move v2, v1

    .line 1860
    :goto_2
    if-lt v2, v8, :cond_a

    const/4 v0, 0x6

    .line 1863
    new-array v2, v0, [I

    move v0, v1

    .line 1864
    :goto_3
    if-lt v0, v8, :cond_c

    .line 1872
    return v1

    .line 1861
    :cond_a
    aget-byte v0, v3, v2

    if-ltz v0, :cond_b

    aget-byte v0, v3, v2

    :goto_4
    aput v0, v4, v2

    .line 1860
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1861
    :cond_b
    aget-byte v0, v3, v2

    add-int/lit16 v0, v0, 0x100

    goto :goto_4

    .line 1865
    :cond_c
    invoke-virtual {p0}, Lcom/loc/bi;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1866
    aget v3, v4, v0

    aget v5, v2, v0

    if-lt v3, v5, :cond_d

    .line 1868
    aget v3, v4, v0

    aget v5, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v3, v5, :cond_e

    .line 1864
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1867
    :cond_d
    return v7

    .line 1869
    :cond_e
    return v6

    .line 1878
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/16 v0, 0x9

    .line 616
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "cgi"

    .line 616
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "#"

    .line 617
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 618
    array-length v2, v1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 623
    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    .line 627
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 622
    goto :goto_0
.end method

.method private static a(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/autonavi/aps/amapapi/model/AmapLoc;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 753
    new-instance v5, Lcom/loc/ay;

    invoke-direct {v5}, Lcom/loc/ay;-><init>()V

    .line 755
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 784
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    :cond_1
    :goto_0
    int-to-double v0, p3

    int-to-double v6, p2

    :try_start_1
    invoke-virtual {v5, v0, v1, v6, v7}, Lcom/loc/ay;->a(DD)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v1, v0

    .line 819
    :goto_1
    if-nez v1, :cond_9

    :cond_2
    move-object v0, v2

    .line 836
    :goto_2
    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 844
    :goto_3
    return-object v2

    .line 757
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 758
    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "access"

    .line 761
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    :goto_5
    const-string/jumbo v7, "|"

    .line 767
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    const-string/jumbo v8, "|"

    .line 768
    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    .line 775
    if-nez v3, :cond_6

    const/4 v0, 0x2

    :goto_6
    :try_start_3
    invoke-virtual {v5, v0, v7}, Lcom/loc/ay;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 780
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    move v3, v1

    .line 765
    goto :goto_5

    :cond_6
    move v0, v1

    .line 775
    goto :goto_6

    .line 786
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 787
    :cond_8
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "|"

    .line 789
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    const-string/jumbo v6, "|"

    .line 790
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    const/4 v3, 0x0

    .line 795
    :try_start_5
    invoke-virtual {v5, v3, v0}, Lcom/loc/ay;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    .line 800
    :catch_1
    move-exception v0

    goto :goto_7

    .line 816
    :catch_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    .line 819
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 820
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ay$c;

    .line 822
    new-instance v3, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const-string/jumbo v4, "network"

    .line 824
    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    .line 825
    iget-wide v4, v0, Lcom/loc/ay$c;->a:D

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    .line 826
    iget-wide v4, v0, Lcom/loc/ay$c;->b:D

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V

    .line 827
    iget v4, v0, Lcom/loc/ay$c;->c:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(F)V

    .line 828
    iget-object v0, v0, Lcom/loc/ay$c;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k(Ljava/lang/String;)V

    const-string/jumbo v0, "0"

    .line 830
    invoke-virtual {v3, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->w(Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(J)V

    .line 833
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v0, v3

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v1, "file"

    .line 837
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_3

    .line 808
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 29

    .prologue
    .line 145
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "gps"

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 162
    invoke-static/range {p2 .. p2}, Lcom/loc/bd;->a(Ljava/lang/String;)I

    move-result v14

    .line 163
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/loc/bd;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 164
    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    .line 168
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-static {v14, v0, v1, v2}, Lcom/loc/bd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 172
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 176
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 184
    invoke-static {}, Lcom/loc/bd;->c()Ljava/lang/StringBuilder;

    move-result-object v18

    .line 189
    if-eqz p0, :cond_4

    const/4 v4, 0x0

    .line 193
    aget-wide v4, p0, v4

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/bd;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_0
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 214
    array-length v4, v6

    div-int/lit8 v19, v4, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x1

    .line 217
    move/from16 v0, p4

    if-le v8, v0, :cond_5

    :goto_1
    move/from16 p4, v4

    .line 221
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->size()I

    move-result v4

    sput v4, Lcom/loc/e;->o:I

    const/4 v4, 0x0

    move v8, v5

    move v5, v7

    move v7, v4

    .line 222
    :goto_2
    array-length v4, v6

    if-lt v7, v4, :cond_6

    :cond_1
    const/4 v4, 0x0

    .line 593
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 598
    aget v4, p6, v4

    const/4 v5, 0x1

    aget v5, p6, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4, v5}, Lcom/loc/bd;->a(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    .line 599
    invoke-static {v4}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v5

    if-nez v5, :cond_31

    const/4 v4, 0x0

    .line 605
    return-object v4

    :cond_2
    const/4 v4, 0x0

    .line 146
    return-object v4

    :cond_3
    const/4 v4, 0x0

    .line 148
    return-object v4

    :cond_4
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    .line 190
    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/bd;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_0

    :cond_5
    const/4 v8, 0x3

    .line 217
    move/from16 v0, p4

    if-le v0, v8, :cond_0

    goto :goto_1

    .line 223
    :cond_6
    sget-boolean v4, Lcom/loc/e;->n:Z

    if-eqz v4, :cond_1

    .line 231
    move/from16 v0, v19

    if-lt v7, v0, :cond_8

    .line 235
    :goto_3
    move/from16 v0, v19

    if-ge v7, v0, :cond_9

    .line 239
    :goto_4
    move/from16 v0, v19

    if-ge v7, v0, :cond_a

    :cond_7
    :goto_5
    const/4 v4, 0x1

    .line 245
    move/from16 v0, p4

    if-eq v0, v4, :cond_b

    const/4 v4, 0x2

    .line 256
    move/from16 v0, p4

    if-eq v0, v4, :cond_c

    .line 294
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    move/from16 v0, v19

    if-lt v7, v0, :cond_f

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 222
    :goto_7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move/from16 v28, v5

    move v5, v8

    move/from16 v8, v28

    goto :goto_2

    .line 231
    :cond_8
    if-gtz v5, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 235
    :cond_9
    if-gtz v8, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    .line 239
    :cond_a
    if-gtz v5, :cond_7

    goto :goto_5

    .line 246
    :cond_b
    if-nez v7, :cond_1

    goto :goto_6

    :cond_c
    const/16 v4, 0x8

    .line 257
    if-gt v7, v4, :cond_e

    :cond_d
    const/16 v4, 0x21

    .line 259
    if-gt v7, v4, :cond_1

    goto :goto_6

    :cond_e
    const/16 v4, 0x19

    .line 257
    if-ge v7, v4, :cond_d

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 258
    goto :goto_7

    .line 299
    :cond_f
    packed-switch v14, :pswitch_data_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 318
    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 319
    aput v10, p6, v9

    .line 342
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 345
    sget-object v4, Lcom/loc/bd;->c:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 356
    sget-object v21, Lcom/loc/bd;->e:Lcom/loc/bn;

    .line 357
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/bn;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loc/bi;

    const/4 v9, 0x0

    .line 359
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    if-eqz v4, :cond_13

    const/4 v9, 0x1

    move-object v10, v4

    :goto_9
    const/4 v4, 0x0

    .line 422
    if-eqz v10, :cond_17

    const-wide/16 v22, 0x0

    .line 425
    :try_start_0
    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lcom/loc/bi;->a(J)V

    .line 429
    invoke-virtual {v10}, Lcom/loc/bi;->c()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v22

    .line 436
    move/from16 v0, v19

    if-lt v7, v0, :cond_18

    .line 457
    :goto_a
    :try_start_1
    invoke-virtual {v10}, Lcom/loc/bi;->g()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v24

    const/16 v11, 0x8

    .line 474
    move/from16 v0, v19

    if-lt v7, v0, :cond_1b

    :goto_b
    const-wide v26, 0x1cf7c5800L

    .line 477
    add-long v22, v22, v26

    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v26

    cmp-long v4, v22, v26

    if-ltz v4, :cond_1c

    const/4 v4, 0x1

    :goto_c
    if-nez v4, :cond_1f

    .line 487
    if-nez v10, :cond_1d

    .line 498
    :goto_d
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 499
    sget-object v4, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 500
    goto/16 :goto_7

    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 301
    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 302
    aput v10, p6, v9

    .line 304
    :pswitch_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    aget-object v9, v6, v7

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    :goto_e
    aget-object v9, v6, v7

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    .line 311
    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x3

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 306
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 312
    :cond_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x4

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_12
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 352
    goto/16 :goto_7

    .line 367
    :cond_13
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 368
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 375
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_15

    .line 382
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 394
    new-instance v10, Lcom/loc/bi$a;

    invoke-direct {v10}, Lcom/loc/bi$a;-><init>()V

    .line 397
    :try_start_2
    new-instance v4, Lcom/loc/bi;

    invoke-direct {v4, v12, v10}, Lcom/loc/bi;-><init>(Ljava/io/File;Lcom/loc/bi$a;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_f
    move-object v10, v4

    .line 412
    goto/16 :goto_9

    :cond_14
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 374
    goto/16 :goto_7

    :cond_15
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 381
    goto/16 :goto_7

    :cond_16
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 388
    goto/16 :goto_7

    .line 411
    :catch_0
    move-exception v4

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 402
    goto/16 :goto_7

    :catch_1
    move-exception v4

    .line 404
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/loc/bi$a;->a:Z

    .line 406
    :try_start_3
    new-instance v4, Lcom/loc/bi;

    invoke-direct {v4, v12, v10}, Lcom/loc/bi;-><init>(Ljava/io/File;Lcom/loc/bi$a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_f

    .line 410
    :catch_2
    move-exception v4

    const/4 v4, 0x0

    .line 409
    goto :goto_f

    :cond_17
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 423
    goto/16 :goto_7

    .line 440
    :cond_18
    :try_start_4
    invoke-virtual {v10}, Lcom/loc/bi;->d()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    goto/16 :goto_a

    .line 451
    :catch_3
    move-exception v4

    .line 447
    if-nez v9, :cond_19

    :goto_10
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 450
    goto/16 :goto_7

    .line 448
    :cond_19
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/bn;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 472
    :catch_4
    move-exception v4

    .line 468
    if-nez v9, :cond_1a

    :goto_11
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 471
    goto/16 :goto_7

    .line 469
    :cond_1a
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/bn;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 475
    :cond_1b
    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    move v11, v4

    goto/16 :goto_b

    .line 477
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 489
    :cond_1d
    if-nez v9, :cond_1e

    .line 493
    :try_start_5
    invoke-virtual {v10}, Lcom/loc/bi;->b()V

    goto/16 :goto_d

    .line 496
    :catch_5
    move-exception v4

    goto/16 :goto_d

    .line 490
    :cond_1e
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/bn;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_d

    :cond_1f
    const-wide/16 v22, 0x8

    .line 501
    cmp-long v4, v24, v22

    if-gtz v4, :cond_21

    const/4 v4, 0x1

    :goto_12
    if-nez v4, :cond_20

    int-to-long v0, v11

    move-wide/from16 v22, v0

    sub-long v22, v24, v22

    const-wide/16 v24, 0x10

    rem-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v4, v22, v24

    if-eqz v4, :cond_23

    .line 510
    :cond_20
    if-nez v10, :cond_22

    .line 517
    :goto_13
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 518
    sget-object v4, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 519
    goto/16 :goto_7

    .line 501
    :cond_21
    const/4 v4, 0x0

    goto :goto_12

    .line 512
    :cond_22
    :try_start_6
    invoke-virtual {v10}, Lcom/loc/bi;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_13

    .line 515
    :catch_6
    move-exception v4

    goto :goto_13

    .line 522
    :cond_23
    move/from16 v0, v19

    if-lt v7, v0, :cond_28

    :cond_24
    const/4 v4, 0x0

    .line 524
    :goto_14
    move/from16 v0, v19

    if-ge v7, v0, :cond_29

    :cond_25
    const/4 v12, 0x0

    .line 526
    :goto_15
    if-nez v4, :cond_2a

    move v13, v5

    .line 549
    :cond_26
    if-nez v12, :cond_2c

    :cond_27
    :goto_16
    move v5, v13

    .line 575
    if-nez v10, :cond_2e

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    .line 522
    :cond_28
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    sget v4, Lcom/loc/e;->o:I

    if-ge v5, v4, :cond_24

    const/4 v4, 0x1

    goto :goto_14

    .line 524
    :cond_29
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_25

    const/16 v12, 0xf

    if-ge v8, v12, :cond_25

    const/4 v12, 0x1

    goto :goto_15

    .line 528
    :cond_2a
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v22

    move v13, v5

    .line 529
    :goto_17
    :try_start_8
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 530
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 532
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v11, v10, v5, v0}, Lcom/loc/bd;->a(ILcom/loc/bi;Ljava/lang/String;I)[D

    move-result-object v5

    .line 534
    if-nez v5, :cond_2b

    move v4, v13

    :goto_18
    move v13, v4

    .line 544
    goto :goto_17

    .line 535
    :cond_2b
    add-int/lit8 v13, v13, 0x1

    .line 536
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 537
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v23, "|"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget v4, Lcom/loc/e;->o:I

    if-ge v13, v4, :cond_26

    move v4, v13

    goto/16 :goto_18

    .line 551
    :cond_2c
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 552
    :goto_19
    if-eqz v12, :cond_27

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 553
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v11, v10, v5, v0}, Lcom/loc/bd;->a(ILcom/loc/bi;Ljava/lang/String;I)[D

    move-result-object v5

    .line 556
    if-nez v5, :cond_2d

    move v4, v8

    :goto_1a
    move v8, v4

    .line 566
    goto :goto_19

    .line 557
    :cond_2d
    add-int/lit8 v8, v8, 0x1

    .line 558
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 559
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v22, "|"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 560
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 561
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    const/16 v4, 0xf

    .line 562
    if-ge v8, v4, :cond_27

    move v4, v8

    goto/16 :goto_1a

    .line 577
    :cond_2e
    invoke-virtual {v10}, Lcom/loc/bi;->a()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 585
    if-eqz v9, :cond_30

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    .line 579
    :cond_2f
    :try_start_9
    invoke-virtual {v10}, Lcom/loc/bi;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :goto_1b
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    .line 582
    goto/16 :goto_7

    :catch_7
    move-exception v4

    goto :goto_1b

    .line 586
    :cond_30
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/loc/bn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    goto/16 :goto_7

    .line 603
    :cond_31
    return-object v4

    .line 572
    :catch_8
    move-exception v4

    move v13, v5

    goto/16 :goto_16

    :catch_9
    move-exception v4

    goto/16 :goto_16

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "#"

    .line 645
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 646
    packed-switch p0, :pswitch_data_0

    .line 657
    :goto_0
    return-object v0

    .line 648
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 651
    aget-object v0, v1, v0

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 2077
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    :cond_0
    return-object v1

    .line 2077
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2085
    invoke-static {}, Lcom/loc/bd;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2088
    packed-switch p2, :pswitch_data_0

    .line 2116
    return-object v1

    .line 2090
    :pswitch_0
    invoke-static {p0}, Lcom/loc/bd;->a(Ljava/lang/String;)I

    move-result v1

    .line 2091
    invoke-static {v1, p0}, Lcom/loc/bd;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    .line 2093
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2096
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ","

    .line 2098
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    .line 2099
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2100
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2103
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    :goto_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x4

    .line 2094
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2101
    :cond_3
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "wifi"

    .line 2109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    .line 2111
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2112
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1957
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1962
    invoke-static {p0}, Lcom/loc/bd;->a(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#"

    .line 1963
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1964
    packed-switch v1, :pswitch_data_0

    .line 1989
    :goto_0
    return-object v0

    .line 1958
    :cond_0
    return-object v0

    .line 1967
    :pswitch_0
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 1984
    goto :goto_0

    .line 1967
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1969
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    :goto_2
    move-object v2, v0

    .line 1983
    goto :goto_1

    .line 1975
    :cond_2
    if-eqz v2, :cond_3

    .line 1978
    :goto_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    if-nez p1, :cond_4

    move-object v0, v2

    goto :goto_2

    .line 1976
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 1981
    :cond_4
    return-object v2

    .line 1964
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1685
    sget-object v0, Lcom/loc/bd;->e:Lcom/loc/bn;

    invoke-virtual {v0}, Lcom/loc/bn;->a()V

    .line 1686
    sget-object v0, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1687
    sget-object v0, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1688
    sget-object v0, Lcom/loc/bd;->a:[I

    aput v2, v0, v2

    .line 1689
    sget-object v0, Lcom/loc/bd;->a:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1690
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const-string/jumbo v0, "#"

    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 673
    packed-switch p0, :pswitch_data_0

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 675
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access"

    .line 676
    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    .line 681
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 682
    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 708
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access"

    .line 709
    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 7
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
    const/4 v1, 0x0

    .line 726
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 729
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v0, "#"

    .line 730
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 731
    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    .line 740
    return-void

    .line 727
    :cond_0
    return-void

    .line 731
    :cond_1
    aget-object v4, v2, v0

    const-string/jumbo v5, ","

    .line 732
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, ","

    .line 735
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 736
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IZZ)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2230
    if-nez p3, :cond_5

    if-eq p2, v2, :cond_6

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "cgi"

    .line 2232
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_1
    const-string/jumbo v3, "wifi"

    .line 2241
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2250
    :cond_2
    sget-object v0, Lcom/loc/bd;->a:[I

    aget v0, v0, v2

    const/16 v3, 0x7d0

    if-gt v0, v3, :cond_9

    .line 2259
    invoke-static {p0}, Lcom/loc/bw;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2260
    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    .line 2261
    if-eq v3, v4, :cond_a

    .line 2271
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_b

    .line 2279
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 2290
    :cond_4
    :goto_1
    return v2

    :cond_5
    const/16 v0, 0x19

    .line 2230
    if-ge p2, v0, :cond_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 2232
    :cond_7
    if-eqz v0, :cond_1

    .line 2240
    return v1

    .line 2241
    :cond_8
    if-nez v0, :cond_2

    .line 2249
    return v1

    .line 2254
    :cond_9
    return v1

    .line 2270
    :cond_a
    return v1

    .line 2271
    :cond_b
    if-eqz p4, :cond_3

    .line 2278
    return v1

    .line 2279
    :cond_c
    if-nez p4, :cond_4

    .line 2280
    sget-object v0, Lcom/loc/bd;->g:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_4

    const-string/jumbo v0, "phone"

    .line 2282
    invoke-static {p0, v0}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/loc/bd;->g:Landroid/telephony/TelephonyManager;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1311
    invoke-static {p0, p1, p3, v1, p5}, Lcom/loc/bd;->a(Landroid/content/Context;Ljava/lang/String;IZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    if-eqz p4, :cond_1

    .line 1320
    if-eq p4, v2, :cond_2

    const/16 v0, 0x18

    .line 1327
    :goto_0
    invoke-static {v4, v5, v4, v5, p2}, Lcom/loc/bd;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 1328
    :goto_1
    if-lt v1, v0, :cond_3

    .line 1333
    return v2

    .line 1312
    :cond_0
    return v1

    .line 1315
    :cond_1
    invoke-static {p0, p1, p2, p3, p6}, Lcom/loc/bd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x8

    .line 1321
    goto :goto_0

    .line 1329
    :cond_3
    aget-object v4, v3, v1

    invoke-static {p0, p1, v4, p3, p6}, Lcom/loc/bd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 1328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 10

    .prologue
    const/4 v0, 0x2

    .line 1338
    new-array v6, v0, [Ljava/lang/String;

    .line 1339
    invoke-static {p1, p2, p3, v6}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1346
    sget-object v0, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1369
    :try_start_0
    invoke-static {}, Lcom/loc/bw;->b()J

    .line 1371
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "v"

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1372
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    invoke-static {p0}, Lcom/loc/bp;->a(Landroid/content/Context;)Lcom/loc/bp;

    move-result-object v5

    const-string/jumbo v7, "https://offline.aps.amap.com/LoadOfflineData/getData"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string/jumbo v9, "UTF-8"

    .line 1374
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 1373
    invoke-virtual {v5, p0, v7, v4, v8}, Lcom/loc/bp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_32
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1379
    if-eqz v4, :cond_6

    .line 1386
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_33
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    const/16 v5, 0xc8

    .line 1400
    if-eq v0, v5, :cond_8

    const/16 v5, 0x194

    .line 1517
    if-eq v0, v5, :cond_25

    move-object v0, v2

    move v2, v1

    move-object v1, v3

    .line 1572
    :cond_0
    :goto_1
    if-nez v0, :cond_14

    .line 1580
    :goto_2
    if-nez v1, :cond_15

    .line 1588
    :goto_3
    if-nez v4, :cond_16

    move v1, v2

    .line 1597
    :cond_1
    :goto_4
    sget-object v0, Lcom/loc/bd;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1603
    :goto_5
    return v1

    .line 1340
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1347
    :cond_3
    sget-object v0, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1348
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    .line 1349
    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_5

    .line 1353
    const/4 v0, 0x0

    return v0

    .line 1349
    :cond_4
    const/4 v0, 0x0

    goto :goto_6

    .line 1358
    :cond_5
    sget-object v0, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1588
    :cond_6
    if-nez v4, :cond_7

    .line 1594
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 1590
    :cond_7
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 1593
    :catch_0
    move-exception v0

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    .line 1406
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1407
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1408
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v5

    :goto_8
    const/16 v5, 0x104

    .line 1428
    if-eq v0, v5, :cond_b

    .line 1510
    sget-boolean v0, Lcom/loc/e;->n:Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_33
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2a
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_13

    move-object v0, v2

    move v2, v1

    move-object v1, v3

    .line 1514
    :goto_9
    if-eqz p4, :cond_0

    const/4 v3, 0x1

    .line 1515
    :try_start_4
    aget-object v3, v6, v3

    invoke-static {v3}, Lcom/loc/bd;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2d
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_23
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    .line 1594
    :catch_1
    move-exception v3

    move-object v3, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v4

    .line 1572
    :goto_a
    if-nez v2, :cond_17

    .line 1580
    :goto_b
    if-nez v3, :cond_18

    .line 1588
    :goto_c
    if-eqz v0, :cond_1

    .line 1590
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 1593
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1409
    :cond_a
    :try_start_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v8, "code"

    .line 1413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1414
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_b
    const/4 v0, 0x1

    .line 1429
    aget-object v0, v6, v0

    sput-object v0, Lcom/loc/bd;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1438
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_33
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2a
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1f
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v5

    .line 1439
    :try_start_7
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_34
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2b
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_20
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1440
    :try_start_8
    new-instance v2, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1459
    :cond_c
    :goto_d
    if-nez v0, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    move-object v1, v5

    move v2, v0

    move-object v0, v3

    .line 1506
    goto :goto_9

    .line 1445
    :cond_e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_c

    const/4 v0, 0x0

    .line 1450
    goto :goto_d

    .line 1459
    :cond_f
    sget-boolean v0, Lcom/loc/e;->n:Z

    if-eqz v0, :cond_d

    .line 1464
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1465
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1469
    :goto_f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1471
    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x800

    invoke-direct {v2, v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v0, 0x800

    .line 1472
    new-array v0, v0, [B

    :goto_10
    const/4 v7, 0x0

    const/16 v8, 0x800

    .line 1474
    invoke-virtual {v3, v0, v7, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_11

    .line 1477
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1478
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2c
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_21
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v0, 0x1

    .line 1484
    :try_start_9
    sget-object v1, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    const-string/jumbo v1, "yyyyMMdd"

    .line 1490
    invoke-static {v8, v9, v1}, Lcom/loc/bw;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1491
    sget-object v2, Lcom/loc/bd;->a:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_22
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v2

    if-nez v2, :cond_12

    .line 1495
    :try_start_a
    sget-object v2, Lcom/loc/bd;->a:[I

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_27
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1503
    :goto_11
    :try_start_b
    sget-object v1, Lcom/loc/bd;->a:[I

    const/4 v2, 0x1

    const/4 v7, 0x1

    aput v7, v1, v2
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_22
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_e

    .line 1594
    :catch_3
    move-exception v1

    move-object v2, v3

    move v1, v0

    move-object v3, v5

    move-object v0, v4

    goto/16 :goto_a

    .line 1466
    :cond_10
    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_f

    .line 1594
    :catch_4
    move-exception v0

    move-object v0, v4

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_a

    :cond_11
    const/4 v8, 0x0

    .line 1475
    invoke-virtual {v2, v0, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_2c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_21
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_10

    .line 1594
    :catch_5
    move-exception v0

    .line 1572
    :goto_12
    if-nez v3, :cond_19

    .line 1580
    :goto_13
    if-nez v5, :cond_1a

    .line 1588
    :goto_14
    if-eqz v4, :cond_1

    .line 1590
    :try_start_d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_4

    .line 1593
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 1492
    :cond_12
    :try_start_e
    sget-object v1, Lcom/loc/bd;->a:[I

    const/4 v2, 0x1

    sget-object v7, Lcom/loc/bd;->a:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v2

    goto/16 :goto_e

    .line 1594
    :catch_7
    move-exception v1

    move v1, v0

    goto :goto_12

    .line 1502
    :catch_8
    move-exception v1

    .line 1497
    sget-object v1, Lcom/loc/bd;->a:[I

    const/4 v2, 0x0

    const/4 v7, 0x0

    aput v7, v1, v2

    .line 1498
    sget-object v1, Lcom/loc/bd;->a:[I

    const/4 v2, 0x1

    const/4 v7, 0x0

    aput v7, v1, v2
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_22
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_11

    .line 1594
    :catch_9
    move-exception v1

    move v1, v0

    .line 1572
    :goto_15
    if-nez v3, :cond_1b

    .line 1580
    :goto_16
    if-nez v5, :cond_1c

    .line 1588
    :goto_17
    if-eqz v4, :cond_1

    .line 1590
    :try_start_f
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_4

    .line 1593
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 1511
    :cond_13
    :try_start_10
    sget-object v0, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_33
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_2a
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1f
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object v0, v2

    move v2, v1

    move-object v1, v3

    goto/16 :goto_9

    .line 1574
    :cond_14
    :try_start_11
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_2

    .line 1577
    :catch_b
    move-exception v0

    goto/16 :goto_2

    .line 1582
    :cond_15
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto/16 :goto_3

    .line 1585
    :catch_c
    move-exception v0

    goto/16 :goto_3

    .line 1590
    :cond_16
    :try_start_13
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :goto_18
    move v1, v2

    .line 1594
    goto/16 :goto_4

    .line 1593
    :catch_d
    move-exception v0

    goto :goto_18

    .line 1574
    :cond_17
    :try_start_14
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_b

    .line 1577
    :catch_e
    move-exception v2

    goto/16 :goto_b

    .line 1582
    :cond_18
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    goto/16 :goto_c

    .line 1585
    :catch_f
    move-exception v2

    goto/16 :goto_c

    .line 1574
    :cond_19
    :try_start_16
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    goto :goto_13

    .line 1577
    :catch_10
    move-exception v0

    goto :goto_13

    .line 1582
    :cond_1a
    :try_start_17
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    goto :goto_14

    .line 1585
    :catch_11
    move-exception v0

    goto/16 :goto_14

    .line 1574
    :cond_1b
    :try_start_18
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    goto :goto_16

    .line 1577
    :catch_12
    move-exception v0

    goto :goto_16

    .line 1582
    :cond_1c
    :try_start_19
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_13

    goto :goto_17

    .line 1585
    :catch_13
    move-exception v0

    goto :goto_17

    .line 1594
    :catch_14
    move-exception v4

    move-object v4, v0

    move-object v5, v3

    move-object v3, v2

    .line 1572
    :goto_19
    if-nez v3, :cond_1d

    .line 1580
    :goto_1a
    if-nez v5, :cond_1e

    .line 1588
    :goto_1b
    if-eqz v4, :cond_1

    .line 1590
    :try_start_1a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_15

    goto/16 :goto_4

    .line 1593
    :catch_15
    move-exception v0

    goto/16 :goto_4

    .line 1574
    :cond_1d
    :try_start_1b
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_16

    goto :goto_1a

    .line 1577
    :catch_16
    move-exception v0

    goto :goto_1a

    .line 1582
    :cond_1e
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_17

    goto :goto_1b

    .line 1585
    :catch_17
    move-exception v0

    goto :goto_1b

    .line 1594
    :catch_18
    move-exception v4

    move-object v4, v0

    move-object v5, v3

    move-object v3, v2

    .line 1572
    :goto_1c
    if-nez v3, :cond_1f

    .line 1580
    :goto_1d
    if-nez v5, :cond_20

    .line 1588
    :goto_1e
    if-eqz v4, :cond_1

    .line 1590
    :try_start_1d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_19

    goto/16 :goto_4

    .line 1593
    :catch_19
    move-exception v0

    goto/16 :goto_4

    .line 1574
    :cond_1f
    :try_start_1e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1a

    goto :goto_1d

    .line 1577
    :catch_1a
    move-exception v0

    goto :goto_1d

    .line 1582
    :cond_20
    :try_start_1f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1b

    goto :goto_1e

    .line 1585
    :catch_1b
    move-exception v0

    goto :goto_1e

    .line 1594
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v5, v3

    move-object v3, v2

    move-object v0, v1

    .line 1572
    :goto_1f
    if-nez v3, :cond_21

    .line 1580
    :goto_20
    if-nez v5, :cond_22

    .line 1588
    :goto_21
    if-nez v4, :cond_23

    .line 1594
    :goto_22
    throw v0

    .line 1574
    :cond_21
    :try_start_20
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1c

    goto :goto_20

    .line 1577
    :catch_1c
    move-exception v1

    goto :goto_20

    .line 1582
    :cond_22
    :try_start_21
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1d

    goto :goto_21

    .line 1585
    :catch_1d
    move-exception v1

    goto :goto_21

    .line 1590
    :cond_23
    :try_start_22
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1e

    goto :goto_22

    .line 1593
    :catch_1e
    move-exception v1

    goto :goto_22

    :cond_24
    const/4 v0, 0x0

    .line 1598
    sput-object v0, Lcom/loc/bd;->c:Ljava/lang/String;

    goto/16 :goto_5

    .line 1594
    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto :goto_1f

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_1f

    :catchall_3
    move-exception v0

    goto :goto_1f

    :catchall_4
    move-exception v2

    move-object v3, v0

    move-object v5, v1

    move-object v0, v2

    goto :goto_1f

    :catch_1f
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto :goto_1c

    :catch_20
    move-exception v0

    move-object v3, v2

    goto :goto_1c

    :catch_21
    move-exception v0

    goto :goto_1c

    :catch_22
    move-exception v1

    move v1, v0

    goto :goto_1c

    :catch_23
    move-exception v3

    move-object v3, v0

    move-object v5, v1

    move v1, v2

    goto :goto_1c

    :catch_24
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto :goto_19

    :catch_25
    move-exception v0

    move-object v3, v2

    goto :goto_19

    :catch_26
    move-exception v0

    goto/16 :goto_19

    :catch_27
    move-exception v1

    move v1, v0

    goto/16 :goto_19

    :catch_28
    move-exception v3

    move-object v3, v0

    move-object v5, v1

    move v1, v2

    goto/16 :goto_19

    :catch_29
    move-exception v4

    move-object v4, v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_15

    :catch_2a
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_15

    :catch_2b
    move-exception v0

    move-object v3, v2

    goto/16 :goto_15

    :catch_2c
    move-exception v0

    goto/16 :goto_15

    :catch_2d
    move-exception v3

    move-object v3, v0

    move-object v5, v1

    move v1, v2

    goto/16 :goto_15

    :catch_2e
    move-exception v4

    move-object v4, v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_12

    :catch_2f
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_12

    :catch_30
    move-exception v0

    move-object v3, v2

    goto/16 :goto_12

    :catch_31
    move-exception v3

    move-object v3, v0

    move-object v5, v1

    move v1, v2

    goto/16 :goto_12

    :catch_32
    move-exception v4

    goto/16 :goto_a

    :catch_33
    move-exception v0

    move-object v0, v4

    goto/16 :goto_a

    :catch_34
    move-exception v0

    move-object v0, v4

    move-object v3, v5

    goto/16 :goto_a

    :cond_25
    move-object v0, v2

    move v2, v1

    move-object v1, v3

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    .prologue
    const/16 v0, 0x19

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2008
    if-eqz p3, :cond_2

    .line 2026
    if-ne p3, v8, :cond_8

    .line 2027
    :cond_0
    invoke-static {v6, v7, v6, v7, p1}, Lcom/loc/bd;->a(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2031
    if-eq p3, v8, :cond_9

    .line 2033
    if-eq p3, v4, :cond_a

    move v2, v1

    .line 2036
    :goto_0
    if-eq p2, v8, :cond_b

    .line 2038
    if-eq p2, v4, :cond_c

    .line 2041
    return v1

    .line 2005
    :cond_1
    return v1

    .line 2009
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2011
    if-nez v0, :cond_4

    .line 2024
    :cond_3
    :goto_1
    return v8

    .line 2012
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2016
    :cond_5
    :goto_2
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2019
    :goto_3
    sget-object v1, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2020
    sget-object v1, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2013
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2014
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 2017
    :cond_7
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2026
    :cond_8
    if-eq p3, v4, :cond_0

    .line 2067
    return v1

    :cond_9
    const/16 v2, 0x9

    .line 2032
    goto :goto_0

    :cond_a
    move v2, v0

    .line 2034
    goto :goto_0

    :cond_b
    move v0, v1

    .line 2043
    :cond_c
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    .line 2044
    sget-object v4, Lcom/loc/bd;->d:Ljava/util/Hashtable;

    .line 2046
    :goto_4
    if-lt v0, v2, :cond_d

    .line 2064
    return v8

    .line 2047
    :cond_d
    aget-object v5, v3, v0

    invoke-static {p0, v5, p2}, Lcom/loc/bd;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2049
    if-nez v5, :cond_f

    .line 2046
    :cond_e
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2050
    :cond_f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_11

    .line 2055
    :cond_10
    :goto_6
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2058
    :goto_7
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2059
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2051
    :cond_11
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2052
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 2056
    :cond_12
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    :cond_0
    return v8

    .line 2133
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2136
    if-nez p3, :cond_3

    .line 2137
    :cond_2
    return v8

    .line 2136
    :cond_3
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2144
    invoke-static {}, Lcom/loc/bd;->c()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2147
    packed-switch p2, :pswitch_data_0

    .line 2175
    return v8

    .line 2149
    :pswitch_0
    invoke-static {p0}, Lcom/loc/bd;->a(Ljava/lang/String;)I

    move-result v0

    .line 2150
    invoke-static {v0, p0}, Lcom/loc/bd;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-"

    .line 2152
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2155
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v3, ","

    .line 2157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ","

    .line 2158
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2159
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2162
    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    :goto_1
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v9

    .line 2179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v8, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2181
    new-instance v3, Ljava/io/File;

    aget-object v1, p3, v9

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    move-wide v2, v4

    .line 2207
    :cond_5
    :goto_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "v"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2210
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "geohash"

    .line 2211
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "t"

    .line 2212
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    .line 2213
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imei"

    .line 2214
    sget-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imsi"

    .line 2215
    sget-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "src"

    .line 2216
    sget-object v2, Lcom/loc/e;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "license"

    .line 2217
    sget-object v2, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 2224
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    .line 2225
    return v9

    :cond_6
    const/4 v3, 0x4

    .line 2153
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2160
    :cond_7
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v0, "wifi"

    .line 2168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ","

    .line 2170
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2171
    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2183
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2186
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v1, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    .line 2187
    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2188
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 2199
    if-eqz v1, :cond_5

    .line 2200
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 2204
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 2205
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 2199
    :goto_5
    if-nez v1, :cond_a

    :cond_9
    :goto_6
    move-wide v2, v4

    .line 2204
    goto/16 :goto_3

    .line 2200
    :cond_a
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 2204
    :catch_2
    move-exception v1

    :goto_7
    move-wide v2, v4

    .line 2205
    goto/16 :goto_3

    :catch_3
    move-exception v1

    .line 2199
    :goto_8
    if-eqz v2, :cond_9

    .line 2200
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 2204
    :catch_4
    move-exception v1

    goto :goto_7

    .line 2205
    :catchall_0
    move-exception v0

    .line 2199
    :goto_9
    if-nez v2, :cond_b

    .line 2204
    :goto_a
    throw v0

    .line 2200
    :cond_b
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    .line 2204
    :catch_5
    move-exception v1

    goto :goto_a

    .line 2222
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 2205
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_7
    move-exception v2

    move-object v2, v1

    goto :goto_8

    :catch_8
    move-exception v2

    goto :goto_5

    .line 2147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(ILcom/loc/bi;Ljava/lang/String;I)[D
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1709
    if-eqz p3, :cond_1

    const-string/jumbo v6, "wifi"

    .line 1724
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/loc/bi;->g()J

    move-result-wide v0

    int-to-long v4, p0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 1725
    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/loc/bi;->a(J)V

    .line 1727
    invoke-virtual {p1}, Lcom/loc/bi;->g()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v5, v0, -0x10

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p0

    .line 1729
    invoke-static/range {v0 .. v7}, Lcom/loc/bd;->a(ILcom/loc/bi;Ljava/lang/String;[IIILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    .line 1730
    if-ne v0, v1, :cond_6

    move-object v0, v8

    .line 1764
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    const-string/jumbo v0, "\\|"

    .line 1710
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1711
    array-length v0, v1

    new-array v3, v0, [I

    const/4 v0, 0x0

    .line 1712
    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 1715
    array-length v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const-string/jumbo v6, "cdma"

    goto :goto_0

    .line 1713
    :cond_2
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v0

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v6, "gsm"

    goto :goto_0

    .line 1724
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-object v0, v8

    goto :goto_2

    .line 1734
    :cond_6
    add-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    :try_start_1
    invoke-virtual {p1, v0, v1}, Lcom/loc/bi;->a(J)V

    const/4 v0, 0x3

    .line 1735
    new-array v0, v0, [D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    .line 1736
    :try_start_2
    invoke-virtual {p1}, Lcom/loc/bi;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/bd;->a(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 1737
    invoke-virtual {p1}, Lcom/loc/bi;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/bd;->a(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 1738
    invoke-virtual {p1}, Lcom/loc/bi;->d()I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 1744
    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/bw;->a(D)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 1749
    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/bw;->b(D)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1753
    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 1748
    goto :goto_2

    .line 1761
    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(DDLjava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x19

    const/4 v2, 0x0

    .line 92
    new-array v1, v5, [Ljava/lang/String;

    .line 95
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0, p1, p2, p3}, Lcom/loc/bc;->a(DD)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p0, p1, p2, p3}, Lcom/loc/bc;->a(DD)Ljava/lang/String;

    move-result-object p4

    .line 112
    :goto_0
    aput-object v0, v1, v2

    .line 113
    aput-object p4, v1, v4

    .line 114
    invoke-static {v0}, Lcom/loc/bc;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 115
    :goto_1
    if-lt v0, v4, :cond_1

    .line 121
    invoke-static {p4}, Lcom/loc/bc;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x1a

    .line 122
    :goto_2
    if-lt v0, v5, :cond_2

    .line 128
    return-object v1

    :cond_0
    move-object v0, p4

    .line 97
    goto :goto_0

    .line 116
    :cond_1
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    add-int/lit8 v3, v0, -0x1a

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1890
    sget-object v0, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1895
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1948
    :cond_1
    :goto_0
    return-void

    .line 1891
    :cond_2
    sget-object v0, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    return-void

    .line 1896
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1899
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x8

    .line 1900
    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1901
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v3

    .line 1907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1909
    :goto_1
    if-lt v1, v3, :cond_4

    .line 1922
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1932
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1940
    if-eqz v0, :cond_1

    .line 1941
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1945
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1910
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 1911
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 1918
    :goto_2
    add-int/lit8 v2, v3, -0x1

    if-eq v1, v2, :cond_6

    .line 1909
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v5, ","

    .line 1912
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1946
    :catch_1
    move-exception v1

    .line 1940
    :goto_4
    if-eqz v0, :cond_1

    .line 1941
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1945
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_6
    :try_start_5
    const-string/jumbo v2, ","

    .line 1919
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1946
    :catch_3
    move-exception v1

    .line 1940
    :goto_5
    if-eqz v0, :cond_1

    .line 1941
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 1945
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 1946
    :catchall_0
    move-exception v0

    .line 1940
    :goto_6
    if-nez v1, :cond_7

    .line 1945
    :goto_7
    throw v0

    .line 1941
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    .line 1945
    :catch_5
    move-exception v1

    goto :goto_7

    .line 1946
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1993
    sget-object v1, Lcom/loc/bd;->f:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2303
    invoke-static {}, Lcom/loc/bw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "offline"

    .line 2304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-static {}, Lcom/loc/bw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    return-object v0
.end method
