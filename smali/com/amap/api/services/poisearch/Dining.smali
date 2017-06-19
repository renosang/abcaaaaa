.class public final Lcom/amap/api/services/poisearch/Dining;
.super Ljava/lang/Object;
.source "Dining.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/Dining;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/amap/api/services/poisearch/b;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/b;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/Dining;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    const/4 v0, 0x1

    .line 226
    new-array v0, v0, [Z

    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 228
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/Dining;->a:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    .line 248
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 308
    if-eq p0, p1, :cond_13

    .line 310
    if-eqz p1, :cond_14

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 314
    check-cast p1, Lcom/amap/api/services/poisearch/Dining;

    .line 315
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 318
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 323
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 328
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 333
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 338
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 343
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 348
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 353
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 355
    :cond_7
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/Dining;->a:Z

    iget-boolean v1, p1, Lcom/amap/api/services/poisearch/Dining;->a:Z

    if-ne v0, v1, :cond_26

    .line 357
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 360
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 362
    :cond_8
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 365
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 367
    :cond_9
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 370
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 372
    :cond_a
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 375
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 377
    :cond_b
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 380
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    if-eqz v0, :cond_31

    .line 385
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 387
    :cond_d
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 390
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 392
    :cond_e
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 395
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 397
    :cond_f
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 400
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 402
    :cond_10
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 405
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 407
    :cond_11
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 410
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 412
    :cond_12
    return v3

    .line 309
    :cond_13
    return v3

    .line 311
    :cond_14
    return v2

    .line 313
    :cond_15
    return v2

    .line 316
    :cond_16
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 317
    return v2

    .line 319
    :cond_17
    return v2

    .line 321
    :cond_18
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 322
    return v2

    .line 324
    :cond_19
    return v2

    .line 326
    :cond_1a
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 327
    return v2

    .line 329
    :cond_1b
    return v2

    .line 331
    :cond_1c
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 332
    return v2

    .line 334
    :cond_1d
    return v2

    .line 336
    :cond_1e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 337
    return v2

    .line 339
    :cond_1f
    return v2

    .line 341
    :cond_20
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 342
    return v2

    .line 344
    :cond_21
    return v2

    .line 346
    :cond_22
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 347
    return v2

    .line 349
    :cond_23
    return v2

    .line 351
    :cond_24
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 352
    return v2

    .line 354
    :cond_25
    return v2

    .line 356
    :cond_26
    return v2

    .line 358
    :cond_27
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 359
    return v2

    .line 361
    :cond_28
    return v2

    .line 363
    :cond_29
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 364
    return v2

    .line 366
    :cond_2a
    return v2

    .line 368
    :cond_2b
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 369
    return v2

    .line 371
    :cond_2c
    return v2

    .line 373
    :cond_2d
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 374
    return v2

    .line 376
    :cond_2e
    return v2

    .line 378
    :cond_2f
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 379
    return v2

    .line 381
    :cond_30
    return v2

    .line 383
    :cond_31
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 384
    return v2

    .line 386
    :cond_32
    return v2

    .line 388
    :cond_33
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 389
    return v2

    .line 391
    :cond_34
    return v2

    .line 393
    :cond_35
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 394
    return v2

    .line 396
    :cond_36
    return v2

    .line 398
    :cond_37
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 399
    return v2

    .line 401
    :cond_38
    return v2

    .line 403
    :cond_39
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 404
    return v2

    .line 406
    :cond_3a
    return v2

    .line 408
    :cond_3b
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 409
    return v2

    .line 411
    :cond_3c
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 269
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 271
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 274
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 276
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 278
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 282
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 283
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/Dining;->a:Z

    if-nez v0, :cond_9

    const/16 v0, 0x4d5

    :goto_8
    add-int/2addr v0, v2

    .line 284
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 286
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 288
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 292
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 294
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 295
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 296
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 300
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    .line 301
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 303
    return v0

    :cond_1
    move v0, v1

    .line 267
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 269
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 271
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 272
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 274
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 276
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 278
    goto/16 :goto_6

    :cond_8
    move v0, v1

    .line 282
    goto/16 :goto_7

    :cond_9
    const/16 v0, 0x4cf

    .line 283
    goto/16 :goto_8

    :cond_a
    move v0, v1

    .line 284
    goto/16 :goto_9

    :cond_b
    move v0, v1

    .line 286
    goto/16 :goto_a

    :cond_c
    move v0, v1

    .line 288
    goto/16 :goto_b

    :cond_d
    move v0, v1

    .line 290
    goto/16 :goto_c

    :cond_e
    move v0, v1

    .line 292
    goto :goto_d

    :cond_f
    move v0, v1

    .line 294
    goto :goto_e

    :cond_10
    move v0, v1

    .line 295
    goto :goto_f

    :cond_11
    move v0, v1

    .line 296
    goto :goto_10

    :cond_12
    move v0, v1

    .line 298
    goto :goto_11

    :cond_13
    move v0, v1

    .line 300
    goto :goto_12
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 199
    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/Dining;->a:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 200
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Dining;->t:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 219
    return-void
.end method
