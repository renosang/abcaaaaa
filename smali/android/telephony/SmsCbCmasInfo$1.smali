.class final Landroid/telephony/SmsCbCmasInfo$1;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsCbCmasInfo;
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
        "Landroid/telephony/SmsCbCmasInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbCmasInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 302
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbCmasInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbCmasInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SmsCbCmasInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 307
    new-array v0, p1, [Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbCmasInfo$1;->newArray(I)[Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    return-object v0
.end method
