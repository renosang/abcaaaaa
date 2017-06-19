.class public final Lcom/amap/api/services/district/DistrictItem;
.super Ljava/lang/Object;
.source "DistrictItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/amap/api/services/district/a;

    invoke-direct {v0}, Lcom/amap/api/services/district/a;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    if-eq p0, p1, :cond_6

    .line 235
    if-eqz p1, :cond_7

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 239
    check-cast p1, Lcom/amap/api/services/district/DistrictItem;

    .line 240
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_b

    .line 248
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 258
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 263
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 268
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 270
    :cond_5
    return v3

    .line 234
    :cond_6
    return v3

    .line 236
    :cond_7
    return v2

    .line 238
    :cond_8
    return v2

    .line 241
    :cond_9
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 242
    return v2

    .line 244
    :cond_a
    return v2

    .line 246
    :cond_b
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_1

    .line 247
    return v2

    .line 249
    :cond_c
    return v2

    .line 251
    :cond_d
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 252
    return v2

    .line 254
    :cond_e
    return v2

    .line 256
    :cond_f
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 257
    return v2

    .line 259
    :cond_10
    return v2

    .line 261
    :cond_11
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 262
    return v2

    .line 264
    :cond_12
    return v2

    .line 266
    :cond_13
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 267
    return v2

    .line 269
    :cond_14
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 221
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 224
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 226
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 227
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 228
    return v0

    :cond_1
    move v0, v1

    .line 220
    goto :goto_0

    :cond_2
    move v0, v1

    .line 221
    goto :goto_1

    :cond_3
    move v0, v1

    .line 222
    goto :goto_2

    :cond_4
    move v0, v1

    .line 224
    goto :goto_3

    :cond_5
    move v0, v1

    .line 226
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistrictItem [mCitycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAdcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDistricts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictItem;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 186
    return-void
.end method
