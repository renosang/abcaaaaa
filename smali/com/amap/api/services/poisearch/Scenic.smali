.class public final Lcom/amap/api/services/poisearch/Scenic;
.super Ljava/lang/Object;
.source "Scenic.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/Scenic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/amap/api/services/poisearch/l;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/l;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/Scenic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    .line 174
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    if-eq p0, p1, :cond_d

    .line 223
    if-eqz p1, :cond_e

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 227
    check-cast p1, Lcom/amap/api/services/poisearch/Scenic;

    .line 228
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 231
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 236
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 241
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 246
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 251
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 256
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 261
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 263
    :cond_6
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 266
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 271
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 273
    :cond_8
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 276
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 278
    :cond_9
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 281
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 286
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 288
    :cond_b
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 291
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 293
    :cond_c
    return v3

    .line 222
    :cond_d
    return v3

    .line 224
    :cond_e
    return v2

    .line 226
    :cond_f
    return v2

    .line 229
    :cond_10
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    return v2

    .line 232
    :cond_11
    return v2

    .line 234
    :cond_12
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 235
    return v2

    .line 237
    :cond_13
    return v2

    .line 239
    :cond_14
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 240
    return v2

    .line 242
    :cond_15
    return v2

    .line 244
    :cond_16
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 245
    return v2

    .line 247
    :cond_17
    return v2

    .line 249
    :cond_18
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 250
    return v2

    .line 252
    :cond_19
    return v2

    .line 254
    :cond_1a
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 255
    return v2

    .line 257
    :cond_1b
    return v2

    .line 259
    :cond_1c
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 260
    return v2

    .line 262
    :cond_1d
    return v2

    .line 264
    :cond_1e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 265
    return v2

    .line 267
    :cond_1f
    return v2

    .line 269
    :cond_20
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 270
    return v2

    .line 272
    :cond_21
    return v2

    .line 274
    :cond_22
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 275
    return v2

    .line 277
    :cond_23
    return v2

    .line 279
    :cond_24
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 280
    return v2

    .line 282
    :cond_25
    return v2

    .line 284
    :cond_26
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 285
    return v2

    .line 287
    :cond_27
    return v2

    .line 289
    :cond_28
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 290
    return v2

    .line 292
    :cond_29
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 199
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 205
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 209
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 210
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 211
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 212
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 214
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 216
    return v0

    :cond_1
    move v0, v1

    .line 197
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 199
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 200
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 201
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 203
    goto :goto_4

    :cond_6
    move v0, v1

    .line 205
    goto :goto_5

    :cond_7
    move v0, v1

    .line 207
    goto :goto_6

    :cond_8
    move v0, v1

    .line 209
    goto :goto_7

    :cond_9
    move v0, v1

    .line 210
    goto :goto_8

    :cond_a
    move v0, v1

    .line 211
    goto :goto_9

    :cond_b
    move v0, v1

    .line 212
    goto :goto_a

    :cond_c
    move v0, v1

    .line 214
    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Scenic;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 158
    return-void
.end method
