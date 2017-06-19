.class public final Lcom/amap/api/services/district/DistrictResult;
.super Ljava/lang/Object;
.source "DistrictResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/district/DistrictResult;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/amap/api/services/district/b;

    invoke-direct {v0, p0}, Lcom/amap/api/services/district/b;-><init>(Lcom/amap/api/services/district/DistrictResult;)V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Lcom/amap/api/services/district/b;

    invoke-direct {v0, p0}, Lcom/amap/api/services/district/b;-><init>(Lcom/amap/api/services/district/DistrictResult;)V

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    .line 110
    sget-object v0, Lcom/amap/api/services/district/DistrictItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    .line 111
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    if-eq p0, p1, :cond_2

    .line 141
    if-eqz p1, :cond_3

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 145
    check-cast p1, Lcom/amap/api/services/district/DistrictResult;

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 154
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    :cond_1
    return v3

    .line 140
    :cond_2
    return v3

    .line 142
    :cond_3
    return v2

    .line 144
    :cond_4
    return v2

    .line 147
    :cond_5
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v0, :cond_0

    .line 148
    return v2

    .line 150
    :cond_6
    return v2

    .line 152
    :cond_7
    iget-object v0, p1, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 153
    return v2

    .line 155
    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 134
    return v0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DistrictResult [mDisQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDistricts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

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
    .line 103
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->a:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/district/DistrictResult;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 105
    return-void
.end method
