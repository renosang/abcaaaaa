.class final Lcom/android/contacts/common/model/RawContactDelta$1;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/RawContactDelta;
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
        "Lcom/android/contacts/common/model/RawContactDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 796
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 797
    .local v0, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->readFromParcel(Landroid/os/Parcel;)V

    .line 798
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/common/model/RawContactDelta;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 802
    new-array v0, p1, [Lcom/android/contacts/common/model/RawContactDelta;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 801
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta$1;->newArray(I)[Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v0

    return-object v0
.end method
