.class public Lcom/loc/bt;
.super Ljava/lang/Object;
.source "Req.java"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:[B

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    .line 20
    iput-object v0, p0, Lcom/loc/bt;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/bt;->b:S

    .line 29
    iput-object v1, p0, Lcom/loc/bt;->c:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/loc/bt;->d:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/loc/bt;->e:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/loc/bt;->f:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/loc/bt;->g:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/loc/bt;->h:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/loc/bt;->i:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/loc/bt;->l:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/loc/bt;->m:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/loc/bt;->n:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/loc/bt;->o:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/loc/bt;->p:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/loc/bt;->q:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/loc/bt;->r:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/loc/bt;->s:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/loc/bt;->t:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/loc/bt;->u:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/loc/bt;->v:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/loc/bt;->w:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/loc/bt;->x:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/loc/bt;->B:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/loc/bt;->C:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/loc/bt;->D:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/loc/bt;->E:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/loc/bt;->F:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/loc/bt;->G:[B

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 944
    iget-object v0, p0, Lcom/loc/bt;->B:Ljava/lang/String;

    const-string/jumbo v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 945
    aget-object v0, v0, p2

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lac"

    .line 946
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "cellid"

    .line 948
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "signal"

    .line 950
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 953
    return-object v0

    .line 947
    :cond_0
    aget-object v0, v0, v2

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 949
    aget-object v0, v0, v1

    return-object v0

    :cond_2
    const/4 v1, 0x2

    .line 951
    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a([BI)V
    .locals 0

    .prologue
    .line 1090
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string/jumbo v0, ":"

    .line 897
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 898
    if-nez v0, :cond_1

    .line 902
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    move v0, v1

    .line 903
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    move-object v0, v2

    .line 907
    :goto_1
    new-array v3, v4, [B

    move v2, v1

    .line 908
    :goto_2
    array-length v4, v0

    if-lt v2, v4, :cond_3

    .line 918
    return-object v3

    .line 898
    :cond_1
    array-length v2, v0

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "0"

    .line 904
    aput-object v3, v2, v0

    .line 903
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_3
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_4

    .line 915
    :goto_3
    aget-object v4, v0, v2

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 916
    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 913
    :cond_4
    aget-object v4, v0, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 928
    iget-object v0, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 933
    iget-object v2, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    .line 929
    return-object v0
.end method

.method public a()[B
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x7f

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/loc/bt;->b()V

    const/16 v0, 0xc00

    .line 208
    iget-object v2, p0, Lcom/loc/bt;->G:[B

    if-nez v2, :cond_5

    .line 211
    :goto_0
    new-array v5, v0, [B

    .line 216
    iget-object v0, p0, Lcom/loc/bt;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    .line 221
    iget-short v0, p0, Lcom/loc/bt;->b:S

    invoke-static {v0}, Lcom/loc/bw;->b(I)[B

    move-result-object v0

    .line 222
    array-length v2, v0

    invoke-static {v0, v1, v5, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/loc/bt;->c:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 230
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 232
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    .line 246
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/loc/bt;->d:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 247
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 249
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    array-length v2, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v0, v2

    .line 263
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/loc/bt;->o:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 264
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 266
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v0, v2

    .line 280
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/loc/bt;->e:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 281
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 283
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    array-length v2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v0, v2

    .line 297
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/loc/bt;->f:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 298
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 300
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    array-length v2, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v0, v2

    .line 314
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/loc/bt;->g:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 315
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 317
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    array-length v2, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v0, v2

    .line 331
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/loc/bt;->u:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 332
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 334
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    array-length v2, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v0, v2

    .line 348
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/loc/bt;->h:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 349
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 350
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 351
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    array-length v2, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v0, v2

    .line 365
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/loc/bt;->p:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 366
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 368
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    array-length v2, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v0, v2

    .line 382
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/loc/bt;->q:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 383
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 385
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    array-length v2, v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v0, v2

    .line 398
    :goto_a
    iget-object v2, p0, Lcom/loc/bt;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 402
    iget-object v2, p0, Lcom/loc/bt;->t:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/loc/bt;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 403
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 405
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    array-length v2, v2

    add-int/2addr v0, v2

    .line 416
    :goto_b
    :try_start_a
    iget-object v2, p0, Lcom/loc/bt;->v:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 417
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 418
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 419
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    array-length v2, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v0, v2

    .line 433
    :goto_c
    :try_start_b
    iget-object v2, p0, Lcom/loc/bt;->w:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 436
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    array-length v2, v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v0, v2

    .line 453
    :goto_d
    :try_start_c
    iget-object v2, p0, Lcom/loc/bt;->x:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 454
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 455
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 456
    array-length v6, v2

    invoke-static {v2, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    array-length v2, v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v0, v2

    .line 469
    :goto_e
    iget-object v2, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 474
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    .line 479
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 492
    :goto_f
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/loc/bt;->l:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/loc/bw;->c(I)[B

    move-result-object v2

    .line 494
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    array-length v2, v2

    add-int/2addr v0, v2

    .line 501
    :goto_10
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 502
    :cond_1
    iget-object v2, p0, Lcom/loc/bt;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/loc/bw;->c(I)[B

    move-result-object v2

    .line 503
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    array-length v2, v2

    add-int/2addr v0, v2

    .line 510
    :goto_11
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 511
    :cond_2
    iget-object v2, p0, Lcom/loc/bt;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 512
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    array-length v2, v2

    add-int/2addr v0, v2

    .line 519
    :goto_12
    iget-object v2, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 520
    add-int/lit8 v0, v0, 0x1

    .line 521
    iget-object v2, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 607
    iget-object v2, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 679
    :cond_3
    :goto_13
    iget-object v2, p0, Lcom/loc/bt;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 683
    aput-byte v11, v5, v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    .line 686
    :try_start_d
    iget-object v2, p0, Lcom/loc/bt;->C:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 690
    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/loc/bt;->b(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x0

    .line 691
    array-length v7, v3

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    array-length v3, v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    add-int/2addr v0, v3

    const/4 v3, 0x2

    .line 698
    :try_start_e
    aget-object v3, v2, v3

    const-string/jumbo v6, "GBK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 699
    array-length v6, v3

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 700
    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    .line 701
    array-length v7, v3

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    array-length v3, v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    add-int/2addr v0, v3

    :goto_14
    const/4 v3, 0x1

    .line 714
    :try_start_f
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 718
    if-gt v2, v10, :cond_12

    .line 721
    :goto_15
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 722
    add-int/lit8 v0, v0, 0x1

    .line 747
    :goto_16
    iget-object v2, p0, Lcom/loc/bt;->D:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 748
    iget-object v2, p0, Lcom/loc/bt;->D:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 749
    :cond_4
    aput-byte v1, v5, v0

    .line 750
    add-int/lit8 v0, v0, 0x1

    .line 813
    :goto_17
    :try_start_10
    iget-object v2, p0, Lcom/loc/bt;->F:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 814
    array-length v3, v2

    if-gt v3, v10, :cond_16

    .line 817
    :goto_18
    if-eqz v2, :cond_17

    .line 824
    array-length v3, v2

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 825
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 826
    array-length v4, v2

    invoke-static {v2, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    array-length v2, v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    add-int/2addr v0, v2

    .line 841
    :goto_19
    iget-object v2, p0, Lcom/loc/bt;->G:[B

    if-nez v2, :cond_18

    move v2, v1

    .line 844
    :goto_1a
    invoke-static {v2}, Lcom/loc/bw;->b(I)[B

    move-result-object v3

    .line 845
    array-length v4, v3

    invoke-static {v3, v1, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    array-length v3, v3

    add-int/2addr v0, v3

    .line 848
    if-gtz v2, :cond_19

    .line 862
    :goto_1b
    new-array v2, v0, [B

    .line 863
    invoke-static {v5, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 868
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 869
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 870
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 875
    invoke-static {v4, v5}, Lcom/loc/bw;->a(J)[B

    move-result-object v3

    .line 876
    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    .line 877
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    array-length v0, v3

    .line 886
    invoke-static {v4, v1}, Lcom/loc/bt;->a([BI)V

    .line 887
    return-object v4

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/loc/bt;->G:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0xc00

    goto/16 :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 239
    aput-byte v1, v5, v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 258
    :catch_1
    move-exception v2

    .line 256
    aput-byte v1, v5, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 275
    :catch_2
    move-exception v2

    .line 273
    aput-byte v1, v5, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 292
    :catch_3
    move-exception v2

    .line 290
    aput-byte v1, v5, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 309
    :catch_4
    move-exception v2

    .line 307
    aput-byte v1, v5, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 326
    :catch_5
    move-exception v2

    .line 324
    aput-byte v1, v5, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 343
    :catch_6
    move-exception v2

    .line 341
    aput-byte v1, v5, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 360
    :catch_7
    move-exception v2

    .line 358
    aput-byte v1, v5, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 377
    :catch_8
    move-exception v2

    .line 375
    aput-byte v1, v5, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 394
    :catch_9
    move-exception v2

    .line 392
    aput-byte v1, v5, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 399
    :cond_6
    aput-byte v1, v5, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 428
    :catch_a
    move-exception v2

    .line 426
    aput-byte v1, v5, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    .line 445
    :catch_b
    move-exception v2

    .line 443
    aput-byte v1, v5, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 465
    :catch_c
    move-exception v2

    .line 463
    aput-byte v1, v5, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 480
    :cond_7
    iget-object v2, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    .line 492
    :cond_8
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_10

    .line 501
    :cond_9
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_11

    .line 510
    :cond_a
    iget-object v2, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_12

    :cond_b
    const-string/jumbo v2, "mcc"

    .line 528
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 537
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "mnc"

    .line 543
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 544
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "lac"

    .line 550
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 551
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "cellid"

    .line 557
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->f(Ljava/lang/String;)[B

    move-result-object v2

    .line 558
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    array-length v2, v2

    add-int/2addr v2, v0

    const-string/jumbo v0, "signal"

    .line 567
    invoke-virtual {p0, v0}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 568
    if-gt v0, v10, :cond_c

    .line 571
    :goto_1c
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    .line 572
    add-int/lit8 v0, v2, 0x1

    .line 576
    iget-object v2, p0, Lcom/loc/bt;->B:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 580
    iget-object v2, p0, Lcom/loc/bt;->B:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    .line 581
    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 582
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .line 583
    :goto_1d
    if-ge v2, v6, :cond_3

    const-string/jumbo v3, "lac"

    .line 587
    invoke-direct {p0, v3, v2}, Lcom/loc/bt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v3

    .line 588
    array-length v7, v3

    invoke-static {v3, v1, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    array-length v3, v3

    add-int/2addr v0, v3

    const-string/jumbo v3, "cellid"

    .line 593
    invoke-direct {p0, v3, v2}, Lcom/loc/bt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/bw;->f(Ljava/lang/String;)[B

    move-result-object v3

    .line 594
    array-length v7, v3

    invoke-static {v3, v1, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    array-length v3, v3

    add-int/2addr v3, v0

    const-string/jumbo v0, "signal"

    .line 599
    invoke-direct {p0, v0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 600
    if-gt v0, v10, :cond_e

    .line 603
    :goto_1e
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    .line 604
    add-int/lit8 v3, v3, 0x1

    .line 583
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1d

    :cond_c
    move v0, v1

    .line 569
    goto :goto_1c

    .line 577
    :cond_d
    aput-byte v1, v5, v0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_e
    move v0, v1

    .line 601
    goto :goto_1e

    :cond_f
    const-string/jumbo v2, "mcc"

    .line 614
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 623
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "sid"

    .line 629
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 630
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "nid"

    .line 636
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 637
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "bid"

    .line 643
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->e(Ljava/lang/String;)[B

    move-result-object v2

    .line 644
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "lon"

    .line 650
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->f(Ljava/lang/String;)[B

    move-result-object v2

    .line 651
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    array-length v2, v2

    add-int/2addr v0, v2

    const-string/jumbo v2, "lat"

    .line 657
    invoke-virtual {p0, v2}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/bw;->f(Ljava/lang/String;)[B

    move-result-object v2

    .line 658
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    array-length v2, v2

    add-int/2addr v2, v0

    const-string/jumbo v0, "signal"

    .line 664
    invoke-virtual {p0, v0}, Lcom/loc/bt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 665
    if-gt v0, v10, :cond_10

    .line 668
    :goto_1f
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    .line 669
    add-int/lit8 v0, v2, 0x1

    .line 673
    aput-byte v1, v5, v0

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_10
    move v0, v1

    .line 666
    goto :goto_1f

    .line 680
    :cond_11
    aput-byte v1, v5, v0

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 710
    :catch_d
    move-exception v3

    .line 708
    const/4 v3, 0x0

    :try_start_11
    aput-byte v3, v5, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14

    :cond_12
    move v2, v1

    .line 719
    goto/16 :goto_15

    .line 742
    :catch_e
    move-exception v2

    const-string/jumbo v2, "00:00:00:00:00:00"

    .line 731
    invoke-direct {p0, v2}, Lcom/loc/bt;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 732
    array-length v3, v2

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    array-length v2, v2

    add-int/2addr v0, v2

    .line 735
    aput-byte v1, v5, v0

    .line 736
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v2, "0"

    .line 740
    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 748
    :cond_13
    array-length v2, v6

    if-eqz v2, :cond_4

    .line 752
    array-length v2, v6

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 753
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v1

    .line 755
    :goto_20
    array-length v3, v6

    if-lt v0, v3, :cond_14

    .line 800
    iget-object v0, p0, Lcom/loc/bt;->E:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/bw;->b(I)[B

    move-result-object v0

    .line 801
    array-length v3, v0

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    array-length v0, v0

    add-int/2addr v0, v2

    goto/16 :goto_17

    .line 756
    :cond_14
    aget-object v3, v6, v0

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 760
    aget-object v7, v3, v1

    invoke-direct {p0, v7}, Lcom/loc/bt;->b(Ljava/lang/String;)[B

    move-result-object v7

    .line 761
    array-length v8, v7

    invoke-static {v7, v1, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 762
    array-length v7, v7

    add-int/2addr v2, v7

    const/4 v7, 0x2

    .line 768
    :try_start_12
    aget-object v7, v3, v7

    const-string/jumbo v8, "GBK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 769
    array-length v8, v7

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    .line 770
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    .line 771
    array-length v9, v7

    invoke-static {v7, v8, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    array-length v7, v7
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    add-int/2addr v2, v7

    .line 787
    :goto_21
    aget-object v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 788
    if-gt v3, v10, :cond_15

    .line 791
    :goto_22
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 792
    add-int/lit8 v2, v2, 0x1

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 780
    :catch_f
    move-exception v7

    .line 778
    aput-byte v1, v5, v2

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_15
    move v3, v1

    .line 789
    goto :goto_22

    :cond_16
    move-object v2, v4

    .line 815
    goto/16 :goto_18

    .line 821
    :cond_17
    const/4 v2, 0x0

    :try_start_13
    aput-byte v2, v5, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .line 822
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    .line 836
    :catch_10
    move-exception v2

    .line 834
    aput-byte v1, v5, v0

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    .line 842
    :cond_18
    iget-object v2, p0, Lcom/loc/bt;->G:[B

    array-length v2, v2

    goto/16 :goto_1a

    .line 849
    :cond_19
    iget-object v2, p0, Lcom/loc/bt;->G:[B

    iget-object v3, p0, Lcom/loc/bt;->G:[B

    array-length v3, v3

    invoke-static {v2, v1, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v2, p0, Lcom/loc/bt;->G:[B

    array-length v2, v2

    add-int/2addr v0, v2

    goto/16 :goto_1b
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 965
    iget-object v0, p0, Lcom/loc/bt;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 968
    :goto_0
    iget-object v0, p0, Lcom/loc/bt;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 971
    :goto_1
    iget-object v0, p0, Lcom/loc/bt;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 974
    :goto_2
    iget-object v0, p0, Lcom/loc/bt;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 977
    :goto_3
    iget-object v0, p0, Lcom/loc/bt;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 980
    :goto_4
    iget-object v0, p0, Lcom/loc/bt;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 983
    :goto_5
    iget-object v0, p0, Lcom/loc/bt;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 986
    :goto_6
    iget-object v0, p0, Lcom/loc/bt;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 989
    :goto_7
    iget-object v0, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 991
    iget-object v0, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 994
    :cond_0
    :goto_8
    iget-object v0, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 996
    iget-object v0, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 999
    :cond_1
    :goto_9
    iget-object v0, p0, Lcom/loc/bt;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1008
    :goto_a
    iget-object v0, p0, Lcom/loc/bt;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1015
    :goto_b
    iget-object v0, p0, Lcom/loc/bt;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1018
    :goto_c
    iget-object v0, p0, Lcom/loc/bt;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1021
    :goto_d
    iget-object v0, p0, Lcom/loc/bt;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1024
    :goto_e
    iget-object v0, p0, Lcom/loc/bt;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1027
    :goto_f
    iget-object v0, p0, Lcom/loc/bt;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1030
    :goto_10
    iget-object v0, p0, Lcom/loc/bt;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1033
    :goto_11
    iget-object v0, p0, Lcom/loc/bt;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1036
    :goto_12
    iget-object v0, p0, Lcom/loc/bt;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1039
    :goto_13
    iget-object v0, p0, Lcom/loc/bt;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1042
    :goto_14
    iget-object v0, p0, Lcom/loc/bt;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1045
    :goto_15
    iget-object v0, p0, Lcom/loc/bt;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1048
    :goto_16
    iget-object v0, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1050
    iget-object v0, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1053
    :cond_2
    :goto_17
    iget-object v0, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1055
    iget-object v0, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1058
    :cond_3
    :goto_18
    iget-object v0, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1061
    :goto_19
    iget-object v0, p0, Lcom/loc/bt;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1064
    :goto_1a
    iget-object v0, p0, Lcom/loc/bt;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1067
    :goto_1b
    iget-object v0, p0, Lcom/loc/bt;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1070
    :goto_1c
    iget-object v0, p0, Lcom/loc/bt;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1073
    :goto_1d
    iget-object v0, p0, Lcom/loc/bt;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1076
    :goto_1e
    iget-object v0, p0, Lcom/loc/bt;->G:[B

    if-eqz v0, :cond_27

    .line 1079
    :goto_1f
    return-void

    :cond_4
    const-string/jumbo v0, ""

    .line 966
    iput-object v0, p0, Lcom/loc/bt;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, ""

    .line 969
    iput-object v0, p0, Lcom/loc/bt;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, ""

    .line 972
    iput-object v0, p0, Lcom/loc/bt;->d:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, ""

    .line 975
    iput-object v0, p0, Lcom/loc/bt;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v0, ""

    .line 978
    iput-object v0, p0, Lcom/loc/bt;->f:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, ""

    .line 981
    iput-object v0, p0, Lcom/loc/bt;->g:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, ""

    .line 984
    iput-object v0, p0, Lcom/loc/bt;->h:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    const-string/jumbo v0, ""

    .line 987
    iput-object v0, p0, Lcom/loc/bt;->i:Ljava/lang/String;

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v0, "0"

    .line 990
    iput-object v0, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    goto/16 :goto_8

    .line 991
    :cond_d
    iget-object v0, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    .line 992
    iput-object v0, p0, Lcom/loc/bt;->j:Ljava/lang/String;

    goto/16 :goto_8

    :cond_e
    const-string/jumbo v0, "0"

    .line 995
    iput-object v0, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    goto/16 :goto_9

    .line 996
    :cond_f
    iget-object v0, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    .line 997
    iput-object v0, p0, Lcom/loc/bt;->k:Ljava/lang/String;

    goto/16 :goto_9

    :cond_10
    const-string/jumbo v0, ""

    .line 1000
    iput-object v0, p0, Lcom/loc/bt;->l:Ljava/lang/String;

    goto/16 :goto_a

    :cond_11
    const-string/jumbo v0, ""

    .line 1009
    iput-object v0, p0, Lcom/loc/bt;->m:Ljava/lang/String;

    goto/16 :goto_b

    :cond_12
    const-string/jumbo v0, ""

    .line 1016
    iput-object v0, p0, Lcom/loc/bt;->n:Ljava/lang/String;

    goto/16 :goto_c

    :cond_13
    const-string/jumbo v0, ""

    .line 1019
    iput-object v0, p0, Lcom/loc/bt;->o:Ljava/lang/String;

    goto/16 :goto_d

    :cond_14
    const-string/jumbo v0, ""

    .line 1022
    iput-object v0, p0, Lcom/loc/bt;->p:Ljava/lang/String;

    goto/16 :goto_e

    :cond_15
    const-string/jumbo v0, ""

    .line 1025
    iput-object v0, p0, Lcom/loc/bt;->q:Ljava/lang/String;

    goto/16 :goto_f

    :cond_16
    const-string/jumbo v0, ""

    .line 1028
    iput-object v0, p0, Lcom/loc/bt;->r:Ljava/lang/String;

    goto/16 :goto_10

    :cond_17
    const-string/jumbo v0, ""

    .line 1031
    iput-object v0, p0, Lcom/loc/bt;->s:Ljava/lang/String;

    goto/16 :goto_11

    :cond_18
    const-string/jumbo v0, ""

    .line 1034
    iput-object v0, p0, Lcom/loc/bt;->t:Ljava/lang/String;

    goto/16 :goto_12

    :cond_19
    const-string/jumbo v0, ""

    .line 1037
    iput-object v0, p0, Lcom/loc/bt;->u:Ljava/lang/String;

    goto/16 :goto_13

    :cond_1a
    const-string/jumbo v0, ""

    .line 1040
    iput-object v0, p0, Lcom/loc/bt;->v:Ljava/lang/String;

    goto/16 :goto_14

    :cond_1b
    const-string/jumbo v0, ""

    .line 1043
    iput-object v0, p0, Lcom/loc/bt;->w:Ljava/lang/String;

    goto/16 :goto_15

    :cond_1c
    const-string/jumbo v0, ""

    .line 1046
    iput-object v0, p0, Lcom/loc/bt;->x:Ljava/lang/String;

    goto/16 :goto_16

    :cond_1d
    const-string/jumbo v0, "0"

    .line 1049
    iput-object v0, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    goto/16 :goto_17

    .line 1050
    :cond_1e
    iget-object v0, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    .line 1051
    iput-object v0, p0, Lcom/loc/bt;->y:Ljava/lang/String;

    goto/16 :goto_17

    :cond_1f
    const-string/jumbo v0, "0"

    .line 1054
    iput-object v0, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    goto/16 :goto_18

    .line 1055
    :cond_20
    iget-object v0, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "0"

    .line 1056
    iput-object v0, p0, Lcom/loc/bt;->z:Ljava/lang/String;

    goto/16 :goto_18

    :cond_21
    const-string/jumbo v0, ""

    .line 1059
    iput-object v0, p0, Lcom/loc/bt;->A:Ljava/lang/String;

    goto/16 :goto_19

    :cond_22
    const-string/jumbo v0, ""

    .line 1062
    iput-object v0, p0, Lcom/loc/bt;->B:Ljava/lang/String;

    goto/16 :goto_1a

    :cond_23
    const-string/jumbo v0, ""

    .line 1065
    iput-object v0, p0, Lcom/loc/bt;->C:Ljava/lang/String;

    goto/16 :goto_1b

    :cond_24
    const-string/jumbo v0, ""

    .line 1068
    iput-object v0, p0, Lcom/loc/bt;->D:Ljava/lang/String;

    goto/16 :goto_1c

    :cond_25
    const-string/jumbo v0, ""

    .line 1071
    iput-object v0, p0, Lcom/loc/bt;->E:Ljava/lang/String;

    goto/16 :goto_1d

    :cond_26
    const-string/jumbo v0, ""

    .line 1074
    iput-object v0, p0, Lcom/loc/bt;->F:Ljava/lang/String;

    goto/16 :goto_1e

    .line 1077
    :cond_27
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/bt;->G:[B

    goto/16 :goto_1f
.end method
