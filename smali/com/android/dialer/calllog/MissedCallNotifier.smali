.class public Lcom/android/dialer/calllog/MissedCallNotifier;
.super Ljava/lang/Object;
.source "MissedCallNotifier.java"


# static fields
.field private static sInstance:Lcom/android/dialer/calllog/MissedCallNotifier;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/calllog/MissedCallNotifier;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/calllog/MissedCallNotifier;)Landroid/app/NotificationManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->getNotificationMgr()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private clearMissedCalls()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/android/dialer/calllog/MissedCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MissedCallNotifier$1;-><init>(Lcom/android/dialer/calllog/MissedCallNotifier;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private closeSystemDialogs(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private configureLedOnNotification(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 283
    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 284
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 282
    return-void
.end method

.method private createCallBackPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.dialer.calllog.CALL_BACK_FROM_MISSED_CALL_NOTIFICATION"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string/jumbo v1, "MISSED_CALL_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "contentIntent":Landroid/content/Intent;
    const-string/jumbo v1, "EXTRA_SHOW_TAB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 248
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createClearMissedCallsPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.dialer.calllog.ACTION_MARK_NEW_MISSED_CALLS_AS_OLD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createSendSmsFromNotificationPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.dialer.calllog.SEND_SMS_FROM_MISSED_CALL_NOTIFICATION"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v1, "MISSED_CALL_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/MissedCallNotifier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/android/dialer/calllog/MissedCallNotifier;->sInstance:Lcom/android/dialer/calllog/MissedCallNotifier;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/dialer/calllog/MissedCallNotifier;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MissedCallNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/dialer/calllog/MissedCallNotifier;->sInstance:Lcom/android/dialer/calllog/MissedCallNotifier;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/MissedCallNotifier;->sInstance:Lcom/android/dialer/calllog/MissedCallNotifier;

    return-object v0
.end method

.method private getNotificationMgr()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public callBackFromMissedCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/MissedCallNotifier;->closeSystemDialogs(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    .line 223
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    .line 224
    new-instance v1, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    invoke-direct {v1, p1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 226
    const/high16 v2, 0x10000000

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public sendSmsFromMissedCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/MissedCallNotifier;->closeSystemDialogs(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    .line 236
    iget-object v0, p0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    .line 237
    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public updateMissedCallNotification(ILjava/lang/String;)V
    .locals 22
    .param p1, "count"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getNewMissedCalls()Ljava/util/List;

    move-result-object v8

    .line 80
    .local v8, "newCalls":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;>;"
    const/16 v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 81
    if-nez v8, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    .line 89
    :cond_1
    if-nez p1, :cond_2

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->clearMissedCalls()V

    .line 92
    return-void

    .line 96
    :cond_2
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    const/16 v17, 0x1

    .line 97
    .local v17, "useCallLog":Z
    :goto_0
    if-eqz v17, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;

    .line 98
    :goto_1
    if-eqz v17, :cond_7

    iget-wide v14, v9, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->dateMs:J

    .line 100
    .local v14, "timeMs":J
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v4, "builder":Landroid/app/Notification$Builder;
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    move-result-object v21

    .line 107
    if-eqz v17, :cond_8

    iget-object v0, v9, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v20, v18

    .line 108
    :goto_3
    if-eqz v17, :cond_9

    iget v0, v9, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->numberPresentation:I

    move/from16 v18, v0

    move/from16 v19, v18

    .line 110
    :goto_4
    if-eqz v17, :cond_a

    iget-object v0, v9, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;->countryIso:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 106
    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v5

    .line 112
    .local v5, "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    iget-wide v0, v5, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 113
    const v16, 0x7f0d0224

    .line 116
    .local v16, "titleResId":I
    :goto_6
    iget-object v6, v5, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 117
    .local v6, "expandedText":Ljava/lang/String;
    new-instance v7, Lcom/android/dialer/contactinfo/ContactPhotoLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0, v5}, Lcom/android/dialer/contactinfo/ContactPhotoLoader;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/ContactInfo;)V

    .line 118
    .local v7, "loader":Lcom/android/dialer/contactinfo/ContactPhotoLoader;
    invoke-virtual {v7}, Lcom/android/dialer/contactinfo/ContactPhotoLoader;->loadPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 119
    .local v12, "photoIcon":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_3

    .line 120
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 129
    .end local v5    # "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    .end local v7    # "loader":Lcom/android/dialer/contactinfo/ContactPhotoLoader;
    .end local v12    # "photoIcon":Landroid/graphics/Bitmap;
    :cond_3
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v11, v0, [J

    .line 133
    .local v11, "pattern":[J
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v13, "publicBuilder":Landroid/app/Notification$Builder;
    const v18, 0x108007f

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0334

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 134
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0d0222

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 134
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 134
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v19

    .line 134
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 144
    const/16 v19, 0x1

    .line 134
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->createClearMissedCallsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v19

    .line 134
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 149
    const v18, 0x108007f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0334

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 149
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 149
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v19

    .line 149
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 156
    const/16 v19, 0x1

    .line 149
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->createClearMissedCallsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v19

    .line 149
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 162
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 149
    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 166
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0d0229

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 167
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 181
    :cond_4
    :goto_8
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 182
    .local v10, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/dialer/calllog/MissedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    .line 184
    const-string/jumbo v18, "MissedCallNotifier"

    const-string/jumbo v19, "Adding missed call notification."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/calllog/MissedCallNotifier;->getNotificationMgr()Landroid/app/NotificationManager;

    move-result-object v18

    const-string/jumbo v19, "MissedCallNotifier"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 73
    return-void

    .line 96
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "expandedText":Ljava/lang/String;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local v11    # "pattern":[J
    .end local v13    # "publicBuilder":Landroid/app/Notification$Builder;
    .end local v14    # "timeMs":J
    .end local v16    # "titleResId":I
    .end local v17    # "useCallLog":Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 97
    .restart local v17    # "useCallLog":Z
    :cond_6
    const/4 v9, 0x0

    .local v9, "newestCall":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    goto/16 :goto_1

    .line 98
    .end local v9    # "newestCall":Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .restart local v14    # "timeMs":J
    goto/16 :goto_2

    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    :cond_8
    move-object/from16 v20, p2

    .line 107
    goto/16 :goto_3

    .line 109
    :cond_9
    const/16 v18, 0x1

    move/from16 v19, v18

    goto/16 :goto_4

    .line 110
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 114
    .restart local v5    # "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_b
    const v16, 0x7f0d0223

    .restart local v16    # "titleResId":I
    goto/16 :goto_6

    .line 123
    .end local v5    # "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    .end local v16    # "titleResId":I
    :cond_c
    const v16, 0x7f0d0225

    .line 125
    .restart local v16    # "titleResId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const v20, 0x7f0d0226

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "expandedText":Ljava/lang/String;
    goto/16 :goto_7

    .line 170
    .restart local v11    # "pattern":[J
    .restart local v13    # "publicBuilder":Landroid/app/Notification$Builder;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0d0227

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/MissedCallNotifier;->createCallBackPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 169
    const v20, 0x7f02011d

    move/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 173
    invoke-static/range {p2 .. p2}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/MissedCallNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0d0228

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/MissedCallNotifier;->createSendSmsFromNotificationPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v19

    .line 174
    const v20, 0x7f020110

    move/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_8
.end method
