.class Lcom/amap/api/services/route/t;
.super Ljava/lang/Object;
.source "WalkPath.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/WalkPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/route/WalkPath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/route/WalkPath;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/amap/api/services/route/WalkPath;

    invoke-direct {v0, p1}, Lcom/amap/api/services/route/WalkPath;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/route/WalkPath;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/t;->a(Landroid/os/Parcel;)Lcom/amap/api/services/route/WalkPath;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/t;->a(I)[Lcom/amap/api/services/route/WalkPath;

    move-result-object v0

    return-object v0
.end method
