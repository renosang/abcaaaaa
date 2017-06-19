.class public Lcom/amap/api/services/route/RouteBusLineItem;
.super Lcom/amap/api/services/busline/BusLineItem;
.source "RouteBusLineItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/busline/BusStationItem;

.field private b:Lcom/amap/api/services/busline/BusStationItem;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/amap/api/services/route/j;

    invoke-direct {v0}, Lcom/amap/api/services/route/j;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteBusLineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/amap/api/services/busline/BusLineItem;-><init>(Landroid/os/Parcel;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    .line 91
    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    .line 93
    sget-object v0, Lcom/amap/api/services/busline/BusStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->f:F

    .line 95
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    if-eq p0, p1, :cond_2

    .line 133
    invoke-super {p0, p1}, Lcom/amap/api/services/busline/BusLineItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 137
    check-cast p1, Lcom/amap/api/services/route/RouteBusLineItem;

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v0, :cond_7

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    :cond_1
    return v3

    .line 132
    :cond_2
    return v3

    .line 134
    :cond_3
    return v2

    .line 136
    :cond_4
    return v2

    .line 139
    :cond_5
    iget-object v0, p1, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v0, :cond_0

    .line 140
    return v2

    .line 142
    :cond_6
    return v2

    .line 144
    :cond_7
    iget-object v0, p1, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v0, :cond_1

    .line 145
    return v2

    .line 147
    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Lcom/amap/api/services/busline/BusLineItem;->hashCode()I

    move-result v0

    .line 118
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationItem;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusStationItem;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 126
    return v0

    :cond_1
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/busline/BusLineItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->a:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->b:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    iget v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 82
    iget v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    return-void
.end method
