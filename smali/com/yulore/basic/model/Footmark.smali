.class public Lcom/yulore/basic/model/Footmark;
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
            "Lcom/yulore/basic/model/Footmark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private menu:Lcom/yulore/basic/model/ActionMenu;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yulore/basic/model/Footmark$1;

    invoke-direct {v0}, Lcom/yulore/basic/model/Footmark$1;-><init>()V

    sput-object v0, Lcom/yulore/basic/model/Footmark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    const-class v0, Lcom/yulore/basic/model/ActionMenu;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yulore/basic/model/ActionMenu;

    iput-object v0, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-eq p0, p1, :cond_1

    .line 60
    if-nez p1, :cond_2

    :cond_0
    return v1

    .line 59
    :cond_1
    return v0

    .line 60
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 62
    check-cast p1, Lcom/yulore/basic/model/Footmark;

    .line 64
    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 65
    :cond_3
    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    .line 64
    :cond_6
    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_7
    return v1

    .line 65
    :cond_8
    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    iget-object v3, p1, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    invoke-virtual {v2, v3}, Lcom/yulore/basic/model/ActionMenu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 82
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    invoke-virtual {v1}, Lcom/yulore/basic/model/ActionMenu;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Footmark{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "name=\'"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", menu="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yulore/basic/model/Footmark;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yulore/basic/model/Footmark;->menu:Lcom/yulore/basic/model/ActionMenu;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    return-void
.end method
