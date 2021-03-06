.class public final Lcom/android/contacts/common/model/RawContact$NamedDataItem;
.super Ljava/lang/Object;
.source "RawContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/RawContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedDataItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/RawContact$NamedDataItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContact$NamedDataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContentValues:Landroid/content/ContentValues;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContact$NamedDataItem$1;-><init>()V

    .line 101
    sput-object v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    .line 82
    iput-object p2, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    .line 87
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    .line 125
    check-cast v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;

    .line 126
    .local v0, "other":Lcom/android/contacts/common/model/RawContact$NamedDataItem;
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    iget-object v2, v0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 126
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContact$NamedDataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    return-void
.end method
