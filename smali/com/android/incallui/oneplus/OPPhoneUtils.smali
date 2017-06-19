.class public Lcom/android/incallui/oneplus/OPPhoneUtils;
.super Ljava/lang/Object;
.source "OPPhoneUtils.java"


# static fields
.field private static IS_OVER_SEA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/oneplus/OPPhoneUtils;->IS_OVER_SEA:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneType(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 93
    .local v0, "phoneType":I
    const-string/jumbo v1, "OPPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPhoneType phone type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v0
.end method

.method public static getSubId(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 114
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 115
    aget v0, v1, v3

    .line 117
    :cond_0
    const-string/jumbo v2, "OPPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v0
.end method

.method public static getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCdmaDialing(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/phone/common/OPExtensionManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/common/OPExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/common/OPExtensionManager;->isCdmaDialing()Z

    move-result v0

    .line 61
    .local v0, "isCdmaDialing":Z
    const-string/jumbo v1, "OPPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCdmaDialing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0
.end method

.method public static isCdmaPhone(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 82
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_0
    if-eqz v1, :cond_1

    .line 83
    :try_start_0
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPPhoneUtils;->getPhoneType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 84
    const/4 v2, 0x1

    return v2

    .line 86
    :catch_0
    move-exception v0

    .line 88
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isMaybeVoiceMail(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 108
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->getSubId(I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isVoiceNumber(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->getSubId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isVoiceNumber(Ljava/lang/String;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isMultiSimEnable()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isOverSea()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/incallui/oneplus/OPPhoneUtils;->IS_OVER_SEA:Z

    return v0
.end method

.method public static isSupportCallRecorder()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/incallui/oneplus/OPPhoneUtils;->IS_OVER_SEA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVoiceNumber(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "isVoiceMail":Z
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isMultiSimEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 100
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    .line 104
    .local v0, "isVoiceMail":Z
    :goto_0
    return v0

    .line 102
    .local v0, "isVoiceMail":Z
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    .local v0, "isVoiceMail":Z
    goto :goto_0
.end method
