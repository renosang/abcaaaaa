.class public final Lcom/amap/api/services/poisearch/Cinema;
.super Ljava/lang/Object;
.source "Cinema.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/poisearch/Cinema;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/amap/api/services/poisearch/a;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/a;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/Cinema;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Z

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 115
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/Cinema;->a:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/amap/api/services/poisearch/Photo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    .line 124
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    if-eq p0, p1, :cond_7

    .line 166
    if-eqz p1, :cond_8

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 170
    check-cast p1, Lcom/amap/api/services/poisearch/Cinema;

    .line 171
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 174
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 179
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 189
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 194
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 199
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 204
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 206
    :cond_6
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/Cinema;->a:Z

    iget-boolean v1, p1, Lcom/amap/api/services/poisearch/Cinema;->a:Z

    if-ne v0, v1, :cond_18

    .line 208
    return v3

    .line 165
    :cond_7
    return v3

    .line 167
    :cond_8
    return v2

    .line 169
    :cond_9
    return v2

    .line 172
    :cond_a
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 173
    return v2

    .line 175
    :cond_b
    return v2

    .line 177
    :cond_c
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 178
    return v2

    .line 180
    :cond_d
    return v2

    .line 182
    :cond_e
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 183
    return v2

    .line 185
    :cond_f
    return v2

    .line 187
    :cond_10
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 188
    return v2

    .line 190
    :cond_11
    return v2

    .line 192
    :cond_12
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 193
    return v2

    .line 195
    :cond_13
    return v2

    .line 197
    :cond_14
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 198
    return v2

    .line 200
    :cond_15
    return v2

    .line 202
    :cond_16
    iget-object v0, p1, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 203
    return v2

    .line 205
    :cond_17
    return v2

    .line 207
    :cond_18
    return v2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 149
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 150
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 156
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/Cinema;->a:Z

    if-nez v0, :cond_7

    const/16 v0, 0x4d5

    :goto_6
    add-int/2addr v0, v1

    .line 159
    return v0

    :cond_1
    move v0, v1

    .line 147
    goto :goto_0

    :cond_2
    move v0, v1

    .line 149
    goto :goto_1

    :cond_3
    move v0, v1

    .line 150
    goto :goto_2

    :cond_4
    move v0, v1

    .line 152
    goto :goto_3

    :cond_5
    move v0, v1

    .line 154
    goto :goto_4

    :cond_6
    move v0, v1

    .line 156
    goto :goto_5

    :cond_7
    const/16 v0, 0x4cf

    .line 158
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 101
    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/Cinema;->a:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 102
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amap/api/services/poisearch/Cinema;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 110
    return-void
.end method
