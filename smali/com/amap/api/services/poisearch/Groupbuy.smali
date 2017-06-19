.class public final Lcom/amap/api/services/poisearch/Groupbuy;
.super Ljava/lang/Object;
.source "Groupbuy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/Groupbuy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/amap/api/services/poisearch/d;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/d;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/Groupbuy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->f:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->g:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->h:F

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->i:F

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->j:F

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 182
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    if-eq p0, p1, :cond_a

    .line 269
    if-eqz p1, :cond_b

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_c

    .line 273
    check-cast p1, Lcom/amap/api/services/poisearch/Groupbuy;

    .line 274
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->f:I

    iget v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->f:I

    if-ne v0, v1, :cond_d

    .line 276
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 279
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    :cond_0
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->j:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->j:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 284
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    if-eqz v0, :cond_11

    .line 287
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 289
    :cond_1
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->i:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 292
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->h:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 295
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 298
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 303
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 305
    :cond_3
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->g:I

    iget v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->g:I

    if-ne v0, v1, :cond_19

    .line 307
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    if-eqz v0, :cond_1a

    .line 310
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 315
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 320
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 322
    :cond_6
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 325
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 330
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 335
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 337
    :cond_9
    return v3

    .line 268
    :cond_a
    return v3

    .line 270
    :cond_b
    return v2

    .line 272
    :cond_c
    return v2

    .line 275
    :cond_d
    return v2

    .line 277
    :cond_e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 278
    return v2

    .line 280
    :cond_f
    return v2

    .line 283
    :cond_10
    return v2

    .line 285
    :cond_11
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 286
    return v2

    .line 288
    :cond_12
    return v2

    .line 291
    :cond_13
    return v2

    .line 294
    :cond_14
    return v2

    .line 296
    :cond_15
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 297
    return v2

    .line 299
    :cond_16
    return v2

    .line 301
    :cond_17
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 302
    return v2

    .line 304
    :cond_18
    return v2

    .line 306
    :cond_19
    return v2

    .line 308
    :cond_1a
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 309
    return v2

    .line 311
    :cond_1b
    return v2

    .line 313
    :cond_1c
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 314
    return v2

    .line 316
    :cond_1d
    return v2

    .line 318
    :cond_1e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 319
    return v2

    .line 321
    :cond_1f
    return v2

    .line 323
    :cond_20
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 324
    return v2

    .line 326
    :cond_21
    return v2

    .line 328
    :cond_22
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 329
    return v2

    .line 331
    :cond_23
    return v2

    .line 333
    :cond_24
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 334
    return v2

    .line 336
    :cond_25
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 240
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->f:I

    add-int/lit8 v0, v0, 0x1f

    .line 241
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/Groupbuy;->j:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 243
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/Groupbuy;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/Groupbuy;->h:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 248
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/Groupbuy;->g:I

    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 257
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 261
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 262
    return v0

    :cond_1
    move v0, v1

    .line 241
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 243
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 247
    goto :goto_2

    :cond_4
    move v0, v1

    .line 248
    goto :goto_3

    :cond_5
    move v0, v1

    .line 251
    goto :goto_4

    :cond_6
    move v0, v1

    .line 253
    goto :goto_5

    :cond_7
    move v0, v1

    .line 255
    goto :goto_6

    :cond_8
    move v0, v1

    .line 257
    goto :goto_7

    :cond_9
    move v0, v1

    .line 259
    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->d:Ljava/util/Date;

    invoke-static {v0}, Lcom/amap/api/services/core/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->e:Ljava/util/Date;

    invoke-static {v0}, Lcom/amap/api/services/core/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 196
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    iget v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 201
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Groupbuy;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return-void
.end method
