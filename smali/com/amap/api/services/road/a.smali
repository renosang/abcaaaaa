.class Lcom/amap/api/services/road/a;
.super Ljava/lang/Object;
.source "Crossroad.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/road/Crossroad;
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
        "Lcom/amap/api/services/road/Crossroad;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/road/Crossroad;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/amap/api/services/road/Crossroad;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/road/Crossroad;-><init>(Landroid/os/Parcel;Lcom/amap/api/services/road/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/road/Crossroad;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/amap/api/services/road/a;->a(Landroid/os/Parcel;)Lcom/amap/api/services/road/Crossroad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/amap/api/services/road/a;->a(I)[Lcom/amap/api/services/road/Crossroad;

    move-result-object v0

    return-object v0
.end method
