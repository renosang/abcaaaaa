.class public Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/amap/api/services/route/n;

    invoke-direct {v0}, Lcom/amap/api/services/route/n;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 390
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    .line 395
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 355
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    .line 356
    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    .line 357
    iput p4, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    .line 358
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;
    .locals 5

    .prologue
    .line 455
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    iget v4, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/lang/String;I)V

    return-object v0

    .line 458
    :catch_0
    move-exception v0

    .line 457
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
    .line 346
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 378
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 428
    if-eq p0, p1, :cond_2

    .line 430
    if-eqz p1, :cond_3

    .line 432
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 434
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    .line 435
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 438
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_7

    .line 443
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 445
    :cond_1
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    iget v1, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    if-ne v0, v1, :cond_9

    .line 447
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    iget v1, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    if-ne v0, v1, :cond_a

    .line 449
    return v3

    .line 429
    :cond_2
    return v3

    .line 431
    :cond_3
    return v2

    .line 433
    :cond_4
    return v2

    .line 436
    :cond_5
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 437
    return v2

    .line 439
    :cond_6
    return v2

    .line 441
    :cond_7
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_1

    .line 442
    return v2

    .line 444
    :cond_8
    return v2

    .line 446
    :cond_9
    return v2

    .line 448
    :cond_a
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 418
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 419
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 421
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    add-int/2addr v0, v1

    .line 422
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    add-int/2addr v0, v1

    .line 423
    return v0

    :cond_1
    move v0, v1

    .line 418
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 384
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    return-void
.end method
