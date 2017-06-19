.class public Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# static fields
.field private static sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.dialer.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v1, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    .line 75
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    sget-object v1, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->sInstance:Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    return-object v1
.end method

.method private getNotificationDefaults(Landroid/telecom/PhoneAccountHandle;)I
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->isVoicemailVibrationEnabled(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x2

    .line 248
    :goto_0
    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getNotificationInfo(Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;)Landroid/support/v4/util/Pair;
    .locals 4
    .param p1, "callToNotify"    # Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string/jumbo v1, "VoicemailNotifier"

    const-string/jumbo v2, "getNotificationInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez p1, :cond_0

    .line 217
    const-string/jumbo v1, "VoicemailNotifier"

    const-string/jumbo v2, "callToNotify == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Landroid/support/v4/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->accountComponentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->accountId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 222
    :cond_1
    const-string/jumbo v1, "VoicemailNotifier"

    const-string/jumbo v2, "accountComponentName == null || callToNotify.accountId == null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "tel"

    .line 223
    invoke-static {v1, v2}, Lcom/android/dialer/util/TelecomUtil;->getDefaultOutgoingPhoneAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 225
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v0, :cond_3

    .line 226
    const-string/jumbo v1, "VoicemailNotifier"

    const-string/jumbo v2, "No default phone account found, using default notification ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v1, Landroid/support/v4/util/Pair;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 231
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    .line 232
    .end local v0    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->accountComponentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 233
    iget-object v2, p1, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->accountId:Ljava/lang/String;

    .line 231
    invoke-direct {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 235
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 236
    const-string/jumbo v1, "VoicemailNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhoneAccountHandle.ComponentInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    new-instance v1, Landroid/support/v4/util/Pair;

    .line 242
    invoke-direct {p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 241
    invoke-static {v2, v0}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->getVoicemailRingtoneUri(Landroid/telephony/TelephonyManager;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v2

    .line 243
    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getNotificationDefaults(Landroid/telecom/PhoneAccountHandle;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 240
    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 238
    :cond_4
    const-string/jumbo v1, "VoicemailNotifier"

    const-string/jumbo v2, "PhoneAccountHandle.ComponentInfo: null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public updateNotification(Landroid/net/Uri;)V
    .locals 24
    .param p1, "newCallUri"    # Landroid/net/Uri;

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getNewVoicemails()Ljava/util/List;

    move-result-object v14

    .line 96
    .local v14, "newCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    if-nez v14, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v19

    const-string/jumbo v20, "DefaultVoicemailNotifier"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 104
    return-void

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 110
    .local v16, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 114
    .local v5, "callers":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 117
    .local v12, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 120
    .local v4, "callToNotify":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 121
    .end local v4    # "callToNotify":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    .end local v5    # "callers":Ljava/lang/String;
    .local v9, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 122
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;

    .line 126
    .local v13, "newCall":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->countryIso:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-wide v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->dateMs:J

    move-wide/from16 v22, v0

    .line 125
    invoke-static/range {v19 .. v23}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->shouldBlockVoicemail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 127
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 136
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    move-result-object v19

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 138
    iget v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->numberPresentation:I

    move/from16 v21, v0

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->countryIso:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 137
    invoke-virtual/range {v19 .. v22}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 142
    move-object v5, v11

    .line 149
    :cond_4
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 150
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    iget-object v0, v13, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->voicemailUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_2

    .line 151
    move-object v4, v13

    .local v4, "callToNotify":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    goto/16 :goto_0

    .line 144
    .end local v4    # "callToNotify":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 145
    const/16 v20, 0x0

    aput-object v5, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    const v20, 0x7f0d022b

    .line 144
    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "callers":Ljava/lang/String;
    goto :goto_1

    .line 156
    .end local v5    # "callers":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "newCall":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 157
    return-void

    .line 161
    :cond_7
    const/16 v18, 0x0

    .line 162
    .local v18, "transcription":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 163
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->transcription:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 166
    .end local v18    # "transcription":Ljava/lang/String;
    :cond_8
    if-eqz p1, :cond_9

    if-nez v4, :cond_9

    .line 167
    const-string/jumbo v19, "VoicemailNotifier"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "The new call could not be found in the call log: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    .line 171
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 172
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const v21, 0x7f100002

    .line 171
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 174
    .local v17, "title":Ljava/lang/String;
    const v7, 0x108007e

    .line 176
    .local v7, "icon":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getNotificationInfo(Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;)Landroid/support/v4/util/Pair;

    move-result-object v8

    .line 178
    .local v8, "info":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/net/Uri;Ljava/lang/Integer;>;"
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    const v20, 0x108007e

    .line 178
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 182
    new-instance v20, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v20 .. v20}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v20

    .line 178
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 183
    const v20, 0x7f0a02db

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 178
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 184
    iget-object v0, v8, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/Uri;

    .line 178
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 185
    iget-object v0, v8, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 178
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->createMarkNewVoicemailsAsOldIntent()Landroid/app/PendingIntent;

    move-result-object v20

    .line 178
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 187
    const/16 v20, 0x1

    .line 178
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 192
    .local v15, "notificationBuilder":Landroid/app/Notification$Builder;
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-class v20, Lcom/android/dialer/DialtactsActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v6, "contentIntent":Landroid/content/Intent;
    const-string/jumbo v19, "EXTRA_SHOW_TAB"

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    .line 194
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 198
    if-eqz v4, :cond_a

    .line 202
    iget-object v0, v4, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 201
    const v20, 0x7f0d022c

    .line 199
    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 203
    .local v10, "msg":Ljava/lang/CharSequence;
    invoke-virtual {v15, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 205
    .end local v10    # "msg":Ljava/lang/CharSequence;
    :cond_a
    const-string/jumbo v19, "VoicemailNotifier"

    const-string/jumbo v20, "Creating voicemail notification"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v19

    const-string/jumbo v20, "DefaultVoicemailNotifier"

    .line 207
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v21

    .line 206
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 90
    return-void
.end method
