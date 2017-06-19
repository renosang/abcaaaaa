.class public Lcom/amap/api/services/poisearch/PoiItemDetail;
.super Lcom/amap/api/services/core/PoiItem;
.source "PoiItemDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/PoiItemDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Groupbuy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Discount;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/services/poisearch/Dining;

.field private d:Lcom/amap/api/services/poisearch/Hotel;

.field private e:Lcom/amap/api/services/poisearch/Cinema;

.field private f:Lcom/amap/api/services/poisearch/Scenic;

.field private g:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/amap/api/services/poisearch/h;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/h;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/PoiItemDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/PoiItem;-><init>(Landroid/os/Parcel;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/poisearch/Groupbuy;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    const-class v0, Lcom/amap/api/services/poisearch/Discount;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/poisearch/h;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/amap/api/services/poisearch/PoiItemDetail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    if-eq p0, p1, :cond_6

    .line 157
    invoke-super {p0, p1}, Lcom/amap/api/services/core/PoiItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 161
    check-cast p1, Lcom/amap/api/services/poisearch/PoiItemDetail;

    .line 162
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->e:Lcom/amap/api/services/poisearch/Cinema;

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->e:Lcom/amap/api/services/poisearch/Cinema;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->e:Lcom/amap/api/services/poisearch/Cinema;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Cinema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->g:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->g:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    if-ne v0, v1, :cond_b

    .line 169
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->c:Lcom/amap/api/services/poisearch/Dining;

    if-eqz v0, :cond_c

    .line 172
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->c:Lcom/amap/api/services/poisearch/Dining;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->c:Lcom/amap/api/services/poisearch/Dining;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Dining;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 182
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->d:Lcom/amap/api/services/poisearch/Hotel;

    if-eqz v0, :cond_12

    .line 187
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->d:Lcom/amap/api/services/poisearch/Hotel;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->d:Lcom/amap/api/services/poisearch/Hotel;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Hotel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->f:Lcom/amap/api/services/poisearch/Scenic;

    if-eqz v0, :cond_14

    .line 192
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->f:Lcom/amap/api/services/poisearch/Scenic;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->f:Lcom/amap/api/services/poisearch/Scenic;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/Scenic;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 194
    :cond_5
    return v3

    .line 156
    :cond_6
    return v3

    .line 158
    :cond_7
    return v2

    .line 160
    :cond_8
    return v2

    .line 163
    :cond_9
    iget-object v0, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->e:Lcom/amap/api/services/poisearch/Cinema;

    if-eqz v0, :cond_0

    .line 164
    return v2

    .line 166
    :cond_a
    return v2

    .line 168
    :cond_b
    return v2

    .line 170
    :cond_c
    iget-object v0, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->c:Lcom/amap/api/services/poisearch/Dining;

    if-eqz v0, :cond_1

    .line 171
    return v2

    .line 173
    :cond_d
    return v2

    .line 175
    :cond_e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 176
    return v2

    .line 178
    :cond_f
    return v2

    .line 180
    :cond_10
    iget-object v0, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 181
    return v2

    .line 183
    :cond_11
    return v2

    .line 185
    :cond_12
    iget-object v0, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->d:Lcom/amap/api/services/poisearch/Hotel;

    if-eqz v0, :cond_4

    .line 186
    return v2

    .line 188
    :cond_13
    return v2

    .line 190
    :cond_14
    iget-object v0, p1, Lcom/amap/api/services/poisearch/PoiItemDetail;->f:Lcom/amap/api/services/poisearch/Scenic;

    if-eqz v0, :cond_5

    .line 191
    return v2

    .line 193
    :cond_15
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-super {p0}, Lcom/amap/api/services/core/PoiItem;->hashCode()I

    move-result v0

    .line 140
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->e:Lcom/amap/api/services/poisearch/Cinema;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->e:Lcom/amap/api/services/poisearch/Cinema;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/Cinema;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->g:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->g:Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiItemDetail$DeepType;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->c:Lcom/amap/api/services/poisearch/Dining;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->c:Lcom/amap/api/services/poisearch/Dining;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/Dining;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->d:Lcom/amap/api/services/poisearch/Hotel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->d:Lcom/amap/api/services/poisearch/Hotel;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/Hotel;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->f:Lcom/amap/api/services/poisearch/Scenic;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->f:Lcom/amap/api/services/poisearch/Scenic;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/Scenic;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 150
    return v0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0

    :cond_2
    move v0, v1

    .line 141
    goto :goto_1

    :cond_3
    move v0, v1

    .line 143
    goto :goto_2

    :cond_4
    move v0, v1

    .line 144
    goto :goto_3

    :cond_5
    move v0, v1

    .line 146
    goto :goto_4

    :cond_6
    move v0, v1

    .line 148
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/core/PoiItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiItemDetail;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 134
    return-void
.end method
