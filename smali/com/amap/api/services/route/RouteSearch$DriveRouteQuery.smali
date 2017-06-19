.class public Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;
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
            "Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I

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

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/amap/api/services/route/o;

    invoke-direct {v0}, Lcom/amap/api/services/route/o;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 677
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    .line 680
    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 682
    if-eqz v2, :cond_0

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    :goto_0
    move v0, v1

    .line 687
    :goto_1
    if-lt v0, v2, :cond_1

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    .line 692
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    goto :goto_0

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    sget-object v3, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 565
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    .line 566
    iput-object p3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    .line 567
    iput-object p4, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    .line 568
    iput-object p5, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    .line 569
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;
    .locals 6

    .prologue
    .line 767
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    iget-object v3, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 770
    :catch_0
    move-exception v0

    .line 769
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
    .line 554
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 657
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 732
    if-eq p0, p1, :cond_4

    .line 734
    if-eqz p1, :cond_5

    .line 736
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 738
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    .line 739
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 742
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 747
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_b

    .line 752
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 754
    :cond_2
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    iget v1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    if-ne v0, v1, :cond_d

    .line 756
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 759
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 761
    :cond_3
    return v3

    .line 733
    :cond_4
    return v3

    .line 735
    :cond_5
    return v2

    .line 737
    :cond_6
    return v2

    .line 740
    :cond_7
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 741
    return v2

    .line 743
    :cond_8
    return v2

    .line 745
    :cond_9
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 746
    return v2

    .line 748
    :cond_a
    return v2

    .line 750
    :cond_b
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_2

    .line 751
    return v2

    .line 753
    :cond_c
    return v2

    .line 755
    :cond_d
    return v2

    .line 757
    :cond_e
    iget-object v0, p1, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 758
    return v2

    .line 760
    :cond_f
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 715
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 717
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 720
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 722
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    add-int/2addr v0, v2

    .line 723
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 727
    return v0

    :cond_1
    move v0, v1

    .line 715
    goto :goto_0

    :cond_2
    move v0, v1

    .line 717
    goto :goto_1

    :cond_3
    move v0, v1

    .line 720
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 663
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 665
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    return-void

    .line 666
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 669
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 670
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0
.end method
