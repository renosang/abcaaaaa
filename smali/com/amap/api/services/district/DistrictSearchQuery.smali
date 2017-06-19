.class public Lcom/amap/api/services/district/DistrictSearchQuery;
.super Ljava/lang/Object;
.source "DistrictSearchQuery.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictSearchQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/amap/api/services/district/d;

    invoke-direct {v0}, Lcom/amap/api/services/district/d;-><init>()V

    sput-object v0, Lcom/amap/api/services/district/DistrictSearchQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    const/16 v0, 0x14

    .line 15
    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    const/16 v0, 0x14

    .line 15
    iput v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 39
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    iput-boolean p4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 62
    iput p5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 63
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 6

    .prologue
    .line 254
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget v3, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget-boolean v4, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget v5, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 256
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
    .line 6
    invoke-virtual {p0}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    if-eq p0, p1, :cond_2

    .line 205
    if-eqz p1, :cond_3

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 209
    check-cast p1, Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 210
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 220
    :cond_1
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    iget v1, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    if-ne v0, v1, :cond_9

    .line 222
    iget v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    iget v1, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    if-ne v0, v1, :cond_a

    .line 224
    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    iget-boolean v1, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-ne v0, v1, :cond_b

    .line 226
    return v3

    .line 204
    :cond_2
    return v3

    .line 206
    :cond_3
    return v2

    .line 208
    :cond_4
    return v2

    .line 211
    :cond_5
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 212
    return v2

    .line 214
    :cond_6
    return v2

    .line 216
    :cond_7
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 217
    return v2

    .line 219
    :cond_8
    return v2

    .line 221
    :cond_9
    return v2

    .line 223
    :cond_a
    return v2

    .line 225
    :cond_b
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    add-int/2addr v0, v1

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-nez v0, :cond_2

    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    .line 198
    return v0

    :cond_1
    move v0, v1

    .line 191
    goto :goto_0

    :cond_2
    const/16 v0, 0x4cf

    .line 197
    goto :goto_1
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setKeywordsLevel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    .line 82
    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    .line 101
    return-void
.end method

.method public setShowChild(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    .line 158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-boolean v1, p0, Lcom/amap/api/services/district/DistrictSearchQuery;->e:Z

    if-nez v1, :cond_0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 275
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 273
    goto :goto_0
.end method
