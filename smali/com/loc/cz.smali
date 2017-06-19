.class public final Lcom/loc/cz;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static c:I

.field private static d:I

.field private static f:F


# instance fields
.field protected a:Lcom/loc/dd;

.field protected b:Lcom/loc/da;

.field private e:Lcom/loc/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/loc/cz;->c:I

    const/16 v0, 0x64

    sput v0, Lcom/loc/cz;->d:I

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/loc/cz;->f:F

    return-void
.end method

.method protected constructor <init>(Lcom/loc/cl;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/dd;

    invoke-direct {v0, p0}, Lcom/loc/dd;-><init>(Lcom/loc/cz;)V

    iput-object v0, p0, Lcom/loc/cz;->a:Lcom/loc/dd;

    new-instance v0, Lcom/loc/da;

    invoke-direct {v0, p0}, Lcom/loc/da;-><init>(Lcom/loc/cz;)V

    iput-object v0, p0, Lcom/loc/cz;->b:Lcom/loc/da;

    iput-object p1, p0, Lcom/loc/cz;->e:Lcom/loc/cl;

    return-void
.end method

.method protected static a()V
    .locals 0

    return-void
.end method

.method protected static a(I)V
    .locals 0

    sput p0, Lcom/loc/cz;->c:I

    return-void
.end method

.method protected static b(I)V
    .locals 0

    sput p0, Lcom/loc/cz;->d:I

    return-void
.end method


# virtual methods
.method protected final a(Landroid/location/Location;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/loc/cz;->e:Lcom/loc/cl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/loc/cz;->e:Lcom/loc/cl;

    invoke-virtual {v3}, Lcom/loc/cl;->j()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    return v1

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cell.list.size: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_3

    :goto_0
    if-nez v1, :cond_a

    :goto_1
    return v1

    :cond_3
    new-instance v3, Lcom/loc/db;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    invoke-direct {v3, v0}, Lcom/loc/db;-><init>(Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/loc/cz;->b:Lcom/loc/da;

    iget-object v0, v0, Lcom/loc/da;->b:Landroid/location/Location;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cz;->b:Lcom/loc/da;

    iget-object v0, v0, Lcom/loc/da;->b:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v4, Lcom/loc/cz;->d:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "collect cell?: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v0, v3

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/loc/cz;->b:Lcom/loc/da;

    iget-object v0, v0, Lcom/loc/da;->a:Lcom/loc/db;

    iget v4, v3, Lcom/loc/db;->e:I

    iget v5, v0, Lcom/loc/db;->e:I

    if-eq v4, v5, :cond_8

    :cond_7
    move v0, v1

    :goto_4
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_3

    :cond_8
    iget v4, v3, Lcom/loc/db;->d:I

    iget v5, v0, Lcom/loc/db;->d:I

    if-ne v4, v5, :cond_7

    iget v4, v3, Lcom/loc/db;->c:I

    iget v5, v0, Lcom/loc/db;->c:I

    if-ne v4, v5, :cond_7

    iget v4, v3, Lcom/loc/db;->b:I

    iget v5, v0, Lcom/loc/db;->b:I

    if-ne v4, v5, :cond_7

    iget v4, v3, Lcom/loc/db;->a:I

    iget v0, v0, Lcom/loc/db;->a:I

    if-ne v4, v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/loc/cz;->b:Lcom/loc/da;

    iput-object v0, v2, Lcom/loc/da;->a:Lcom/loc/db;

    goto :goto_1
.end method

.method protected final b(Landroid/location/Location;)Z
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/loc/cz;->e:Lcom/loc/cl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/cz;->e:Lcom/loc/cl;

    invoke-virtual {v1, v3}, Lcom/loc/cl;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    move-object v1, v0

    move v2, v3

    :goto_0
    if-nez v2, :cond_10

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/loc/cz;->a:Lcom/loc/dd;

    iget-object v1, v1, Lcom/loc/dd;->b:Landroid/location/Location;

    if-eqz v1, :cond_4

    if-nez v0, :cond_6

    :cond_3
    move-object v1, v0

    move v2, v3

    goto :goto_0

    :cond_4
    move v1, v4

    :cond_5
    :goto_1
    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/loc/cz;->a:Lcom/loc/dd;

    iget-object v1, v1, Lcom/loc/dd;->b:Landroid/location/Location;

    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    sget v2, Lcom/loc/cz;->c:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    move v1, v4

    :goto_2
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/loc/cz;->a:Lcom/loc/dd;

    iget-object v7, v1, Lcom/loc/dd;->a:Ljava/util/List;

    sget v8, Lcom/loc/cz;->f:F

    if-nez v0, :cond_9

    :cond_7
    move v1, v3

    :goto_3
    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    if-eqz v7, :cond_7

    if-eqz v0, :cond_7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int v1, v9, v10

    int-to-float v11, v1

    if-eqz v9, :cond_b

    :goto_4
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    move v6, v3

    move v2, v3

    :goto_5
    if-lt v6, v9, :cond_c

    shl-int/lit8 v1, v2, 0x1

    int-to-float v1, v1

    mul-float v2, v11, v8

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    :cond_a
    move v1, v4

    goto :goto_3

    :cond_b
    if-eqz v10, :cond_a

    goto :goto_4

    :cond_c
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v12, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v12, :cond_e

    :cond_d
    move v1, v2

    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_5

    :cond_e
    move v5, v3

    :goto_7
    if-ge v5, v10, :cond_d

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/dc;

    iget-object v1, v1, Lcom/loc/dc;->a:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_7

    :cond_f
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/loc/cz;->a:Lcom/loc/dd;

    iget-object v0, v0, Lcom/loc/dd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_8
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/loc/cz;->a:Lcom/loc/dd;

    iget-object v5, v0, Lcom/loc/dd;->a:Ljava/util/List;

    new-instance v6, Lcom/loc/dc;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/loc/dc;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method
