.class Lcom/amap/api/services/route/u;
.super Ljava/lang/Object;
.source "WalkRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/WalkRouteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/route/WalkRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-direct {v0, p1}, Lcom/amap/api/services/route/WalkRouteResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/route/WalkRouteResult;
    .locals 1

    .prologue
    .line 63
    new-array v0, p1, [Lcom/amap/api/services/route/WalkRouteResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/u;->a(Landroid/os/Parcel;)Lcom/amap/api/services/route/WalkRouteResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/u;->a(I)[Lcom/amap/api/services/route/WalkRouteResult;

    move-result-object v0

    return-object v0
.end method
