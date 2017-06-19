.class Lcom/amap/api/services/busline/a;
.super Ljava/lang/Object;
.source "BusLineItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/busline/BusLineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/busline/BusLineItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-direct {v0, p1}, Lcom/amap/api/services/busline/BusLineItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/busline/BusLineItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 255
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/amap/api/services/busline/a;->a(Landroid/os/Parcel;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/amap/api/services/busline/a;->a(I)[Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v0

    return-object v0
.end method
