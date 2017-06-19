.class public Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;
.super Ljava/lang/Object;
.source "TelecomManagerCompat.java"


# static fields
.field public static final TELECOM_MANAGER_CLASS:Ljava/lang/String; = "android.telecom.TelecomManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdnUriForPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 5
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 72
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "android.telecom.TelecomManager"

    const-string/jumbo v1, "getAdnUriForPhoneAccount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 74
    const-class v3, Landroid/telecom/PhoneAccountHandle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 73
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    const-string/jumbo v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCallCapablePhoneAccounts(Landroid/telecom/TelecomManager;)Ljava/util/List;
    .locals 3
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/TelecomManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "android.telecom.TelecomManager"

    .line 92
    const-string/jumbo v1, "getCallCapablePhoneAccounts"

    .line 91
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 95
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getDefaultDialerPackage(Landroid/telecom/TelecomManager;)Ljava/lang/String;
    .locals 2
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isDefaultDialerCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    return-object v1
.end method

.method public static getDefaultOutgoingPhoneAccount(Landroid/telecom/TelecomManager;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 6
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "uriScheme"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v0, "android.telecom.TelecomManager"

    .line 135
    const-string/jumbo v1, "getDefaultOutgoingPhoneAccount"

    .line 134
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 135
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 134
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 133
    if-eqz v0, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    return-object v5
.end method

.method public static getLine1Number(Landroid/telecom/TelecomManager;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, p2}, Landroid/telecom/TelecomManager;->getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    return-object v1
.end method

.method public static getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 6
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 193
    if-eqz p0, :cond_0

    .line 194
    const-string/jumbo v0, "android.telecom.TelecomManager"

    const-string/jumbo v1, "getPhoneAccount"

    .line 193
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 194
    const-class v3, Landroid/telecom/PhoneAccountHandle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 193
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    return-object v5
.end method

.method public static getSimCallManager(Landroid/telecom/TelecomManager;)Landroid/telecom/PhoneAccountHandle;
    .locals 4
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 278
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string/jumbo v0, "android.telecom.TelecomManager"

    const-string/jumbo v1, "getSimCallManager"

    .line 278
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0

    .line 282
    :cond_1
    return-object v3
.end method

.method public static getVoiceMailNumber(Landroid/telecom/TelecomManager;Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 6
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 215
    if-eqz p0, :cond_0

    .line 216
    const-string/jumbo v0, "android.telecom.TelecomManager"

    const-string/jumbo v1, "getVoiceMailNumber"

    .line 215
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 216
    const-class v3, Landroid/telecom/PhoneAccountHandle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 215
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Landroid/telecom/TelecomManager;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_1
    return-object v5
.end method

.method public static handleMmi(Landroid/telecom/TelecomManager;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 7
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "dialString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 235
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    return v4

    .line 238
    :cond_1
    if-eqz p2, :cond_3

    .line 239
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    return v1

    .line 245
    :cond_2
    const-string/jumbo v1, "handleMmi"

    .line 246
    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/telecom/PhoneAccountHandle;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    .line 247
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p1, v3, v5

    .line 243
    invoke-static {p0, v1, v2, v3}, Lcom/android/contacts/common/compat/CompatUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "handleMmiResult":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 249
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "handleMmiResult":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 253
    :cond_3
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->handleMmi(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isVoiceMailNumber(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 5
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "number"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string/jumbo v0, "android.telecom.TelecomManager"

    const-string/jumbo v1, "isVoiceMailNumber"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 176
    const-class v3, Landroid/telecom/PhoneAccountHandle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 175
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 174
    if-eqz v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/telecom/TelecomManager;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 179
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static placeCall(Landroid/app/Activity;Landroid/telecom/TelecomManager;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    return-void

    .line 51
    :cond_1
    if-eqz p2, :cond_0

    .line 54
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 56
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method

.method public static silenceRinger(Landroid/telecom/TelecomManager;)V
    .locals 3
    .param p0, "telecomManager"    # Landroid/telecom/TelecomManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string/jumbo v0, "android.telecom.TelecomManager"

    const-string/jumbo v1, "silenceRinger"

    .line 263
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/compat/CompatUtils;->isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 262
    :cond_1
    return-void
.end method
