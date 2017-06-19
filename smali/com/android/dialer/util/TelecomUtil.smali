.class public Lcom/android/dialer/util/TelecomUtil;
.super Ljava/lang/Object;
.source "TelecomUtil.java"


# static fields
.field private static sWarningLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dialer/util/TelecomUtil;->sWarningLogged:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelMissedCallsNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "TelecomManager.cancelMissedCalls called without permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAdnUriForPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 88
    invoke-static {v1, p1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getAdnUriForPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "TelecomManager.getAdnUriForPhoneAccount called without permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCallCapablePhoneAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getCallCapablePhoneAccounts(Landroid/telecom/TelecomManager;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    :goto_0
    return-object v0

    .line 175
    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 114
    invoke-static {v0, p1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getDefaultOutgoingPhoneAccount(Landroid/telecom/TelecomManager;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0
.end method

.method private static getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 149
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 151
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 150
    invoke-static {v0, v1, p1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getVoiceMailNumber(Landroid/telecom/TelecomManager;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 101
    invoke-static {v1, p1, p2}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->handleMmi(Landroid/telecom/TelecomManager;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "TelecomManager.handleMmi called without permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static hasCallPhonePermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, "android.permission.CALL_PHONE"

    invoke-static {p0, v0}, Lcom/android/dialer/util/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasModifyPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/android/dialer/util/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/android/dialer/util/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string/jumbo v0, "com.android.voicemail.permission.READ_VOICEMAIL"

    invoke-static {p0, v0}, Lcom/android/dialer/util/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v0, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    invoke-static {p0, v0}, Lcom/android/dialer/util/TelecomUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultDialer(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getDefaultDialerPackage(Landroid/telecom/TelecomManager;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 207
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 208
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/dialer/util/TelecomUtil;->sWarningLogged:Z

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    sget-boolean v1, Lcom/android/dialer/util/TelecomUtil;->sWarningLogged:Z

    if-nez v1, :cond_0

    .line 212
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "Dialer is not currently set to be default dialer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/dialer/util/TelecomUtil;->sWarningLogged:Z

    goto :goto_0
.end method

.method public static isInCall(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->isVoiceMailNumber(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static placeCall(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasCallPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->placeCall(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static showInCallScreen(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showDialpad"    # Z

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "TelecomManager.showInCallScreen called without permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static silenceRinger(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasModifyPhoneStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->silenceRinger(Landroid/telecom/TelecomManager;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "TelecomUtil"

    const-string/jumbo v2, "TelecomManager.silenceRinger called without permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
