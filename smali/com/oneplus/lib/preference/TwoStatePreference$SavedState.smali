.class Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;
.super Lcom/oneplus/lib/preference/Preference$BaseSavedState;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/TwoStatePreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState$1;-><init>()V

    .line 271
    sput-object v0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 257
    invoke-direct {p0, p1}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->checked:Z

    .line 256
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/TwoStatePreference$SavedState;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
