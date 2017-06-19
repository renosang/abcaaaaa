.class public Lcom/amap/api/services/route/RouteSearch$FromAndTo;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/amap/api/services/route/p;

    invoke-direct {v0}, Lcom/amap/api/services/route/p;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 211
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 169
    iput-object p2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 170
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 3

    .prologue
    .line 283
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    .line 288
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setStartPoiID(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setDestinationPoiID(Ljava/lang/String;)V

    .line 290
    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->clone()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 250
    if-eq p0, p1, :cond_4

    .line 252
    if-eqz p1, :cond_5

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 256
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 257
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 270
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_d

    .line 275
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    :cond_3
    return v3

    .line 251
    :cond_4
    return v3

    .line 253
    :cond_5
    return v2

    .line 255
    :cond_6
    return v2

    .line 258
    :cond_7
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 259
    return v2

    .line 261
    :cond_8
    return v2

    .line 263
    :cond_9
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_1

    .line 264
    return v2

    .line 266
    :cond_a
    return v2

    .line 268
    :cond_b
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 269
    return v2

    .line 271
    :cond_c
    return v2

    .line 273
    :cond_d
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_3

    .line 274
    return v2

    .line 276
    :cond_e
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 241
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 242
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 244
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 245
    return v0

    :cond_1
    move v0, v1

    .line 237
    goto :goto_0

    :cond_2
    move v0, v1

    .line 241
    goto :goto_1

    :cond_3
    move v0, v1

    .line 242
    goto :goto_2
.end method

.method public setDestinationPoiID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setStartPoiID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    return-void
.end method
