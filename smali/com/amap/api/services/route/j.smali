.class Lcom/amap/api/services/route/j;
.super Ljava/lang/Object;
.source "RouteBusLineItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteBusLineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/route/RouteBusLineItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-direct {v0, p1}, Lcom/amap/api/services/route/RouteBusLineItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/j;->a(Landroid/os/Parcel;)Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/j;->a(I)[Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v0

    return-object v0
.end method
