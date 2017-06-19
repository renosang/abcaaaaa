.class public Lcom/android/dialer/util/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddToExistingContactIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method public static getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    const/4 v1, -0x1

    .line 136
    invoke-static {v0, p0, v1}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 1
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "phoneNumberType"    # I

    .prologue
    .line 144
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2}, Lcom/android/dialer/util/IntentUtil;->populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 146
    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;II)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "videoState"    # I
    .param p3, "callIntiationType"    # I

    .prologue
    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "com.android.dialer.EXTRA_CALL_INITIATION_TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v2, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string/jumbo v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    :cond_0
    return-object v1
.end method

.method public static getConferenceDialerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ADDPARTICIPANT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "confernece_number_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    return-object v0
.end method

.method public static getNewContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    const/4 v1, -0x1

    .line 116
    invoke-static {v0, p0, v1}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 1
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "phoneNumberType"    # I

    .prologue
    .line 124
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0, p0, p1, p2}, Lcom/android/dialer/util/IntentUtil;->populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 126
    return-object v0
.end method

.method public static getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static isConferDialerEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 168
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v1

    return v1

    .line 170
    .end local v0    # "telephonyMgr":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p3, "phoneNumberType"    # I

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    .line 155
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 157
    :cond_1
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 158
    const-string/jumbo v0, "phone_type"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    :cond_2
    return-void
.end method
