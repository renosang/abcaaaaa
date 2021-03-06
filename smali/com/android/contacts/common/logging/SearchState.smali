.class public final Lcom/android/contacts/common/logging/SearchState;
.super Ljava/lang/Object;
.source "SearchState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/logging/SearchState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/logging/SearchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numPartitions:I

.field public numResults:I

.field public numResultsInSelectedPartition:I

.field public queryLength:I

.field public selectedIndex:I

.field public selectedIndexInPartition:I

.field public selectedPartition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/android/contacts/common/logging/SearchState$1;

    invoke-direct {v0}, Lcom/android/contacts/common/logging/SearchState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/logging/SearchState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    .line 41
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    .line 44
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    .line 50
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    .line 41
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    .line 44
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    .line 50
    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/contacts/common/logging/SearchState;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->queryLength:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numPartitions:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResults:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "queryLength"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->queryLength:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "numPartitions"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->numPartitions:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "numResults"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->numResults:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "numResultsInSelectedPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "selectedPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "selectedIndexInPartition"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "selectedIndex"

    iget v2, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->queryLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->numPartitions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->numResultsInSelectedPartition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedPartition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndexInPartition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/contacts/common/logging/SearchState;->selectedIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
