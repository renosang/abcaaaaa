.class public Lcom/loc/bc;
.super Ljava/lang/Object;
.source "GeoHash.java"


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x20

    .line 15
    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v6

    const/16 v1, 0x31

    aput-char v1, v0, v3

    const/16 v1, 0x32

    aput-char v1, v0, v4

    const/16 v1, 0x33

    aput-char v1, v0, v7

    const/16 v1, 0x34

    aput-char v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    sput-object v0, Lcom/loc/bc;->a:[C

    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [I

    const/16 v1, 0x10

    aput v1, v0, v6

    const/16 v1, 0x8

    aput v1, v0, v3

    aput v5, v0, v4

    aput v4, v0, v7

    aput v3, v0, v5

    sput-object v0, Lcom/loc/bc;->b:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static final a(DD)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x6

    .line 31
    invoke-static {p0, p1, p2, p3, v0}, Lcom/loc/bc;->a(DDI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final a(DDI)Ljava/lang/String;
    .locals 10

    .prologue
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 47
    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide v6, 0x4056800000000000L    # 90.0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    .line 48
    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide v8, -0x3f99800000000000L    # -180.0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide v8, 0x4066800000000000L    # 180.0

    aput-wide v8, v5, v6

    .line 49
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lt v6, p4, :cond_0

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    if-nez v2, :cond_1

    const/4 v6, 0x0

    .line 60
    aget-wide v6, v4, v6

    const/4 v8, 0x1

    aget-wide v8, v4, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 61
    cmpl-double v8, p0, v6

    if-lez v8, :cond_3

    .line 62
    sget-object v8, Lcom/loc/bc;->b:[I

    aget v8, v8, v1

    or-int/2addr v0, v8

    const/4 v8, 0x0

    .line 63
    aput-wide v6, v4, v8

    .line 68
    :goto_1
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x4

    .line 69
    if-lt v1, v6, :cond_5

    .line 72
    sget-object v1, Lcom/loc/bc;->a:[C

    aget-char v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 52
    aget-wide v6, v5, v6

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 53
    cmpl-double v8, p2, v6

    if-lez v8, :cond_2

    .line 54
    sget-object v8, Lcom/loc/bc;->b:[I

    aget v8, v8, v1

    or-int/2addr v0, v8

    const/4 v8, 0x0

    .line 55
    aput-wide v6, v5, v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    .line 57
    aput-wide v6, v5, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    .line 65
    aput-wide v6, v4, v8

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    .line 68
    goto :goto_2

    .line 70
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 142
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    .line 143
    if-eqz v0, :cond_3

    const-string/jumbo v0, "even"

    move-object v1, v0

    .line 144
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    sget-object v0, Lcom/loc/bb$a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, -0x1

    .line 147
    if-ne v0, v4, :cond_4

    .line 150
    :cond_0
    :goto_1
    sget-object v0, Lcom/loc/bb$b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 152
    sget-object v1, Lcom/loc/bc;->a:[C

    aget-char v0, v1, v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    return-object v1

    .line 138
    :cond_2
    return-object v1

    :cond_3
    const-string/jumbo v0, "odd"

    move-object v1, v0

    .line 143
    goto :goto_0

    .line 147
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {v2, p1}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1
.end method

.method public static final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v0, 0x18

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "right"

    .line 101
    invoke-static {p0, v1}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string/jumbo v2, "btm"

    .line 102
    invoke-static {p0, v2}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "left"

    .line 103
    invoke-static {p0, v1}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "top"

    .line 104
    invoke-static {p0, v2}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 105
    aget-object v2, v0, v4

    const-string/jumbo v3, "top"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 106
    aget-object v2, v0, v4

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 107
    aget-object v2, v0, v5

    const-string/jumbo v3, "top"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 108
    aget-object v2, v0, v5

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    aget-object v1, v0, v4

    const-string/jumbo v2, "right"

    invoke-static {v1, v2}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 110
    aget-object v1, v0, v6

    const-string/jumbo v2, "top"

    invoke-static {v1, v2}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 111
    aget-object v1, v0, v7

    const-string/jumbo v2, "top"

    invoke-static {v1, v2}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xb

    .line 112
    aget-object v2, v0, v8

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xb

    .line 113
    aget-object v2, v0, v2

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xc

    .line 114
    aget-object v2, v0, v2

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xd

    .line 115
    aget-object v2, v0, v2

    const-string/jumbo v3, "left"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xe

    .line 116
    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 117
    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x10

    .line 118
    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x11

    .line 119
    aget-object v2, v0, v2

    const-string/jumbo v3, "btm"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x12

    .line 120
    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x13

    .line 121
    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x14

    .line 122
    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x15

    .line 123
    aget-object v2, v0, v2

    const-string/jumbo v3, "right"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x16

    .line 124
    aget-object v2, v0, v2

    const-string/jumbo v3, "top"

    invoke-static {v2, v3}, Lcom/loc/bc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    return-object v0
.end method
