.class public Lcom/yulore/basic/model/ActionMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yulore/basic/model/ActionMenu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/yulore/basic/model/ActionMenu$1;

    invoke-direct {v0}, Lcom/yulore/basic/model/ActionMenu$1;-><init>()V

    sput-object v0, Lcom/yulore/basic/model/ActionMenu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1}, Lcom/yulore/basic/model/ActionMenu;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-eq p0, p1, :cond_1

    .line 39
    if-nez p1, :cond_2

    :cond_0
    return v1

    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 41
    check-cast p1, Lcom/yulore/basic/model/ActionMenu;

    .line 43
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 45
    :cond_4
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 46
    :cond_5
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 47
    :cond_6
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 48
    :cond_7
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 50
    :cond_8
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    :goto_0
    return v0

    .line 43
    :cond_b
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_c
    return v1

    .line 44
    :cond_d
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_e
    return v1

    .line 45
    :cond_f
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_10
    return v1

    .line 46
    :cond_11
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_12
    return v1

    .line 47
    :cond_13
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_14
    return v1

    .line 48
    :cond_15
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 49
    :cond_16
    return v1

    .line 50
    :cond_17
    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 57
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 58
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 59
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 63
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActionMenu{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/yulore/basic/model/ActionMenu;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return-void
.end method
