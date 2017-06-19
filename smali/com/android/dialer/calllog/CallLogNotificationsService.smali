.class public Lcom/android/dialer/calllog/CallLogNotificationsService;
.super Landroid/app/IntentService;
.source "CallLogNotificationsService.java"


# instance fields
.field private mVoicemailQueryHandler:Lcom/android/dialer/calllog/VoicemailQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "CallLogNotificationsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static updateVoicemailNotifications(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.dialer.calllog.UPDATE_VOICEMAIL_NOTIFICATIONS"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    if-eqz p1, :cond_0

    .line 172
    const-string/jumbo v1, "NEW_VOICEMAIL_URI"

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 164
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string/jumbo v4, "CallLogNotificationsService"

    const-string/jumbo v5, "onHandleIntent: could not handle null intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_0
    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    invoke-static {p0, v4}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.android.dialer.calllog.ACTION_MARK_NEW_VOICEMAILS_AS_OLD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogNotificationsService;->mVoicemailQueryHandler:Lcom/android/dialer/calllog/VoicemailQueryHandler;

    if-nez v4, :cond_2

    .line 126
    new-instance v4, Lcom/android/dialer/calllog/VoicemailQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogNotificationsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/dialer/calllog/VoicemailQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/android/dialer/calllog/CallLogNotificationsService;->mVoicemailQueryHandler:Lcom/android/dialer/calllog/VoicemailQueryHandler;

    .line 128
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogNotificationsService;->mVoicemailQueryHandler:Lcom/android/dialer/calllog/VoicemailQueryHandler;

    invoke-virtual {v4}, Lcom/android/dialer/calllog/VoicemailQueryHandler;->markNewVoicemailsAsOld()V

    .line 112
    :goto_0
    return-void

    .line 123
    :cond_3
    const-string/jumbo v4, "com.android.dialer.calllog.UPDATE_VOICEMAIL_NOTIFICATIONS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    const-string/jumbo v4, "NEW_VOICEMAIL_URI"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 132
    .local v3, "voicemailUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/DefaultVoicemailNotifier;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/dialer/calllog/DefaultVoicemailNotifier;->updateNotification(Landroid/net/Uri;)V

    goto :goto_0

    .line 123
    .end local v3    # "voicemailUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v4, "com.android.dialer.calllog.UPDATE_MISSED_CALL_NOTIFICATIONS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 135
    const-string/jumbo v4, "MISSED_CALL_COUNT"

    .line 136
    const/4 v5, -0x1

    .line 135
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "count":I
    const-string/jumbo v4, "MISSED_CALL_NUMBER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "number":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/MissedCallNotifier;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/android/dialer/calllog/MissedCallNotifier;->updateMissedCallNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v1    # "count":I
    .end local v2    # "number":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "com.android.dialer.calllog.ACTION_MARK_NEW_MISSED_CALLS_AS_OLD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 141
    invoke-static {p0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 123
    :cond_6
    const-string/jumbo v4, "com.android.dialer.calllog.CALL_BACK_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 144
    invoke-static {p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/MissedCallNotifier;

    move-result-object v4

    .line 145
    const-string/jumbo v5, "MISSED_CALL_NUMBER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Lcom/android/dialer/calllog/MissedCallNotifier;->callBackFromMissedCall(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_7
    const-string/jumbo v4, "com.android.dialer.calllog.SEND_SMS_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 148
    invoke-static {p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/MissedCallNotifier;

    move-result-object v4

    .line 149
    const-string/jumbo v5, "MISSED_CALL_NUMBER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {v4, v5}, Lcom/android/dialer/calllog/MissedCallNotifier;->sendSmsFromMissedCall(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_8
    const-string/jumbo v4, "CallLogNotificationsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onHandleIntent: could not handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
