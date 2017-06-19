.class public Lcom/android/contacts/common/vcard/NotificationImportExportListener;
.super Ljava/lang/Object;
.source "NotificationImportExportListener.java"

# interfaces
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field static final DEFAULT_NOTIFICATION_TAG:Ljava/lang/String; = "VCardServiceProgress"

.field static final FAILURE_NOTIFICATION_TAG:Ljava/lang/String; = "VCardServiceFailure"


# instance fields
.field private final SUMMARY_NOTIFICATION:I

.field private final mContext:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mSummaryNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const v0, 0x7ffffffe

    iput v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->SUMMARY_NOTIFICATION:I

    .line 62
    iput-object p1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 64
    const-string/jumbo v0, "notification"

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 302
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    const-string/jumbo v1, "VCardServiceProgress"

    .line 302
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 304
    const/4 v1, 0x1

    .line 302
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 305
    const v1, 0x1080078

    .line 302
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 302
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotificationWithFlags(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructFinishNotificationWithFlags(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 335
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    const-string/jumbo v3, "VCardServiceProgress"

    .line 335
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 335
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 339
    const v3, 0x1080082

    .line 335
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 346
    if-eqz p3, :cond_0

    .line 345
    .end local p3    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, v3, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 335
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 348
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "oneplus.mustShow"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 346
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 364
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    const-string/jumbo v1, "VCardServiceProgress"

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 366
    const/4 v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 368
    const v1, 0x1080078

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 369
    const v1, 0x7f0d01a9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 374
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 373
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 364
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tickerText"    # Ljava/lang/String;
    .param p4, "jobId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "totalCount"    # I
    .param p7, "currentCount"    # I

    .prologue
    .line 244
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/contacts/common/vcard/CancelActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 246
    const-string/jumbo v7, "invalidscheme"

    .line 245
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 247
    const-string/jumbo v7, "invalidauthority"

    .line 245
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 248
    const-string/jumbo v7, "job_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 249
    const-string/jumbo v7, "display_name"

    .line 245
    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 250
    const-string/jumbo v7, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 251
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 254
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 256
    const-string/jumbo v7, "VCardServiceProgress"

    .line 255
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 257
    const/4 v6, -0x1

    move/from16 v0, p6

    if-ne v0, v6, :cond_1

    const/4 v6, 0x1

    .line 255
    :goto_0
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v7, v0, v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 255
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 261
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    .line 262
    const v6, 0x1080081

    .line 255
    :goto_1
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 264
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 255
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 265
    if-lez p6, :cond_0

    .line 267
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v6

    move/from16 v0, p7

    int-to-double v8, v0

    move/from16 v0, p6

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "percentage":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 270
    .end local v4    # "percentage":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    return-object v6

    .line 257
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 263
    :cond_2
    const v6, 0x1080088

    goto :goto_1
.end method

.method private constructSummaryNotification(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 279
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mSummaryNotification:Landroid/app/Notification;

    if-nez v1, :cond_0

    .line 280
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 284
    if-ne p2, v4, :cond_1

    .line 285
    const v1, 0x1080082

    .line 281
    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mSummaryNotification:Landroid/app/Notification;

    .line 288
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v2, "VCardServiceProgress"

    .line 289
    iget-object v3, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mSummaryNotification:Landroid/app/Notification;

    .line 288
    const v4, 0x7ffffffe

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 278
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_0
    return-void

    .line 286
    .restart local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_1
    const v1, 0x1080089

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    return v2
.end method

.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 6
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 208
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructSummaryNotification(Landroid/content/Context;I)V

    .line 211
    if-ne p2, v3, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0d019f

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "description":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 215
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    iget v4, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 206
    return-void

    .line 213
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/common/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0d0193

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "description":Ljava/lang/String;
    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 379
    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 202
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f0d01a6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v7, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 185
    iget-object v3, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    .line 184
    invoke-static {v0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0d01a5

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructSummaryNotification(Landroid/content/Context;I)V

    .line 192
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 195
    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    .line 194
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 196
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 183
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 6
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructSummaryNotification(Landroid/content/Context;I)V

    .line 174
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v3, v3, [Ljava/lang/Object;

    .line 175
    iget-object v4, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 174
    const v4, 0x7f0d019f

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 178
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    invoke-virtual {v2, v3, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 169
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 165
    iget-object v1, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v2, 0x7f0d01a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 12
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "createdUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 134
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v7, v10, [Ljava/lang/Object;

    .line 135
    iget-object v8, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 134
    const v8, 0x7f0d019e

    invoke-virtual {v6, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "description":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 138
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 140
    .local v4, "rawContactId":J
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 141
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 140
    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 139
    invoke-static {v6, v7}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v4    # "rawContactId":J
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, v10}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructSummaryNotification(Landroid/content/Context;I)V

    .line 154
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v6, v1, v11, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v3

    .line 156
    .local v3, "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v7, "VCardServiceProgress"

    invoke-virtual {v6, v7, p2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 133
    return-void

    .line 144
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 10
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "totalCountString":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 116
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 117
    aput-object v9, v4, v1

    .line 118
    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 115
    const v5, 0x7f0d01ad

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v4, v1, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 119
    const v5, 0x7f0d019b

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructSummaryNotification(Landroid/content/Context;I)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    move v4, p2

    move v6, p5

    move v7, p4

    .line 126
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 129
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 108
    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 80
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    iget-object v5, p1, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 82
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v5, v3, v7

    const v4, 0x7f0d01a0

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "message":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructSummaryNotification(Landroid/content/Context;I)V

    .line 101
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 102
    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    .line 101
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 103
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 76
    return-void

    .line 84
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0d01a7

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .restart local v5    # "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 86
    const v3, 0x7f0d01a1

    .line 85
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method
