.class public Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbEtwsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivatePopup:Z

.field private final mEmergencyUserAlert:Z

.field private final mPrimary:Z

.field private final mWarningSecurityInformation:[B

.field private final mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1

    :cond_2
    move v1, v2

    .line 89
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-ne p1, p0, :cond_0

    .line 206
    return v1

    .line 208
    :cond_0
    if-eqz p1, :cond_1

    instance-of v3, p1, Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 211
    check-cast v0, Landroid/telephony/SmsCbEtwsInfo;

    .line 212
    .local v0, "other":Landroid/telephony/SmsCbEtwsInfo;
    iget v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    iget v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    if-ne v3, v4, :cond_3

    .line 213
    iget-boolean v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    iget-boolean v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-ne v3, v4, :cond_3

    .line 214
    iget-boolean v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    iget-boolean v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-ne v3, v4, :cond_2

    .line 212
    :goto_0
    return v1

    .line 209
    .end local v0    # "other":Landroid/telephony/SmsCbEtwsInfo;
    :cond_1
    return v2

    .restart local v0    # "other":Landroid/telephony/SmsCbEtwsInfo;
    :cond_2
    move v1, v2

    .line 214
    goto :goto_0

    :cond_3
    move v1, v2

    .line 212
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 197
    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    mul-int/lit8 v0, v1, 0x4

    .line 198
    .local v0, "hash":I
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x7

    :goto_0
    add-int/2addr v0, v1

    .line 199
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xf

    :goto_1
    add-int/2addr v0, v1

    .line 200
    return v0

    .line 198
    :cond_0
    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 199
    :cond_1
    mul-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0xd

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbEtwsInfo{warningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const-string/jumbo v1, ", activatePopup="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const/16 v1, 0x7d

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    goto :goto_1

    :cond_2
    move v1, v2

    .line 104
    goto :goto_2
.end method
