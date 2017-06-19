.class public Lcom/android/contacts/common/compat/TelephonyManagerCompat;
.super Ljava/lang/Object;
.source "TelephonyManagerCompat.java"


# static fields
.field public static final TELEPHONY_MANAGER_CLASS:Ljava/lang/String; = "android.telephony.TelephonyManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 6
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 90
    return-object v5

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    .line 94
    const-string/jumbo v1, "getDeviceId"

    .line 93
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 94
    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 93
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_2
    return-object v5
.end method

.method public static getPhoneCount(Landroid/telephony/TelephonyManager;)I
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 68
    if-nez p0, :cond_0

    .line 69
    return v3

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    const-string/jumbo v1, "getPhoneCount"

    .line 71
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0

    .line 75
    :cond_2
    return v3
.end method

.method public static getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/TelephonyManagerSdkCompat;->getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isHearingAidCompatibilitySupported(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 127
    if-nez p0, :cond_0

    .line 128
    return v3

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    .line 132
    const-string/jumbo v1, "isHearingAidCompatibilitySupported"

    .line 131
    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 130
    if-eqz v0, :cond_2

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isHearingAidCompatibilitySupported()Z

    move-result v0

    return v0

    .line 135
    :cond_2
    return v3
.end method

.method public static isTtyModeSupported(Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 108
    if-nez p0, :cond_0

    .line 109
    return v3

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "android.telephony.TelephonyManager"

    const-string/jumbo v1, "isTtyModeSupported"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isTtyModeSupported()Z

    move-result v0

    return v0

    .line 115
    :cond_2
    return v3
.end method

.method public static isVoiceCapable(Landroid/telephony/TelephonyManager;)Z
    .locals 6
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 46
    return v2

    .line 48
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    const-string/jumbo v3, "android.telephony.TelephonyManager"

    const-string/jumbo v4, "isVoiceCapable"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 54
    .local v0, "phoneType":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 55
    if-ne v0, v1, :cond_4

    .line 54
    :cond_3
    :goto_0
    return v1

    :cond_4
    move v1, v2

    .line 55
    goto :goto_0
.end method

.method public static isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1
    .param p0, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 167
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/TelephonyManagerSdkCompat;->isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    return v0
.end method
