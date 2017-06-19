.class public final Lcom/loc/dh;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:D

.field private f:D


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/dh;->a:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/dh;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/dh;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/dh;->d:Z

    iput-wide v2, p0, Lcom/loc/dh;->e:D

    iput-wide v2, p0, Lcom/loc/dh;->f:D

    iput-object p2, p0, Lcom/loc/dh;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/dh;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loc/dh;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/loc/dh;->c:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_5

    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/loc/dh;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_9

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/loc/dh;->d:Z

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/loc/dh;->a:Z

    return-void

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    move v0, v1

    move v2, v3

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    if-lt v0, v5, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/loc/dh;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/dh;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v0, v3

    move v2, v3

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_6

    const-string/jumbo v0, ","

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x6

    if-lt v2, v4, :cond_8

    aget-object v2, v0, v7

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    aget-object v2, v0, v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v0, v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    array-length v2, v0

    add-int/lit8 v2, v2, -0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/dh;->e:D

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/dh;->f:D

    iput-boolean v1, p0, Lcom/loc/dh;->d:Z

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_7

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    return-void

    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/loc/dh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/loc/dh;->b:Ljava/lang/String;

    const-string/jumbo v2, "GPGGA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/dh;->b:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/16 v4, 0xf

    if-ne v2, v4, :cond_2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x4

    aget-object v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    const-wide v6, 0x400599999999999aL    # 2.7

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2

    move v3, v1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/loc/dh;->a:Z

    return v0
.end method

.method protected final b()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/loc/dh;->e:D

    return-wide v0
.end method

.method protected final c()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/loc/dh;->f:D

    return-wide v0
.end method
