.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$1;,
        Lcom/android/incallui/StatusBarNotifier$2;,
        Lcom/android/incallui/StatusBarNotifier$NotificationInfos;
    }
.end annotation


# static fields
.field private static final VIBRATE_PATTERN:[J


# instance fields
.field isBroadcastReceiverRegister:Z

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mCallId:Ljava/lang/String;

.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:I

.field private final mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

.field private mIsUIShowingStateChange:Z

.field private mIsUiShowing:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRingtone:Landroid/net/Uri;

.field private mSavedContent:Ljava/lang/String;

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;

.field mScreenOnReceiver:Landroid/content/BroadcastReceiver;

.field private mShowHighLight:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Lcom/android/incallui/StatusBarNotifier;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "originalCall"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/StatusBarNotifier;Z)V
    .locals 0
    .param p1, "showMessageReject"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/StatusBarNotifier;->showHighLight(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/StatusBarNotifier;->VIBRATE_PATTERN:[J

    .line 96
    return-void

    .line 109
    nop

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 118
    iput v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 119
    iput v4, p0, Lcom/android/incallui/StatusBarNotifier;->mVideoState:I

    .line 120
    iput v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 121
    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUiShowing:Z

    .line 138
    iput-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    .line 140
    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mBuilder:Landroid/app/Notification$Builder;

    .line 141
    iput-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    .line 148
    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    .line 167
    iput-boolean v4, p0, Lcom/android/incallui/StatusBarNotifier;->isBroadcastReceiverRegister:Z

    .line 169
    new-instance v0, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 184
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 185
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 187
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 186
    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 189
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 188
    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 191
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 193
    new-instance v0, Lcom/android/incallui/ringtone/DialerRingtoneManager;

    .line 194
    new-instance v1, Lcom/android/incallui/ringtone/InCallTonePlayer;

    new-instance v2, Lcom/android/incallui/ringtone/ToneGeneratorFactory;

    invoke-direct {v2}, Lcom/android/incallui/ringtone/ToneGeneratorFactory;-><init>()V

    new-instance v3, Lcom/android/incallui/async/PausableExecutorImpl;

    invoke-direct {v3}, Lcom/android/incallui/async/PausableExecutorImpl;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/incallui/ringtone/InCallTonePlayer;-><init>(Lcom/android/incallui/ringtone/ToneGeneratorFactory;Lcom/android/incallui/async/PausableExecutor;)V

    .line 195
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 193
    invoke-direct {v0, v1, v2}, Lcom/android/incallui/ringtone/DialerRingtoneManager;-><init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    .line 196
    iput v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 181
    return-void
.end method

.method private addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 967
    const-string/jumbo v1, "Will show \"accept upgrade\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ACCEPT_VIDEO_UPGRADE_REQUEST"

    .line 969
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 971
    .local v0, "acceptVideoPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 966
    return-void
.end method

.method private addAnswerAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 906
    const-string/jumbo v1, "Will show \"answer\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    .line 908
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 911
    .local v0, "answerVoicePendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 910
    const v2, 0x7f02022c

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 905
    return-void
.end method

.method private addAnswerAction(Landroid/widget/RemoteViews;I)V
    .locals 7
    .param p1, "rView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1276
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    .line 1275
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1277
    .local v6, "answerVoicePendingIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0e01b2

    const v3, 0x7f02022c

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 1278
    invoke-virtual {p1, p2, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1274
    return-void
.end method

.method private addDismissAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 927
    const-string/jumbo v1, "Will show \"dismiss\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 932
    .local v0, "declinePendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 931
    const v2, 0x7f02022d

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 926
    return-void
.end method

.method private addDismissAction(Landroid/widget/RemoteViews;I)V
    .locals 7
    .param p1, "rView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1290
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1291
    .local v6, "declinePendingIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0e0178

    const v3, 0x7f02022d

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 1292
    invoke-virtual {p1, p2, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1288
    return-void
.end method

.method private addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 976
    const-string/jumbo v1, "Will show \"dismiss upgrade\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_DECLINE_VIDEO_UPGRADE_REQUEST"

    .line 978
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 980
    .local v0, "declineVideoPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 975
    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 937
    const-string/jumbo v1, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 942
    .local v0, "hangupPendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 941
    const v2, 0x7f0200d3

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 936
    return-void
.end method

.method private addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    .line 732
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-wide v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    const-string/jumbo v0, "tel"

    .line 736
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private addRejectMessageAction(Landroid/widget/RemoteViews;I)V
    .locals 7
    .param p1, "rView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 1283
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL_BY_MESSAGE"

    .line 1282
    invoke-static {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1284
    .local v6, "rejectMsgPendingIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0e01b1

    const v3, 0x7f02022e

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 1285
    invoke-virtual {p1, p2, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1281
    return-void
.end method

.method private addVideoCallAction(Landroid/app/Notification$Builder;I)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "videoState"    # I

    .prologue
    .line 947
    const-string/jumbo v1, "Will show \"video\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    .line 949
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 951
    .local v0, "answerVideoPendingIntent":Landroid/app/PendingIntent;
    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->toVideoIcon(I)I

    move-result v1

    .line 952
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0d03b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 951
    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 946
    return-void
.end method

.method private addVoiceAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 957
    const-string/jumbo v1, "Will show \"voice\" action in the incoming call Notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    .line 959
    invoke-static {v1, v2}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 962
    .local v0, "answerVoicePendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 961
    const v2, 0x7f0200d7

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 956
    return-void
.end method

.method private applyLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    const/high16 v1, 0x7f0e0000

    .line 1323
    const-string/jumbo v0, "setBackgroundResource"

    .line 1324
    const v4, 0x7f02025b

    .line 1323
    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1330
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a02db

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1331
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 1328
    const/4 v2, 0x1

    move-object v0, p1

    move v6, v3

    .line 1326
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 1334
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1335
    const v3, 0x7f0b02d5

    .line 1334
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "padding":I
    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1336
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1322
    return-void
.end method

.method private buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 41
    .param p1, "originalCall"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 406
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v28

    .line 407
    .local v28, "call":Lcom/android/incallui/Call;
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 411
    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    .line 413
    .local v9, "callState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "callState: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 419
    .local v7, "largeIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12, v13}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;J)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "content":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getWifiQuality()I

    move-result v40

    .line 421
    .local v40, "wifiQualityValue":I
    if-eqz v40, :cond_f

    .line 422
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->getVoWiFiQualityIcon(I)I

    move-result v5

    .line 423
    .local v5, "iconResId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->getVoWiFiQualityText(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, "contentTitle":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v4

    .line 430
    const/4 v10, 0x3

    .line 429
    if-ne v4, v10, :cond_10

    const/16 v34, 0x1

    .line 432
    .local v34, "isVideoUpgradeRequest":Z
    :goto_1
    const/4 v4, 0x4

    if-eq v9, v4, :cond_0

    const/4 v4, 0x5

    if-ne v9, v4, :cond_11

    .line 434
    :cond_0
    const/4 v11, 0x2

    .line 445
    .local v11, "notificationType":I
    :goto_2
    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v10

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    move-object/from16 v4, p0

    .line 444
    invoke-direct/range {v4 .. v12}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;IIILandroid/net/Uri;)Z

    move-result v29

    .line 447
    .local v29, "dataChanged":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    if-nez v4, :cond_1

    .line 448
    invoke-static/range {v28 .. v28}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v28, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v10, 0x3

    if-ne v4, v10, :cond_12

    .line 454
    :cond_1
    if-eqz v7, :cond_2

    .line 455
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/incallui/StatusBarNotifier;->getRoundedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 459
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v33

    .line 461
    .local v33, "isMultiSimDevice":Z
    if-eqz v33, :cond_3

    .line 462
    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/Call;->getPhoneAccountLabel()Ljava/lang/CharSequence;

    move-result-object v30

    .line 463
    .local v30, "displayName":Ljava/lang/CharSequence;
    if-eqz v30, :cond_3

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, " ("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 474
    .end local v30    # "displayName":Ljava/lang/CharSequence;
    :cond_3
    new-instance v37, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v37, "publicBuilder":Landroid/app/Notification$Builder;
    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 476
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0a02db

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 475
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 478
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12, v13}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;J)Ljava/lang/String;

    move-result-object v10

    .line 475
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v9, v2}, Lcom/android/incallui/StatusBarNotifier;->setNotificationWhen(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v27

    .line 486
    .local v27, "builder":Landroid/app/Notification$Builder;
    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v32

    .line 490
    .local v32, "inCallPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 491
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v36

    .line 497
    .local v36, "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->hasInCallUIStarted()Z

    move-result v31

    .line 498
    .local v31, "hasInCallUIStarted":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hasInCallUIStarted: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    if-nez v31, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/StatusBarNotifier;->mIsUiShowing:Z

    if-eqz v4, :cond_13

    .line 509
    :cond_4
    :goto_3
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 510
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 511
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 512
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f0a02db

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 515
    if-eqz v34, :cond_15

    .line 516
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->addDismissUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->addAcceptUpgradeRequestAction(Landroid/app/Notification$Builder;)V

    .line 523
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->addPersonReference(Landroid/app/Notification$Builder;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)V

    .line 526
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/StatusBarNotifier;->constructHighLightNotification(Landroid/app/Notification$Builder;I)V

    .line 527
    const-string/jumbo v4, "StatusBarNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "the ui state is: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/incallui/StatusBarNotifier;->mIsUiShowing:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/16 v4, 0x20

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v14

    .line 533
    .local v14, "showMessage":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/StatusBarNotifier;->mIsUiShowing:Z

    if-eqz v4, :cond_16

    .line 534
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->shouldStartUIForContact()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isUIShowing()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_5
    const/16 v38, 0x0

    .line 538
    .local v38, "showHighLight":Z
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mShowHighLight: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, " showHighLight: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    if-eqz v4, :cond_18

    move/from16 v39, v38

    .line 542
    :goto_6
    if-nez v38, :cond_6

    .line 543
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    .line 546
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    if-eqz v39, :cond_7

    .line 548
    move-object/from16 v0, v27

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 549
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    .line 557
    :cond_7
    invoke-virtual/range {v27 .. v27}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v35

    .line 559
    .local v35, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4, v9, v10}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->shouldPlayRingtone(ILandroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 560
    move-object/from16 v0, v35

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 561
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    move-object/from16 v0, v35

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 562
    new-instance v25, Landroid/media/AudioAttributes$Builder;

    invoke-direct/range {v25 .. v25}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 563
    .local v25, "audioAttributes":Landroid/media/AudioAttributes$Builder;
    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 564
    const/4 v4, 0x6

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 565
    invoke-virtual/range {v25 .. v25}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->shouldVibrate(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 567
    sget-object v4, Lcom/android/incallui/StatusBarNotifier;->VIBRATE_PATTERN:[J

    move-object/from16 v0, v35

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 570
    .end local v25    # "audioAttributes":Landroid/media/AudioAttributes$Builder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    invoke-virtual {v4, v9}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->shouldPlayCallWaitingTone(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 571
    const-string/jumbo v4, "Playing call waiting tone"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    invoke-virtual {v4}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->playCallWaitingTone()V

    .line 576
    :cond_9
    const/4 v4, 0x4

    if-eq v9, v4, :cond_a

    const/4 v4, 0x5

    if-ne v9, v4, :cond_b

    .line 577
    :cond_a
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v18, v0

    move-object/from16 v13, p0

    move v15, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v20, v6

    invoke-direct/range {v13 .. v20}, Lcom/android/incallui/StatusBarNotifier;->buildNotificationContentView(ZILandroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v26

    .line 578
    .local v26, "bigView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 579
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 583
    .end local v26    # "bigView":Landroid/widget/RemoteViews;
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eq v4, v11, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v4, :cond_c

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Previous notification already showing - cancelling "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 584
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v4, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 589
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Displaying notification for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    const-string/jumbo v10, " showOnStatusBar: "

    .line 589
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    invoke-virtual/range {v35 .. v35}, Landroid/app/Notification;->showOnStatusBar()Z

    move-result v10

    .line 589
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, v35

    invoke-virtual {v4, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->registerScreenOnBroadcastReceiver()V

    .line 595
    if-nez v39, :cond_d

    if-eqz v38, :cond_d

    .line 596
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/StatusBarNotifier;->mBuilder:Landroid/app/Notification$Builder;

    .line 597
    new-instance v15, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v22, v0

    move-object/from16 v16, p0

    move/from16 v17, v9

    move/from16 v18, v11

    move/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v24, v6

    invoke-direct/range {v15 .. v24}, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;-><init>(Lcom/android/incallui/StatusBarNotifier;IIILandroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    .line 598
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v14, v1}, Lcom/android/incallui/StatusBarNotifier;->updateHighLight(ZZ)V

    .line 602
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 402
    return-void

    .line 408
    .end local v5    # "iconResId":I
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v8    # "contentTitle":Ljava/lang/String;
    .end local v9    # "callState":I
    .end local v11    # "notificationType":I
    .end local v14    # "showMessage":Z
    .end local v27    # "builder":Landroid/app/Notification$Builder;
    .end local v29    # "dataChanged":Z
    .end local v31    # "hasInCallUIStarted":Z
    .end local v32    # "inCallPendingIntent":Landroid/app/PendingIntent;
    .end local v33    # "isMultiSimDevice":Z
    .end local v34    # "isVideoUpgradeRequest":Z
    .end local v35    # "notification":Landroid/app/Notification;
    .end local v36    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .end local v37    # "publicBuilder":Landroid/app/Notification$Builder;
    .end local v38    # "showHighLight":Z
    .end local v40    # "wifiQualityValue":I
    :cond_e
    return-void

    .line 425
    .restart local v6    # "content":Ljava/lang/String;
    .restart local v7    # "largeIcon":Landroid/graphics/Bitmap;
    .restart local v9    # "callState":I
    .restart local v40    # "wifiQualityValue":I
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v5

    .restart local v5    # "iconResId":I
    goto/16 :goto_0

    .line 429
    .restart local v8    # "contentTitle":Ljava/lang/String;
    :cond_10
    const/16 v34, 0x0

    .restart local v34    # "isVideoUpgradeRequest":Z
    goto/16 :goto_1

    .line 432
    :cond_11
    if-nez v34, :cond_0

    .line 436
    const/4 v11, 0x1

    .restart local v11    # "notificationType":I
    goto/16 :goto_2

    .line 449
    .restart local v29    # "dataChanged":Z
    :cond_12
    if-nez v29, :cond_1

    .line 450
    return-void

    .line 500
    .restart local v27    # "builder":Landroid/app/Notification$Builder;
    .restart local v31    # "hasInCallUIStarted":Z
    .restart local v32    # "inCallPendingIntent":Landroid/app/PendingIntent;
    .restart local v33    # "isMultiSimDevice":Z
    .restart local v36    # "pendingAccountSelectionCall":Lcom/android/incallui/Call;
    .restart local v37    # "publicBuilder":Landroid/app/Notification$Builder;
    :cond_13
    const/4 v4, 0x2

    if-ne v11, v4, :cond_4

    .line 501
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 502
    if-eqz v36, :cond_4

    .line 503
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    .line 505
    const-string/jumbo v4, "call"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 520
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v9, v2}, Lcom/android/incallui/StatusBarNotifier;->createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V

    goto/16 :goto_4

    .line 533
    .restart local v14    # "showMessage":Z
    :cond_16
    const/16 v38, 0x1

    .restart local v38    # "showHighLight":Z
    goto/16 :goto_5

    .line 534
    .end local v38    # "showHighLight":Z
    :cond_17
    const/16 v38, 0x1

    .restart local v38    # "showHighLight":Z
    goto/16 :goto_5

    .line 539
    :cond_18
    const/16 v39, 0x0

    .local v39, "updateDirectly":Z
    goto/16 :goto_6
.end method

.method private buildNotificationContentView(ZILandroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "showMsgReject"    # Z
    .param p2, "smallIcon"    # I
    .param p3, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "mWhen"    # J
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 1213
    const v6, 0x7f0400a7

    .line 1221
    .local v6, "layoutId":I
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1224
    .local v0, "bigView":Landroid/widget/RemoteViews;
    const/high16 v1, 0x7f0e0000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1225
    const/high16 v1, 0x7f0e0000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1226
    const/high16 v1, 0x7f0e0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1227
    const-string/jumbo v1, "setBackgroundResource"

    const/high16 v2, 0x7f0e0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1228
    const v1, 0x7f0e0183

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1229
    const-string/jumbo v1, "setBackgroundResource"

    const v2, 0x7f0e0183

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1230
    const v1, 0x7f0e0183

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1231
    const/high16 v1, 0x7f0e0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1232
    const v1, 0x7f0e0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1233
    const v1, 0x7f0e013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1235
    if-eqz p3, :cond_1

    .line 1236
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1237
    const-string/jumbo v1, "setBackgroundResource"

    const/high16 v2, 0x7f0e0000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1238
    const v1, 0x7f0e0183

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1239
    const v1, 0x7f0e0183

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1240
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->processSmallRightIcon(Landroid/widget/RemoteViews;)V

    .line 1248
    :goto_0
    const v1, 0x7f0e0060

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1249
    const-string/jumbo v1, "setTime"

    const v2, 0x7f0e0180

    invoke-virtual {v0, v2, v1, p5, p6}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1250
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-nez v1, :cond_2

    const/16 v1, 0x8

    :goto_1
    const v2, 0x7f0e0180

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1251
    const v1, 0x7f0e013a

    invoke-virtual {v0, v1, p7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1253
    const v1, 0x7f0e0178

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->addDismissAction(Landroid/widget/RemoteViews;I)V

    .line 1255
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_2
    const v2, 0x7f0e01b1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1256
    if-eqz p1, :cond_0

    .line 1257
    const v1, 0x7f0e01b1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->addRejectMessageAction(Landroid/widget/RemoteViews;I)V

    .line 1259
    :cond_0
    const v1, 0x7f0e01b2

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->addAnswerAction(Landroid/widget/RemoteViews;I)V

    .line 1271
    return-object v0

    .line 1242
    :cond_1
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1243
    const/high16 v1, 0x7f0e0000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1244
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->processSmallIconAsLarge(Landroid/widget/RemoteViews;)V

    .line 1245
    const v1, 0x7f0e0183

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1250
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1255
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 279
    :cond_0
    iget v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v0, :cond_1

    .line 280
    const-string/jumbo v0, "cancelInCall()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 283
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->resetNotificationState()V

    .line 284
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unRegisterScreenOnBroadcastReceiver()V

    .line 287
    :cond_1
    iput v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 274
    return-void
.end method

.method private checkForChangeAndSaveData(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;IIILandroid/net/Uri;)Z
    .locals 3
    .param p1, "icon"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p4, "contentTitle"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "videoState"    # I
    .param p7, "notificationType"    # I
    .param p8, "ringtone"    # Landroid/net/Uri;

    .prologue
    .line 662
    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 663
    :cond_0
    if-nez p4, :cond_6

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    .line 666
    .local v0, "contentTitleChanged":Z
    :goto_0
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-eq v2, p5, :cond_7

    .line 666
    :cond_1
    const/4 v1, 0x1

    .line 673
    .local v1, "retval":Z
    :goto_1
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eq v2, p7, :cond_3

    .line 674
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-nez v2, :cond_2

    .line 675
    const-string/jumbo v2, "Showing notification for first time."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    :cond_2
    const/4 v1, 0x1

    .line 680
    :cond_3
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 681
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:Ljava/lang/String;

    .line 682
    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 683
    iput p6, p0, Lcom/android/incallui/StatusBarNotifier;->mVideoState:I

    .line 684
    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 685
    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 686
    iput-object p8, p0, Lcom/android/incallui/StatusBarNotifier;->mRingtone:Landroid/net/Uri;

    .line 688
    if-eqz v1, :cond_4

    .line 689
    const-string/jumbo v2, "Data changed.  Showing notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    :cond_4
    return v1

    .line 662
    .end local v0    # "contentTitleChanged":Z
    .end local v1    # "retval":Z
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "contentTitleChanged":Z
    goto :goto_0

    .line 663
    .end local v0    # "contentTitleChanged":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "contentTitleChanged":Z
    goto :goto_0

    .line 667
    :cond_7
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mVideoState:I

    if-ne v2, p6, :cond_1

    .line 668
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v2, p3, :cond_1

    .line 666
    if-nez v0, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mRingtone:Landroid/net/Uri;

    invoke-static {v2, p8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x0

    .restart local v1    # "retval":Z
    goto :goto_1

    .end local v1    # "retval":Z
    :cond_8
    const/4 v1, 0x1

    .restart local v1    # "retval":Z
    goto :goto_1
.end method

.method static clearAllCallNotifications(Landroid/content/Context;)V
    .locals 3
    .param p0, "backupContext"    # Landroid/content/Context;

    .prologue
    .line 295
    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 296
    const-string/jumbo v2, "Something terrible happened. Clear all InCall notifications"

    .line 295
    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 300
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 301
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 294
    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "- Setting fullScreenIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->shouldStartUIForContact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 998
    invoke-virtual {p1, p2, v2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 1029
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 1030
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 1031
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1032
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1033
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v1

    .line 1035
    .local v1, "isCallWaiting":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "configureFullScreenIntent: call-waiting or dsda incoming call! force relaunch. Active sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1037
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v4

    .line 1036
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 988
    :cond_1
    return-void

    .end local v1    # "isCallWaiting":Z
    :cond_2
    move v1, v2

    .line 1030
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1032
    goto :goto_0

    .line 1031
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private constructHighLightNotification(Landroid/app/Notification$Builder;I)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "iconResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1119
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 1121
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setIconOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1122
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setIntentOnStatusBar(Landroid/content/Intent;)Landroid/app/Notification$Builder;

    .line 1123
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1124
    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1125
    const v1, 0x7f0d0323

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setTextOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1126
    const v1, -0xfb520a

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1118
    return-void
.end method

.method private createIncomingCallNotification(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "state"    # I
    .param p3, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 607
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->setNotificationWhen(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V

    .line 610
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 611
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 613
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 612
    :cond_2
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    .line 610
    if-nez v0, :cond_0

    .line 614
    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 615
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addDismissAction(Landroid/app/Notification$Builder;)V

    .line 616
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 617
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addVoiceAction(Landroid/app/Notification$Builder;)V

    .line 618
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/incallui/StatusBarNotifier;->addVideoCallAction(Landroid/app/Notification$Builder;I)V

    goto :goto_0

    .line 620
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->addAnswerAction(Landroid/app/Notification$Builder;)V

    goto :goto_0
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1057
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 1065
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1067
    .local v0, "inCallPendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private static createNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1075
    new-instance v0, Landroid/content/Intent;

    .line 1076
    const-class v1, Lcom/android/incallui/NotificationBroadcastReceiver;

    .line 1075
    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1077
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 1372
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1373
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1374
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1375
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1376
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1377
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1378
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1379
    return-object v0

    .line 1374
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 2
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v1, 0x0

    .line 889
    if-nez p1, :cond_0

    .line 890
    return-object v1

    .line 892
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 893
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 894
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 896
    :cond_1
    if-nez v0, :cond_2

    .line 897
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 899
    :cond_2
    if-nez v0, :cond_3

    .line 900
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 902
    :cond_3
    return-object v0
.end method

.method private getContentString(Lcom/android/incallui/Call;J)Ljava/lang/String;
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "userType"    # J

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v3, 0x1

    .line 827
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 828
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 830
    .local v0, "isIncomingOrWaiting":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 831
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 833
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 834
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getChildNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const v4, 0x7f0d0409

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v0    # "isIncomingOrWaiting":Z
    :cond_0
    move v0, v3

    .line 827
    goto :goto_0

    :cond_1
    move v0, v4

    .line 828
    goto :goto_0

    .line 835
    .restart local v0    # "isIncomingOrWaiting":Z
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCallSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isCallSubjectSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 836
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCallSubject()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 840
    :cond_3
    const v2, 0x7f0d039e

    .line 841
    .local v2, "resId":I
    invoke-virtual {p1, v7}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 842
    const v2, 0x7f0d03a0

    .line 845
    :cond_4
    if-eqz v0, :cond_a

    .line 846
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isIncomingConfCall()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 847
    const v2, 0x7f0d036b

    .line 863
    :cond_5
    :goto_1
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    .line 864
    .local v1, "isWorkCall":Z
    const-wide/16 v4, 0x1

    cmp-long v3, p2, v4

    if-eqz v3, :cond_6

    if-eqz v1, :cond_7

    .line 865
    :cond_6
    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->getWorkStringFromPersonalString(I)I

    move-result v2

    .line 868
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 848
    .end local v1    # "isWorkCall":Z
    :cond_8
    invoke-virtual {p1, v7}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 849
    const v2, 0x7f0d03a5

    goto :goto_1

    .line 851
    :cond_9
    const v2, 0x7f0d03a3

    goto :goto_1

    .line 853
    :cond_a
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v7, :cond_b

    .line 854
    const v2, 0x7f0d03a2

    goto :goto_1

    .line 855
    :cond_b
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {p1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 856
    :cond_c
    const v2, 0x7f0d039c

    goto :goto_1

    .line 857
    :cond_d
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 858
    const/4 v4, 0x3

    .line 857
    if-ne v3, v4, :cond_5

    .line 859
    const v2, 0x7f0d03a8

    goto :goto_1
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 803
    const/high16 v2, 0x1000000

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 804
    .local v1, "supportsVoicePrivacy":Z
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 805
    if-eqz v1, :cond_0

    .line 806
    const v0, 0x7f0202a5

    .line 820
    .local v0, "resId":I
    :goto_0
    return v0

    .line 808
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02011e

    .restart local v0    # "resId":I
    goto :goto_0

    .line 810
    .end local v0    # "resId":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v2

    .line 811
    const/4 v3, 0x3

    .line 810
    if-ne v2, v3, :cond_2

    .line 812
    const v0, 0x7f020143

    .restart local v0    # "resId":I
    goto :goto_0

    .line 814
    .end local v0    # "resId":I
    :cond_2
    if-eqz v1, :cond_3

    .line 815
    const v0, 0x7f0202a4

    .restart local v0    # "resId":I
    goto :goto_0

    .line 817
    .end local v0    # "resId":I
    :cond_3
    const v0, 0x7f0200d7

    .restart local v0    # "resId":I
    goto :goto_0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    .end local v0    # "largeIcon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iget-object v1, v1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 758
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iget-object v1, v1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/incallui/StatusBarNotifier;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 760
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    return-object v0

    .line 746
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 747
    const v2, 0x7f02015a

    .line 746
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 764
    .end local v0    # "largeIcon":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 765
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    .line 766
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 776
    :cond_3
    :goto_1
    return-object v0

    .line 767
    :cond_4
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 770
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/incallui/StatusBarNotifier;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "largeIcon":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1046
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1047
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1050
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1052
    return-object v0
.end method

.method private getRoundedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 780
    if-nez p1, :cond_0

    .line 781
    return-object v2

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 784
    const v3, 0x1050006

    .line 783
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 785
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 786
    const v3, 0x1050005

    .line 785
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 787
    .local v1, "width":I
    invoke-static {p1, v1, v0}, Lcom/android/contacts/common/util/BitmapUtil;->getRoundedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getVoWiFiQualityIcon(I)I
    .locals 1
    .param p1, "voWifiCallQuality"    # I

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 220
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 212
    :pswitch_1
    const v0, 0x7f0202b8

    return v0

    .line 215
    :pswitch_2
    const v0, 0x7f0202b7

    return v0

    .line 218
    :pswitch_3
    const v0, 0x7f0202b9

    return v0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getVoWiFiQualityText(I)Ljava/lang/String;
    .locals 2
    .param p1, "voWifiCallQuality"    # I

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 234
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d036e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getWorkStringFromPersonalString(I)I
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 872
    const v0, 0x7f0d039e

    if-ne p0, v0, :cond_0

    .line 873
    const v0, 0x7f0d039f

    return v0

    .line 874
    :cond_0
    const v0, 0x7f0d03a0

    if-ne p0, v0, :cond_1

    .line 875
    const v0, 0x7f0d03a1

    return v0

    .line 876
    :cond_1
    const v0, 0x7f0d03a5

    if-ne p0, v0, :cond_2

    .line 877
    const v0, 0x7f0d03a6

    return v0

    .line 878
    :cond_2
    const v0, 0x7f0d03a3

    if-ne p0, v0, :cond_3

    .line 879
    const v0, 0x7f0d03a4

    return v0

    .line 881
    :cond_3
    return p0
.end method

.method private isScreenInteractive()Z
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private processSmallIconAsLarge(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v3, -0x1

    .line 1318
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 1316
    const/high16 v1, 0x7f0e0000

    const/4 v2, 0x0

    move-object v0, p1

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 1319
    invoke-direct {p0, p1}, Lcom/android/incallui/StatusBarNotifier;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    .line 1315
    return-void
.end method

.method private processSmallRightIcon(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x7f0e0183

    const/4 v3, -0x1

    .line 1299
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 1297
    const/4 v2, 0x0

    move-object v0, p1

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 1303
    const-string/jumbo v0, "setBackgroundResource"

    .line 1304
    const v2, 0x7f02025b

    .line 1302
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1310
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a02db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1311
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 1308
    const/4 v2, 0x1

    move-object v0, p1

    move v6, v3

    .line 1306
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 1295
    return-void
.end method

.method private registerScreenOnBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1353
    iget-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->isBroadcastReceiverRegister:Z

    if-eqz v1, :cond_0

    .line 1354
    return-void

    .line 1356
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->isBroadcastReceiverRegister:Z

    .line 1357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1358
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1359
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1352
    return-void
.end method

.method private resetNotificationState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1169
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mBuilder:Landroid/app/Notification$Builder;

    .line 1171
    iput-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    .line 1172
    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    .line 1173
    iput-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    .line 1168
    return-void
.end method

.method private setNotificationWhen(Lcom/android/incallui/Call;ILandroid/app/Notification$Builder;)V
    .locals 9
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "state"    # I
    .param p3, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 632
    const/4 v6, 0x3

    if-ne p2, v6, :cond_0

    .line 633
    invoke-static {p1}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 644
    :cond_0
    invoke-virtual {p3, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 645
    invoke-virtual {p3, v7}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 630
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 635
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    .line 636
    .local v4, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 638
    .local v2, "elapsedTime":J
    invoke-virtual {p3, v8}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 639
    sub-long v6, v2, v0

    add-long/2addr v6, v4

    invoke-virtual {p3, v6, v7}, Landroid/app/Notification$Builder;->setChronometerBase(J)Landroid/app/Notification$Builder;

    .line 641
    invoke-virtual {p3, v8}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 642
    invoke-virtual {p3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private shouldStartUIForContact()Z
    .locals 2

    .prologue
    .line 1342
    const-string/jumbo v0, "StatusBarNotifier"

    const-string/jumbo v1, "shouldStartUIForContact"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/common/OPExtensionManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/common/OPExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/common/OPExtensionManager;->shouldStartUIForContact()Z

    move-result v0

    return v0
.end method

.method private showHighLight(Z)V
    .locals 11
    .param p1, "showMessageReject"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1177
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    if-eqz v1, :cond_3

    .line 1179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    .line 1181
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 1182
    iput-boolean v10, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    .line 1186
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1187
    .local v9, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget v1, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget v1, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget v3, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->smallIcon:I

    .line 1189
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget-object v4, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget-object v5, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget-wide v6, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->mWhen:J

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget-object v8, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->message:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    .line 1188
    invoke-direct/range {v1 .. v8}, Lcom/android/incallui/StatusBarNotifier;->buildNotificationContentView(ZILandroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1190
    .local v0, "bigView":Landroid/widget/RemoteViews;
    iput-object v0, v9, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1191
    iput-object v0, v9, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1194
    .end local v0    # "bigView":Landroid/widget/RemoteViews;
    :cond_1
    iget v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget v2, v2, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->type:I

    if-eq v1, v2, :cond_2

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Previous notification already showing - cancelling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1196
    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 1195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1200
    :cond_2
    const-string/jumbo v1, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showHighLight() mShowHighLight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mShowHighLight:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1201
    const-string/jumbo v3, " showOnStatusBar: "

    .line 1200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1201
    invoke-virtual {v9}, Landroid/app/Notification;->showOnStatusBar()Z

    move-result v3

    .line 1200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/incallui/InCallPresenter;->setIsFirstUp(Z)V

    .line 1203
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget v2, v2, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->type:I

    invoke-virtual {v1, v2, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1204
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInfos:Lcom/android/incallui/StatusBarNotifier$NotificationInfos;

    iget v1, v1, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->type:I

    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 1176
    .end local v9    # "notification":Landroid/app/Notification;
    :cond_3
    return-void
.end method

.method private showNotification(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 359
    :cond_0
    const/4 v0, 0x1

    .line 364
    .local v0, "isGeocoderLocationNeeded":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotification isGeocoderLocationNeeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 369
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 376
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v2, Lcom/android/incallui/StatusBarNotifier$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/StatusBarNotifier$3;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 358
    return-void

    .line 361
    .end local v0    # "isGeocoderLocationNeeded":Z
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isGeocoderLocationNeeded":Z
    goto :goto_0

    .end local v0    # "isGeocoderLocationNeeded":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isGeocoderLocationNeeded":Z
    goto :goto_0
.end method

.method private unRegisterScreenOnBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->isBroadcastReceiverRegister:Z

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1366
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->isBroadcastReceiverRegister:Z

    .line 1362
    return-void
.end method

.method private updateCallStatusBar(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 335
    return-void
.end method

.method private updateHighLight(ZZ)V
    .locals 6
    .param p1, "showMsgReject"    # Z
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1133
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isScreenInteractive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    return-void

    .line 1138
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1139
    .local v1, "updateMsg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1140
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1141
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1142
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getIsFirstUp()Z

    move-result v0

    .line 1143
    .local v0, "isFirstUp":Z
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const/16 v2, 0xc8

    :goto_0
    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1132
    .end local v0    # "isFirstUp":Z
    :cond_1
    return-void

    .line 1143
    .restart local v0    # "isFirstUp":Z
    :cond_2
    const/16 v2, 0x1f4

    goto :goto_0
.end method

.method private updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 311
    const-string/jumbo v1, "updateInCallNotification..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 315
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;)V

    .line 320
    :goto_0
    const-string/jumbo v1, "updateInCallNotification end..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->updateCallStatusBar(Lcom/android/incallui/Call;)V

    .line 310
    :cond_0
    return-void

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelNotification()V

    goto :goto_0
.end method


# virtual methods
.method getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 700
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 706
    :cond_1
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iget-object v2, v2, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    :cond_2
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 712
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 713
    const-string/jumbo v0, ""

    .line 718
    .local v0, "contactNumberDisplayed":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    return-object v1

    .line 707
    .end local v0    # "contactNumberDisplayed":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iget-object v1, v1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->name:Ljava/lang/String;

    return-object v1

    .line 713
    :cond_4
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 719
    .restart local v0    # "contactNumberDisplayed":Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 720
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 719
    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 724
    .end local v0    # "contactNumberDisplayed":Ljava/lang/String;
    :cond_6
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    return-object v1
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1082
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mDialerRingtoneManager:Lcom/android/incallui/ringtone/DialerRingtoneManager;

    invoke-virtual {v0}, Lcom/android/incallui/ringtone/DialerRingtoneManager;->stopCallWaitingTone()V

    .line 1081
    :cond_0
    return-void
.end method

.method public onChildNumberChange()V
    .locals 0

    .prologue
    .line 1110
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    .prologue
    .line 1105
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 1095
    if-nez p1, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1097
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 1094
    :cond_1
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChange oldState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " newState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 206
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 203
    return-void
.end method

.method public updateCallStatusBar(Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/StatusBarNotifier;->updateCallStatusBar(Lcom/android/incallui/Call;)V

    .line 331
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 258
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "uiShowing"    # Z

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUiShowing:Z

    if-eq v0, p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    .line 264
    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUIShowingStateChange:Z

    if-eqz v0, :cond_0

    .line 265
    iput-boolean p3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsUiShowing:Z

    .line 267
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 262
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
