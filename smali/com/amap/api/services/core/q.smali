.class Lcom/amap/api/services/core/q;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/PoiItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/core/PoiItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/core/PoiItem;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/amap/api/services/core/PoiItem;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/PoiItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/core/PoiItem;
    .locals 1

    .prologue
    .line 242
    new-array v0, p1, [Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/q;->a(Landroid/os/Parcel;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/q;->a(I)[Lcom/amap/api/services/core/PoiItem;

    move-result-object v0

    return-object v0
.end method
