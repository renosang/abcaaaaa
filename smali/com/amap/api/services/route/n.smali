.class Lcom/amap/api/services/route/n;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-direct {v0, p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
    .locals 1

    .prologue
    .line 410
    new-array v0, p1, [Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/n;->a(Landroid/os/Parcel;)Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/n;->a(I)[Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v0

    return-object v0
.end method
