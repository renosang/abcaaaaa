.class public Lcom/oneplus/contacts/common/utils/OPPhoneNumberUtils;
.super Ljava/lang/Object;
.source "OPPhoneNumberUtils.java"


# static fields
.field private static mIsOverSea:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10
    new-array v0, v2, [I

    .line 11
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 10
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/contacts/common/utils/OPPhoneNumberUtils;->mIsOverSea:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    return-object p0

    .line 19
    :cond_0
    sget-boolean v1, Lcom/oneplus/contacts/common/utils/OPPhoneNumberUtils;->mIsOverSea:Z

    if-nez v1, :cond_1

    .line 20
    const-string/jumbo v1, "CN"

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "formatNumber":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 22
    .end local v0    # "formatNumber":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formatNumber":Ljava/lang/String;
    goto :goto_0
.end method
