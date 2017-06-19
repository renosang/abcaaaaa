.class public final Lcom/amap/api/services/poisearch/Discount;
.super Ljava/lang/Object;
.source "Discount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/Discount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/amap/api/services/poisearch/c;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/c;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/Discount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/f;->e(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/Discount;->e:I

    .line 139
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    if-eq p0, p1, :cond_7

    .line 179
    if-eqz p1, :cond_8

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 183
    check-cast p1, Lcom/amap/api/services/poisearch/Discount;

    .line 184
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 197
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 202
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 204
    :cond_3
    iget v0, p0, Lcom/amap/api/services/poisearch/Discount;->e:I

    iget v1, p1, Lcom/amap/api/services/poisearch/Discount;->e:I

    if-ne v0, v1, :cond_12

    .line 206
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    if-eqz v0, :cond_13

    .line 209
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 214
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 219
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 221
    :cond_6
    return v3

    .line 178
    :cond_7
    return v3

    .line 180
    :cond_8
    return v2

    .line 182
    :cond_9
    return v2

    .line 185
    :cond_a
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    return v2

    .line 188
    :cond_b
    return v2

    .line 190
    :cond_c
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 191
    return v2

    .line 193
    :cond_d
    return v2

    .line 195
    :cond_e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 196
    return v2

    .line 198
    :cond_f
    return v2

    .line 200
    :cond_10
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 201
    return v2

    .line 203
    :cond_11
    return v2

    .line 205
    :cond_12
    return v2

    .line 207
    :cond_13
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 208
    return v2

    .line 210
    :cond_14
    return v2

    .line 212
    :cond_15
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 213
    return v2

    .line 215
    :cond_16
    return v2

    .line 217
    :cond_17
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 218
    return v2

    .line 220
    :cond_18
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 162
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/poisearch/Discount;->e:I

    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 172
    return v0

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0

    :cond_2
    move v0, v1

    .line 162
    goto :goto_1

    :cond_3
    move v0, v1

    .line 164
    goto :goto_2

    :cond_4
    move v0, v1

    .line 165
    goto :goto_3

    :cond_5
    move v0, v1

    .line 168
    goto :goto_4

    :cond_6
    move v0, v1

    .line 170
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->c:Ljava/util/Date;

    invoke-static {v0}, Lcom/amap/api/services/core/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->d:Ljava/util/Date;

    invoke-static {v0}, Lcom/amap/api/services/core/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/amap/api/services/poisearch/Discount;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Discount;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return-void
.end method
