.class public Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;
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
            "Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 501
    new-instance v0, Lcom/amap/api/services/route/q;

    invoke-direct {v0}, Lcom/amap/api/services/route/q;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 492
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 494
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    .line 495
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;I)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 469
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    .line 470
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;
    .locals 3

    .prologue
    .line 546
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;I)V

    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 548
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
    .line 463
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 482
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 526
    if-eq p0, p1, :cond_1

    .line 528
    if-eqz p1, :cond_2

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 532
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    .line 533
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_4

    .line 536
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 538
    :cond_0
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    iget v1, p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    if-ne v0, v1, :cond_6

    .line 540
    return v3

    .line 527
    :cond_1
    return v3

    .line 529
    :cond_2
    return v2

    .line 531
    :cond_3
    return v2

    .line 534
    :cond_4
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_0

    .line 535
    return v2

    .line 537
    :cond_5
    return v2

    .line 539
    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 520
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    add-int/2addr v0, v1

    .line 521
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 518
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 488
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    return-void
.end method
