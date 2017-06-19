.class public Lcom/loc/ay$c;
.super Ljava/lang/Object;
.source "MPos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field final synthetic f:Lcom/loc/ay;


# direct methods
.method public constructor <init>(Lcom/loc/ay;DD)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 67
    iput-object p1, p0, Lcom/loc/ay$c;->f:Lcom/loc/ay;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/loc/ay$c;->a:D

    .line 29
    iput-wide v0, p0, Lcom/loc/ay$c;->b:D

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/loc/ay$c;->c:I

    const-string/jumbo v0, "0"

    .line 34
    iput-object v0, p0, Lcom/loc/ay$c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/loc/ay$c;->e:I

    .line 69
    iput-wide p2, p0, Lcom/loc/ay$c;->a:D

    .line 70
    iput-wide p4, p0, Lcom/loc/ay$c;->b:D

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/loc/ay;DDII)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 73
    iput-object p1, p0, Lcom/loc/ay$c;->f:Lcom/loc/ay;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/loc/ay$c;->a:D

    .line 29
    iput-wide v0, p0, Lcom/loc/ay$c;->b:D

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/loc/ay$c;->c:I

    const-string/jumbo v0, "0"

    .line 34
    iput-object v0, p0, Lcom/loc/ay$c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/loc/ay$c;->e:I

    .line 75
    iput-wide p2, p0, Lcom/loc/ay$c;->a:D

    .line 76
    iput-wide p4, p0, Lcom/loc/ay$c;->b:D

    .line 77
    iput p6, p0, Lcom/loc/ay$c;->c:I

    .line 78
    iput p7, p0, Lcom/loc/ay$c;->e:I

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/loc/ay;DDILjava/lang/String;DI)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 82
    iput-object p1, p0, Lcom/loc/ay$c;->f:Lcom/loc/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/loc/ay$c;->a:D

    .line 29
    iput-wide v0, p0, Lcom/loc/ay$c;->b:D

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/loc/ay$c;->c:I

    const-string/jumbo v0, "0"

    .line 34
    iput-object v0, p0, Lcom/loc/ay$c;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/loc/ay$c;->e:I

    .line 83
    iput-wide p2, p0, Lcom/loc/ay$c;->a:D

    .line 84
    iput-wide p4, p0, Lcom/loc/ay$c;->b:D

    .line 85
    iput-object p7, p0, Lcom/loc/ay$c;->d:Ljava/lang/String;

    .line 86
    iput p6, p0, Lcom/loc/ay$c;->c:I

    .line 87
    iput p10, p0, Lcom/loc/ay$c;->e:I

    .line 88
    return-void
.end method

.method private a(Lcom/loc/ay$c;)Z
    .locals 12

    .prologue
    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-wide v8, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/loc/ay$c;->b(Lcom/loc/ay$c;)D

    move-result-wide v4

    .line 42
    cmpg-double v2, v4, v8

    if-gez v2, :cond_0

    .line 46
    return v0

    .line 48
    :cond_0
    iget v2, p0, Lcom/loc/ay$c;->e:I

    if-gtz v2, :cond_5

    :cond_1
    iget v2, p0, Lcom/loc/ay$c;->e:I

    if-eqz v2, :cond_9

    .line 58
    :goto_0
    iget v2, p0, Lcom/loc/ay$c;->e:I

    if-lez v2, :cond_e

    .line 62
    :cond_2
    cmpg-double v2, v4, v10

    if-gez v2, :cond_11

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    iget v2, p0, Lcom/loc/ay$c;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_12

    move v2, v0

    :goto_2
    if-nez v2, :cond_3

    iget v2, p1, Lcom/loc/ay$c;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    return v1

    .line 48
    :cond_5
    iget v2, p1, Lcom/loc/ay$c;->e:I

    if-nez v2, :cond_1

    .line 52
    :cond_6
    iget v2, p0, Lcom/loc/ay$c;->e:I

    if-ne v2, v0, :cond_a

    :cond_7
    const-wide v2, 0x40a7700000000000L    # 3000.0

    .line 53
    cmpg-double v2, v4, v2

    if-gez v2, :cond_c

    iget v2, p0, Lcom/loc/ay$c;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_b

    move v2, v0

    :goto_3
    if-nez v2, :cond_8

    iget v2, p1, Lcom/loc/ay$c;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_c

    :cond_8
    :goto_4
    return v0

    .line 48
    :cond_9
    iget v2, p1, Lcom/loc/ay$c;->e:I

    if-gtz v2, :cond_6

    goto :goto_0

    .line 52
    :cond_a
    iget v2, p1, Lcom/loc/ay$c;->e:I

    if-eq v2, v0, :cond_7

    .line 55
    cmpg-double v2, v4, v10

    if-gez v2, :cond_d

    :goto_5
    return v0

    :cond_b
    move v2, v1

    .line 53
    goto :goto_3

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v0, v1

    .line 55
    goto :goto_5

    .line 58
    :cond_e
    iget v2, p1, Lcom/loc/ay$c;->e:I

    if-gtz v2, :cond_2

    .line 64
    iget v2, p0, Lcom/loc/ay$c;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_13

    move v2, v0

    :goto_6
    if-nez v2, :cond_f

    iget v2, p1, Lcom/loc/ay$c;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_14

    move v2, v0

    :goto_7
    if-nez v2, :cond_f

    cmpg-double v2, v4, v8

    if-gez v2, :cond_10

    :cond_f
    move v1, v0

    :cond_10
    return v1

    :cond_11
    move v2, v1

    .line 62
    goto :goto_1

    :cond_12
    move v2, v1

    goto :goto_2

    :cond_13
    move v2, v1

    .line 64
    goto :goto_6

    :cond_14
    move v2, v1

    goto :goto_7
.end method

.method static synthetic a(Lcom/loc/ay$c;Lcom/loc/ay$c;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/loc/ay$c;->a(Lcom/loc/ay$c;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/loc/ay$c;)D
    .locals 12

    .prologue
    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d28L    # 3.1415926535898

    .line 91
    iget-wide v0, p0, Lcom/loc/ay$c;->a:D

    sub-double v0, v4, v0

    const-wide v2, 0x40d4e90000000000L    # 21412.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    const-wide v2, 0x41583fbd40000000L    # 6356725.0

    add-double/2addr v0, v2

    .line 92
    iget-wide v2, p0, Lcom/loc/ay$c;->a:D

    mul-double/2addr v2, v8

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    .line 93
    iget-wide v4, p1, Lcom/loc/ay$c;->b:D

    iget-wide v6, p0, Lcom/loc/ay$c;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v2, v4

    .line 94
    iget-wide v4, p1, Lcom/loc/ay$c;->a:D

    iget-wide v6, p0, Lcom/loc/ay$c;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v0, v4

    .line 95
    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/loc/ay$c;Lcom/loc/ay$c;)D
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/loc/ay$c;->b(Lcom/loc/ay$c;)D

    move-result-wide v0

    return-wide v0
.end method
