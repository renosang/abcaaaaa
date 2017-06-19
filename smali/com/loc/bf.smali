.class public Lcom/loc/bf;
.super Ljava/lang/Object;
.source "CgiManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/be;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:Lorg/json/JSONObject;

.field private i:Landroid/telephony/PhoneStateListener;

.field private j:Landroid/telephony/CellLocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v2, p0, Lcom/loc/bf;->b:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    const/16 v0, -0x71

    .line 36
    iput v0, p0, Lcom/loc/bf;->d:I

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/loc/bf;->g:J

    .line 52
    if-eqz p1, :cond_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/loc/bf;->p()V

    const-string/jumbo v0, "phone"

    .line 60
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    .line 62
    iput-object p2, p0, Lcom/loc/bf;->h:Lorg/json/JSONObject;

    .line 64
    iput-object p1, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/loc/bf;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-direct {p0}, Lcom/loc/bf;->q()V

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 72
    iput v2, p0, Lcom/loc/bf;->b:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/bf;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/loc/bf;->b:I

    return v0
.end method

.method static synthetic a(Lcom/loc/bf;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    .prologue
    .line 779
    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 780
    return-object v0

    .line 779
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v7, v3

    move v0, v1

    move-object v1, v2

    .line 786
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v6, v2, :cond_2

    move v8, v0

    move-object v0, v7

    :goto_1
    const/4 v2, 0x4

    .line 883
    if-eq v8, v2, :cond_10

    :goto_2
    return-object v0

    .line 787
    :cond_2
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 788
    if-eqz v2, :cond_3

    :try_start_0
    const-string/jumbo v3, "android.telephony.CellInfoGsm"

    .line 797
    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "android.telephony.CellInfoWcdma"

    .line 799
    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "android.telephony.CellInfoLte"

    .line 801
    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "android.telephony.CellInfoCdma"

    .line 803
    invoke-virtual {v9, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 804
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 806
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 808
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 810
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_7

    const/4 v8, 0x0

    .line 815
    :goto_3
    if-gtz v8, :cond_8

    move-object v2, v1

    move-object v3, v7

    move v1, v8

    .line 786
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v3

    move v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    move-object v3, v7

    move v1, v0

    .line 789
    goto :goto_4

    :cond_4
    const/4 v8, 0x1

    .line 805
    goto :goto_3

    :cond_5
    const/4 v8, 0x2

    .line 807
    goto :goto_3

    :cond_6
    const/4 v8, 0x3

    .line 809
    goto :goto_3

    :cond_7
    const/4 v8, 0x4

    .line 811
    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 817
    if-eq v8, v11, :cond_9

    const/4 v3, 0x2

    .line 819
    if-eq v8, v3, :cond_a

    const/4 v3, 0x3

    .line 821
    if-eq v8, v3, :cond_b

    const/4 v3, 0x4

    .line 823
    if-eq v8, v3, :cond_c

    :goto_5
    :try_start_1
    const-string/jumbo v2, "getCellIdentity"

    const/4 v3, 0x0

    .line 826
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 827
    if-eqz v2, :cond_d

    const/4 v0, 0x4

    .line 843
    if-eq v8, v0, :cond_e

    const/4 v0, 0x3

    .line 851
    if-eq v8, v0, :cond_f

    const-string/jumbo v0, "getLac"

    const/4 v3, 0x0

    .line 857
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v0, "getCid"

    const/4 v4, 0x0

    .line 858
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 859
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 860
    :try_start_2
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v7, v0

    :goto_6
    move-object v0, v7

    .line 873
    goto/16 :goto_1

    .line 818
    :cond_9
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 820
    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 822
    :cond_b
    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 824
    :cond_c
    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v2, v1

    move-object v3, v7

    move v1, v8

    .line 828
    goto :goto_4

    .line 844
    :cond_e
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    const-string/jumbo v1, "getSystemId"

    const/4 v3, 0x0

    .line 845
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string/jumbo v1, "getNetworkId"

    const/4 v3, 0x0

    .line 846
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string/jumbo v1, "getBasestationId"

    const/4 v3, 0x0

    .line 847
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string/jumbo v3, "getLongitude"

    const/4 v10, 0x0

    .line 848
    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v10, "getLatitude"

    const/4 v11, 0x0

    .line 849
    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 850
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v0

    goto :goto_6

    :cond_f
    :try_start_5
    const-string/jumbo v0, "getTac"

    const/4 v3, 0x0

    .line 852
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string/jumbo v0, "getCi"

    const/4 v4, 0x0

    .line 853
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 854
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 855
    :try_start_6
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v7, v0

    goto :goto_6

    .line 880
    :catch_0
    move-exception v2

    :goto_7
    move-object v2, v1

    move-object v3, v7

    move v1, v0

    .line 879
    goto/16 :goto_4

    :cond_10
    move-object v0, v1

    .line 883
    goto/16 :goto_2

    .line 880
    :catch_1
    move-exception v0

    move v0, v8

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v1, v0

    move v0, v8

    goto :goto_7

    :catch_3
    move-exception v2

    move-object v7, v0

    move v0, v8

    goto :goto_7
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/16 v0, -0x71

    .line 1145
    if-eq p1, v0, :cond_1

    .line 1149
    iput p1, p0, Lcom/loc/bf;->d:I

    .line 1150
    iget v0, p0, Lcom/loc/bf;->b:I

    packed-switch v0, :pswitch_data_0

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    iput v0, p0, Lcom/loc/bf;->d:I

    .line 1147
    return-void

    .line 1153
    :pswitch_0
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    iget v1, p0, Lcom/loc/bf;->d:I

    iput v1, v0, Lcom/loc/be;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/bf;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/loc/bf;->a(I)V

    return-void
.end method

.method private b(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/be;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 911
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 918
    :try_start_0
    new-instance v0, Lcom/loc/be;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/loc/be;-><init>(I)V

    .line 919
    iget-object v1, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/loc/bw;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 920
    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/loc/be;->a:Ljava/lang/String;

    const/4 v2, 0x1

    .line 921
    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/loc/be;->b:Ljava/lang/String;

    const-string/jumbo v1, "getLac"

    const/4 v2, 0x0

    .line 922
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/loc/be;->c:I

    .line 923
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    iput v1, v0, Lcom/loc/be;->d:I

    .line 924
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v1

    .line 925
    invoke-static {v1}, Lcom/loc/bw;->a(I)I

    move-result v1

    iput v1, v0, Lcom/loc/be;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    return-object v0

    .line 915
    :cond_0
    return-object v3

    .line 934
    :catch_0
    move-exception v0

    .line 938
    return-object v3
.end method

.method private b(Landroid/telephony/CellLocation;)V
    .locals 3

    .prologue
    .line 391
    if-nez p1, :cond_1

    .line 392
    :cond_0
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 395
    invoke-virtual {p0, p1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 398
    iput v0, p0, Lcom/loc/bf;->b:I

    .line 400
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/loc/bf;->d(Landroid/telephony/CellLocation;)Lcom/loc/be;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 402
    if-nez v0, :cond_4

    .line 406
    :cond_2
    return-void

    .line 396
    :cond_3
    return-void

    .line 402
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 417
    return-void

    .line 408
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 409
    invoke-virtual {p0, v0}, Lcom/loc/bf;->a(Landroid/telephony/NeighboringCellInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 412
    invoke-direct {p0, v0}, Lcom/loc/bf;->b(Landroid/telephony/NeighboringCellInfo;)Lcom/loc/be;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 414
    iget-object v2, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/bf;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/loc/bf;->r()V

    return-void
.end method

.method private c(Landroid/telephony/CellLocation;)V
    .locals 6

    .prologue
    const v5, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    if-eqz p1, :cond_3

    .line 429
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_4

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    .line 474
    iput v0, p0, Lcom/loc/bf;->b:I

    .line 475
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/loc/bw;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v3, Lcom/loc/be;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/loc/be;-><init>(I)V

    const/4 v4, 0x0

    .line 477
    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/loc/be;->a:Ljava/lang/String;

    const/4 v4, 0x1

    .line 478
    aget-object v0, v0, v4

    iput-object v0, v3, Lcom/loc/be;->b:Ljava/lang/String;

    const-string/jumbo v0, "getSystemId"

    const/4 v4, 0x0

    .line 479
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/be;->g:I

    const-string/jumbo v0, "getNetworkId"

    const/4 v4, 0x0

    .line 480
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/be;->h:I

    const-string/jumbo v0, "getBaseStationId"

    const/4 v4, 0x0

    .line 482
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/be;->i:I

    .line 483
    iget v0, p0, Lcom/loc/bf;->d:I

    iput v0, v3, Lcom/loc/be;->j:I

    const-string/jumbo v0, "getBaseStationLatitude"

    const/4 v4, 0x0

    .line 485
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/be;->e:I

    const-string/jumbo v0, "getBaseStationLongitude"

    const/4 v4, 0x0

    .line 487
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v0, v4}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    iput v0, v3, Lcom/loc/be;->f:I

    .line 489
    iget v0, v3, Lcom/loc/be;->e:I

    if-gez v0, :cond_a

    :cond_1
    const/4 v0, 0x0

    .line 490
    iput v0, v3, Lcom/loc/be;->e:I

    const/4 v0, 0x0

    .line 491
    iput v0, v3, Lcom/loc/be;->f:I

    .line 506
    :goto_0
    if-eqz v1, :cond_2

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_f

    .line 519
    :goto_1
    return-void

    .line 427
    :cond_3
    return-void

    .line 434
    :cond_4
    return-void

    .line 445
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "mGsmCellLoc"

    .line 446
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 451
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 452
    if-nez v0, :cond_8

    :cond_6
    move v0, v1

    .line 464
    :goto_3
    if-eqz v0, :cond_0

    .line 468
    return-void

    .line 448
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_2

    .line 463
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3

    .line 452
    :cond_8
    invoke-virtual {p0, v0}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 456
    invoke-direct {p0, v0}, Lcom/loc/bf;->b(Landroid/telephony/CellLocation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 457
    goto :goto_3

    .line 472
    :cond_9
    return-void

    .line 489
    :cond_a
    :try_start_2
    iget v0, v3, Lcom/loc/be;->f:I

    if-ltz v0, :cond_1

    .line 493
    iget v0, v3, Lcom/loc/be;->e:I

    if-eq v0, v5, :cond_c

    .line 497
    iget v0, v3, Lcom/loc/be;->f:I

    if-eq v0, v5, :cond_d

    .line 501
    iget v0, v3, Lcom/loc/be;->e:I

    iget v4, v3, Lcom/loc/be;->f:I

    if-eq v0, v4, :cond_e

    :cond_b
    move v1, v2

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    .line 494
    iput v0, v3, Lcom/loc/be;->e:I

    const/4 v0, 0x0

    .line 495
    iput v0, v3, Lcom/loc/be;->f:I

    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    .line 498
    iput v0, v3, Lcom/loc/be;->e:I

    const/4 v0, 0x0

    .line 499
    iput v0, v3, Lcom/loc/be;->f:I

    goto :goto_0

    .line 501
    :cond_e
    iget v0, v3, Lcom/loc/be;->e:I

    if-lez v0, :cond_b

    const/4 v0, 0x0

    .line 502
    iput v0, v3, Lcom/loc/be;->e:I

    const/4 v0, 0x0

    .line 503
    iput v0, v3, Lcom/loc/be;->f:I

    goto :goto_0

    .line 512
    :cond_f
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method static synthetic c(Lcom/loc/bf;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/loc/bf;->p()V

    return-void
.end method

.method private d(Landroid/telephony/CellLocation;)Lcom/loc/be;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 893
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 894
    new-instance v0, Lcom/loc/be;

    invoke-direct {v0, v3}, Lcom/loc/be;-><init>(I)V

    .line 895
    iget-object v1, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/loc/bw;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 896
    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/loc/be;->a:Ljava/lang/String;

    .line 897
    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/loc/be;->b:Ljava/lang/String;

    .line 898
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/loc/be;->c:I

    .line 899
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lcom/loc/be;->d:I

    .line 900
    iget v1, p0, Lcom/loc/bf;->d:I

    iput v1, v0, Lcom/loc/be;->j:I

    .line 901
    return-object v0
.end method

.method public static k()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "android.telephony.MSimTelephonyManager"

    .line 1189
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 1194
    :goto_0
    if-eqz v0, :cond_0

    .line 1207
    :goto_1
    return v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.telephony.TelephonyManager2"

    .line 1196
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x2

    .line 1197
    goto :goto_1

    .line 1200
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1193
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bw;->a(Landroid/content/Context;)Z

    move-result v0

    .line 328
    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;

    invoke-virtual {p0, v0}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;

    iget-object v1, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 363
    packed-switch v0, :pswitch_data_0

    :goto_1
    monitor-exit p0

    .line 382
    return-void

    .line 328
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/loc/bf;->m()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 336
    invoke-virtual {p0, v0}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    :goto_2
    invoke-virtual {p0, v0}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iput-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 343
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/loc/bf;->n()Landroid/telephony/CellLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_2

    :cond_3
    monitor-exit p0

    .line 360
    return-void

    .line 368
    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/bf;->b(Landroid/telephony/CellLocation;)V

    goto :goto_1

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/loc/bf;->c(Landroid/telephony/CellLocation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private m()Landroid/telephony/CellLocation;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v2, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    .line 534
    if-eqz v2, :cond_0

    .line 539
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 543
    :goto_0
    invoke-virtual {p0, v1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "getAllCellInfo"

    const/4 v3, 0x0

    .line 551
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 552
    invoke-direct {p0, v0}, Lcom/loc/bf;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v1

    .line 562
    :goto_1
    invoke-virtual {p0, v1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    const-string/jumbo v0, "getCellLocationExt"

    const/4 v3, 0x1

    .line 573
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 574
    if-nez v0, :cond_3

    .line 587
    :goto_2
    invoke-virtual {p0, v1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_3
    const-string/jumbo v0, "getCellLocationGemini"

    const/4 v3, 0x1

    .line 600
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v0, v3}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 601
    if-nez v0, :cond_5

    .line 614
    :goto_3
    invoke-virtual {p0, v1}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 623
    return-object v1

    .line 535
    :cond_0
    return-object v0

    .line 542
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 547
    :cond_1
    return-object v1

    .line 566
    :cond_2
    return-object v1

    .line 575
    :cond_3
    :try_start_4
    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    goto :goto_2

    .line 591
    :cond_4
    return-object v1

    .line 602
    :cond_5
    :try_start_5
    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v0

    goto :goto_3

    .line 618
    :cond_6
    return-object v1

    .line 612
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    .line 585
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    .line 561
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1
.end method

.method private n()Landroid/telephony/CellLocation;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 634
    iget-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/Object;

    .line 636
    if-eqz v0, :cond_1

    .line 645
    :try_start_0
    invoke-direct {p0}, Lcom/loc/bf;->o()Ljava/lang/Class;

    move-result-object v2

    .line 646
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 721
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 729
    :goto_1
    return-object v1

    .line 637
    :cond_1
    return-object v1

    .line 647
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "getCellLocation"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 650
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 660
    :goto_2
    if-eqz v0, :cond_3

    .line 677
    :goto_3
    if-eqz v0, :cond_4

    .line 695
    :goto_4
    if-nez v0, :cond_0

    :try_start_2
    const-string/jumbo v0, "getAllCellInfo"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v3, 0x0

    .line 699
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 709
    :goto_5
    :try_start_4
    invoke-direct {p0, v0}, Lcom/loc/bf;->a(Ljava/util/List;)Landroid/telephony/CellLocation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 710
    if-nez v0, :cond_0

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    :goto_6
    move-object v0, v1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    .line 662
    :try_start_5
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v0

    goto :goto_3

    :cond_4
    :try_start_6
    const-string/jumbo v3, "getCellLocationGemini"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v4, 0x1

    .line 680
    :try_start_7
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v0

    goto :goto_4

    .line 708
    :catch_1
    move-exception v0

    :goto_7
    move-object v0, v1

    goto :goto_5

    .line 722
    :cond_5
    :try_start_8
    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v0

    goto :goto_1

    .line 728
    :catch_2
    move-exception v0

    goto :goto_1

    .line 708
    :catch_3
    move-exception v0

    goto :goto_7

    .line 689
    :catch_4
    move-exception v3

    goto :goto_4

    :catch_5
    move-exception v3

    goto :goto_4

    .line 671
    :catch_6
    move-exception v3

    goto :goto_3

    :catch_7
    move-exception v3

    goto :goto_3

    .line 659
    :catch_8
    move-exception v0

    goto :goto_6
.end method

.method private o()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 739
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 741
    invoke-static {}, Lcom/loc/bf;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 756
    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 769
    :goto_1
    return-object v1

    :pswitch_0
    const-string/jumbo v0, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    goto :goto_1

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 949
    iget-object v2, p0, Lcom/loc/bf;->h:Lorg/json/JSONObject;

    .line 951
    if-nez v2, :cond_1

    .line 963
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 971
    :goto_1
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v3, "cellupdate"

    .line 953
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 954
    goto :goto_0

    .line 965
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    :goto_2
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bf;->g:J

    goto :goto_1

    .line 968
    :catch_0
    move-exception v0

    goto :goto_2

    .line 961
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private q()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v0, 0x0

    .line 974
    new-instance v1, Lcom/loc/bf$1;

    invoke-direct {v1, p0}, Lcom/loc/bf$1;-><init>(Lcom/loc/bf;)V

    iput-object v1, p0, Lcom/loc/bf;->i:Landroid/telephony/PhoneStateListener;

    const-string/jumbo v1, "android.telephony.PhoneStateListener"

    const-string/jumbo v2, ""

    .line 1074
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "LISTEN_SIGNAL_STRENGTHS"

    .line 1086
    :try_start_0
    invoke-static {v1, v2}, Lcom/loc/bv;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1093
    :goto_0
    if-eqz v0, :cond_1

    .line 1099
    :try_start_1
    iget-object v1, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/loc/bf;->i:Landroid/telephony/PhoneStateListener;

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1107
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/bf;->k()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1136
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v2, "LISTEN_SIGNAL_STRENGTH"

    .line 1077
    :try_start_3
    invoke-static {v1, v2}, Lcom/loc/bv;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1091
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/bf;->i:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    .line 1109
    :pswitch_0
    :try_start_4
    iget-object v0, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/Object;

    goto :goto_2

    .line 1127
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1113
    :pswitch_1
    iget-object v0, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    .line 1114
    invoke-static {v0, v1}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/Object;

    goto :goto_2

    .line 1117
    :pswitch_2
    iget-object v0, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone2"

    .line 1118
    invoke-static {v0, v1}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bf;->f:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1104
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private r()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;

    const/16 v0, 0x9

    .line 1176
    iput v0, p0, Lcom/loc/bf;->b:I

    .line 1177
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1178
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/be;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/loc/bf;->h:Lorg/json/JSONObject;

    .line 316
    return-void
.end method

.method public a(Landroid/telephony/CellLocation;)Z
    .locals 5

    .prologue
    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 215
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 219
    iget-object v2, p0, Lcom/loc/bf;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/loc/bw;->a(Landroid/telephony/CellLocation;Landroid/content/Context;)I

    move-result v2

    .line 220
    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 269
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 275
    :goto_1
    return v1

    .line 216
    :cond_1
    return v1

    .line 222
    :pswitch_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 223
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-ge v2, v3, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string/jumbo v2, "getSystemId"

    const/4 v3, 0x0

    .line 253
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "getNetworkId"

    const/4 v3, 0x0

    .line 255
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string/jumbo v2, "getBaseStationId"

    const/4 v3, 0x0

    .line 257
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/loc/bv;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_4

    :goto_2
    move v1, v0

    .line 264
    goto :goto_0

    :cond_2
    move v0, v1

    .line 254
    goto :goto_2

    :cond_3
    move v0, v1

    .line 256
    goto :goto_2

    :cond_4
    move v0, v1

    .line 258
    goto :goto_2

    .line 264
    :catch_0
    move-exception v1

    move v1, v0

    .line 265
    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    .line 270
    iput v0, p0, Lcom/loc/bf;->b:I

    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/telephony/NeighboringCellInfo;)Z
    .locals 5

    .prologue
    const v4, 0xffff

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 285
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 289
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    if-gt v2, v4, :cond_3

    .line 295
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 297
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 304
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    const v3, 0xfffffff

    if-ge v2, v3, :cond_7

    .line 310
    :goto_0
    return v0

    .line 286
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 290
    goto :goto_0

    :cond_2
    move v0, v1

    .line 292
    goto :goto_0

    :cond_3
    move v0, v1

    .line 294
    goto :goto_0

    :cond_4
    move v0, v1

    .line 296
    goto :goto_0

    :cond_5
    move v0, v1

    .line 298
    goto :goto_0

    :cond_6
    move v0, v1

    .line 303
    goto :goto_0

    :cond_7
    move v0, v1

    .line 308
    goto :goto_0
.end method

.method public a(Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    if-eqz p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-wide v2, p0, Lcom/loc/bf;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bf;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method public b()Lcom/loc/be;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    .line 89
    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/loc/bf;->b:I

    return v0
.end method

.method public d()Landroid/telephony/CellLocation;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 112
    return-object v0

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/loc/bf;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iput-object v0, p0, Lcom/loc/bf;->j:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public e()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/loc/bf;->l()V

    .line 128
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/loc/bf;->r()V

    .line 135
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/loc/bf;->p()V

    .line 142
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x71

    .line 156
    iput v0, p0, Lcom/loc/bf;->d:I

    .line 158
    iput-object v3, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    .line 159
    iput-object v3, p0, Lcom/loc/bf;->f:Ljava/lang/Object;

    .line 160
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/loc/bf;->i:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/loc/bf;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/loc/bf;->i:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 169
    iget v0, p0, Lcom/loc/bf;->b:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iput v1, p0, Lcom/loc/bf;->b:I

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/loc/bf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iput v1, p0, Lcom/loc/bf;->b:I

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
