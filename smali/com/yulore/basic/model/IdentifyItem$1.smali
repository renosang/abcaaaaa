.class Lcom/yulore/basic/model/IdentifyItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/basic/model/IdentifyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulore/basic/model/IdentifyItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulore/basic/model/IdentifyItem;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/yulore/basic/model/IdentifyItem;

    invoke-direct {v0, p1}, Lcom/yulore/basic/model/IdentifyItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yulore/basic/model/IdentifyItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulore/basic/model/IdentifyItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulore/basic/model/IdentifyItem;
    .locals 1

    .prologue
    .line 50
    new-array v0, p1, [Lcom/yulore/basic/model/IdentifyItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yulore/basic/model/IdentifyItem$1;->newArray(I)[Lcom/yulore/basic/model/IdentifyItem;

    move-result-object v0

    return-object v0
.end method
