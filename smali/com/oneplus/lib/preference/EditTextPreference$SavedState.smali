.class Lcom/oneplus/lib/preference/EditTextPreference$SavedState;
.super Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/EditTextPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/lib/preference/EditTextPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/oneplus/lib/preference/EditTextPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/preference/EditTextPreference$SavedState$1;-><init>()V

    .line 227
    sput-object v0, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/lib/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return-void
.end method
