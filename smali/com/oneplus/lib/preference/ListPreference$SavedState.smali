.class Lcom/oneplus/lib/preference/ListPreference$SavedState;
.super Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/ListPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/lib/preference/ListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/oneplus/lib/preference/ListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/preference/ListPreference$SavedState$1;-><init>()V

    .line 342
    sput-object v0, Lcom/oneplus/lib/preference/ListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    .line 327
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 334
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/lib/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    return-void
.end method
