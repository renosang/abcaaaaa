.class final Lcom/android/contacts/common/list/ContactListFilter$1;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListFilter;
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
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "filterType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "accountName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "accountType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "dataSet":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 233
    new-array v0, p1, [Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilter$1;->newArray(I)[Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method
