.class public final Lcom/amap/api/services/poisearch/Hotel;
.super Ljava/lang/Object;
.source "Hotel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/Hotel;",
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

.field private l:Ljava/util/List;
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
    .line 160
    new-instance v0, Lcom/amap/api/services/poisearch/e;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/e;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/Hotel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    .line 154
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    if-eq p0, p1, :cond_c

    .line 206
    if-eqz p1, :cond_d

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 210
    check-cast p1, Lcom/amap/api/services/poisearch/Hotel;

    .line 211
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 219
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 224
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 229
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 234
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 239
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 244
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 246
    :cond_6
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 249
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 254
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 256
    :cond_8
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 259
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 261
    :cond_9
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 264
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 269
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 271
    :cond_b
    return v3

    .line 205
    :cond_c
    return v3

    .line 207
    :cond_d
    return v2

    .line 209
    :cond_e
    return v2

    .line 212
    :cond_f
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    return v2

    .line 215
    :cond_10
    return v2

    .line 217
    :cond_11
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 218
    return v2

    .line 220
    :cond_12
    return v2

    .line 222
    :cond_13
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 223
    return v2

    .line 225
    :cond_14
    return v2

    .line 227
    :cond_15
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 228
    return v2

    .line 230
    :cond_16
    return v2

    .line 232
    :cond_17
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 233
    return v2

    .line 235
    :cond_18
    return v2

    .line 237
    :cond_19
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 238
    return v2

    .line 240
    :cond_1a
    return v2

    .line 242
    :cond_1b
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 243
    return v2

    .line 245
    :cond_1c
    return v2

    .line 247
    :cond_1d
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 248
    return v2

    .line 250
    :cond_1e
    return v2

    .line 252
    :cond_1f
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 253
    return v2

    .line 255
    :cond_20
    return v2

    .line 257
    :cond_21
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 258
    return v2

    .line 260
    :cond_22
    return v2

    .line 262
    :cond_23
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 263
    return v2

    .line 265
    :cond_24
    return v2

    .line 267
    :cond_25
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 268
    return v2

    .line 270
    :cond_26
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 179
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 187
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 197
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 199
    return v0

    :cond_1
    move v0, v1

    .line 177
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 181
    goto :goto_2

    :cond_4
    move v0, v1

    .line 185
    goto :goto_3

    :cond_5
    move v0, v1

    .line 187
    goto :goto_4

    :cond_6
    move v0, v1

    .line 189
    goto :goto_5

    :cond_7
    move v0, v1

    .line 190
    goto :goto_6

    :cond_8
    move v0, v1

    .line 192
    goto :goto_7

    :cond_9
    move v0, v1

    .line 193
    goto :goto_8

    :cond_a
    move v0, v1

    .line 194
    goto :goto_9

    :cond_b
    move v0, v1

    .line 196
    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Hotel;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 139
    return-void
.end method
