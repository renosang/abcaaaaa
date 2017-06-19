.class public Lcom/android/incallui/oneplus/record/OPRecorder;
.super Ljava/lang/Object;
.source "OPRecorder.java"

# interfaces
.implements Lcom/android/incallui/oneplus/record/IOPRecorder;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final EXTERNAL_STORAGE_DIR:Ljava/lang/String;

.field private static final RECORD_FILE_DIR:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorState:I

.field private mIsAuto:Z

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRecordState:I

.field private mRecordTimeCost:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecorderFileName:Ljava/lang/String;

.field private mRecorderFileNamePrefix:Ljava/lang/String;

.field private mSupportTime:Z

.field private mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

.field private mToast:Landroid/widget/Toast;

.field private mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/oneplus/record/OPRecorder;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/oneplus/record/OPRecorder;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Record/PhoneRecord/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/oneplus/record/OPRecorder;->RECORD_FILE_DIR:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mSupportTime:Z

    .line 65
    iput v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    .line 66
    iput v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    .line 80
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mSupportTime:Z

    .line 83
    const-string/jumbo v0, "notification"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mNotificationManager:Landroid/app/NotificationManager;

    .line 78
    return-void
.end method

.method private buildNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 384
    move-object v4, p1

    .line 385
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d032e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "summary":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->createSoundRecordListIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 389
    .local v2, "pi":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 391
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 392
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 393
    const v5, 0x7f02025c

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 394
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 395
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 396
    .local v0, "n":Landroid/app/Notification;
    return-object v0
.end method

.method private checkSpaceFull()V
    .locals 10

    .prologue
    .line 470
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 471
    .local v4, "fs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v2, v5

    .line 472
    .local v2, "blocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 473
    .local v0, "blockSize":J
    mul-long v6, v2, v0

    const-wide/32 v8, 0x500000

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 474
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 469
    :cond_0
    return-void
.end method

.method private constructFileName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 275
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "recordTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileNamePrefix:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d032a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileNamePrefix:Ljava/lang/String;

    .line 280
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/incallui/oneplus/record/OPRecorder;->RECORD_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "recordDirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 284
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    return-object v5

    .line 288
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/incallui/oneplus/record/OPRecorder;->RECORD_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".aac"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "recordFilePath":Ljava/lang/String;
    return-object v1
.end method

.method private createSoundRecordListIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.action.RECORDER_SOUND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string/jumbo v2, "fromto"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 405
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private getInfoByErrorState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "resId":I
    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    packed-switch v1, :pswitch_data_0

    .line 265
    :goto_0
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 253
    :pswitch_0
    const v0, 0x7f0d032b

    .line 254
    goto :goto_0

    .line 256
    :pswitch_1
    const v0, 0x7f0d0331

    .line 257
    goto :goto_0

    .line 259
    :pswitch_2
    const v0, 0x7f0d0332

    .line 260
    goto :goto_0

    .line 268
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getIntFromSettingsSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initConfig()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 297
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 298
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 299
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setRecordState(IZ)V

    .line 301
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 302
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->stopTimeCount(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 310
    return-void

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0, v4}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initRecordConfig the exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFileExist fileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v2, 0x0

    return v2

    .line 462
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "recordFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 464
    .local v0, "isFileExist":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFileExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 465
    return v0
.end method

.method private isNotificationEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 479
    iget-boolean v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mIsAuto:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 480
    const-string/jumbo v2, "op_is_ar_notification_enable"

    .line 479
    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->getIntFromSettingsSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 481
    .local v0, "enable":Z
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mIsAuto:Z

    .line 482
    return v0

    .line 479
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0
.end method

.method private isPaused()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRecording()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string/jumbo v0, "OPRecorder"

    invoke-static {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private notifyError(ILjava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/oneplus/record/OPUpdater;->onError(ILjava/lang/String;)V

    .line 408
    :cond_0
    return-void
.end method

.method private notifyMediaDataChange()V
    .locals 5

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 353
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyToUser()V

    .line 350
    return-void
.end method

.method private notifyProgressChanged(J)V
    .locals 3
    .param p1, "timePassed"    # J

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mSupportTime:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/incallui/oneplus/record/OPUpdater;->onProgressChange(IJ)V

    .line 420
    :cond_0
    return-void
.end method

.method private notifyRecordStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    invoke-interface {v0, p1}, Lcom/android/incallui/oneplus/record/OPUpdater;->onStateChange(I)V

    .line 414
    :cond_0
    return-void
.end method

.method private notifyToUser()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 359
    iget v5, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 360
    .local v0, "hasError":Z
    :cond_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->getInfoByErrorState()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "tInfo":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/incallui/oneplus/record/OPRecorder;->showToast(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->isNotificationEnabled()Z

    move-result v3

    .line 363
    .local v3, "noEnabled":Z
    if-eqz v3, :cond_1

    .line 364
    if-eqz v0, :cond_3

    const v2, 0x7f0d032c

    .line 365
    .local v2, "nInfoResId":I
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "nInfo":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecorder;->showNotification(Ljava/lang/String;)V

    .line 358
    .end local v1    # "nInfo":Ljava/lang/String;
    .end local v2    # "nInfoResId":I
    :cond_1
    return-void

    .line 360
    .end local v3    # "noEnabled":Z
    .end local v4    # "tInfo":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d032d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 364
    .restart local v3    # "noEnabled":Z
    .restart local v4    # "tInfo":Ljava/lang/String;
    :cond_3
    const v2, 0x7f0d032d

    .restart local v2    # "nInfoResId":I
    goto :goto_1
.end method

.method private pauseRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 190
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->pause()V

    .line 193
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setRecordState(IZ)V

    .line 194
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->stopTimeCount(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 200
    return-void

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 196
    .local v1, "ex":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " pauseRecording the ill is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v4}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    goto :goto_0
.end method

.method private processError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 236
    invoke-direct {p0, v2, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 225
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 232
    invoke-direct {p0, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->releaseMediaRecorder(Z)Z

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private releaseMediaRecorder(Z)Z
    .locals 5
    .param p1, "resetErrorState"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the mRecordState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    if-eqz v1, :cond_1

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 439
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 440
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 441
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyMediaDataChange()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-direct {p0, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->stopTimeCount(Z)V

    .line 447
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setRecordState(IZ)V

    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 451
    :cond_0
    iput-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 454
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseMediaRecorder has exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-direct {p0, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->stopTimeCount(Z)V

    .line 447
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setRecordState(IZ)V

    .line 448
    if-eqz p1, :cond_2

    .line 449
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 451
    :cond_2
    iput-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 444
    return v3

    .line 445
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    .line 446
    invoke-direct {p0, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->stopTimeCount(Z)V

    .line 447
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setRecordState(IZ)V

    .line 448
    if-eqz p1, :cond_3

    .line 449
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 451
    :cond_3
    iput-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 445
    throw v1
.end method

.method private resetTimeCount()V
    .locals 2

    .prologue
    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordTimeCost:J

    .line 324
    return-void
.end method

.method private setErrorState(IZ)V
    .locals 2
    .param p1, "errorState"    # I
    .param p2, "shouldNotify"    # Z

    .prologue
    .line 242
    iput p1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    .line 243
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->getInfoByErrorState()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 245
    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyError(ILjava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method private setRecordState(IZ)V
    .locals 1
    .param p1, "recordState"    # I
    .param p2, "shouldNotify"    # Z

    .prologue
    .line 427
    iput p1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    .line 428
    if-eqz p2, :cond_0

    .line 429
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyRecordStateChanged(I)V

    .line 426
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/record/OPRecorder;->buildNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mNotification:Landroid/app/Notification;

    .line 380
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mNotification:Landroid/app/Notification;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 378
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mToast:Landroid/widget/Toast;

    .line 375
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    return-void
.end method

.method private startRecording()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "timeBaseOnZero":Z
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->checkSpaceFull()V

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->resume()V

    .line 178
    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/oneplus/record/OPRecorder;->setRecordState(IZ)V

    .line 179
    invoke-direct {p0, v3}, Lcom/android/incallui/oneplus/record/OPRecorder;->startTimeCount(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 135
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/incallui/oneplus/record/OPRecorder;->releaseMediaRecorder(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    return-void

    .line 143
    :cond_1
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 144
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->constructFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileName:Ljava/lang/String;

    .line 146
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 147
    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 148
    return-void

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->initConfig()V

    .line 153
    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    const/4 v3, 0x1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 162
    return-void

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v5}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 159
    return-void

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 156
    return-void

    .line 175
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 180
    :catch_3
    move-exception v2

    .line 181
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 182
    return-void

    .line 183
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v1

    .line 184
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 185
    return-void
.end method

.method private startTimeCount(Z)V
    .locals 4
    .param p1, "startFromZero"    # Z

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->resetTimeCount()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/android/incallui/oneplus/record/CallTimer;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/record/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/record/CallTimer;->cancel()V

    .line 336
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/oneplus/record/CallTimer;->start(J)Z

    .line 328
    return-void
.end method

.method private stopTimeCount(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mTimer:Lcom/android/incallui/oneplus/record/CallTimer;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/record/CallTimer;->cancel()V

    .line 343
    :cond_0
    if-nez p1, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->resetTimeCount()V

    .line 339
    :cond_1
    return-void
.end method


# virtual methods
.method public addUpdaterListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V
    .locals 2
    .param p1, "updater"    # Lcom/android/incallui/oneplus/record/OPUpdater;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    .line 89
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mUpdater:Lcom/android/incallui/oneplus/record/OPUpdater;

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->getInfoByErrorState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyError(ILjava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyRecordStateChanged(I)V

    .line 92
    iget-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordTimeCost:J

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyProgressChanged(J)V

    .line 87
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError() the what is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  the extra is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->processError(I)V

    .line 217
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInfo() the what is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  the extra is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update record time cost:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordTimeCost:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->log(Ljava/lang/String;)V

    .line 319
    iget-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordTimeCost:J

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/oneplus/record/OPRecorder;->notifyProgressChanged(J)V

    .line 320
    iget-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordTimeCost:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordTimeCost:J

    .line 321
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->checkSpaceFull()V

    .line 317
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string/jumbo v0, " +"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecorderFileNamePrefix:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method public startOrPauseRecording(Z)V
    .locals 3
    .param p1, "startOnly"    # Z

    .prologue
    .line 105
    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mRecordState:I

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    if-eqz v1, :cond_1

    .line 112
    iget v1, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mErrorState:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/oneplus/record/OPRecorder;->setErrorState(IZ)V

    .line 113
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->pauseRecording()V

    .line 121
    :goto_0
    invoke-static {}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->getInstance()Lcom/android/incallui/oneplus/record/OPRecordHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->getIsAutoRecording()Z

    move-result v0

    .line 122
    .local v0, "isAuto":Z
    if-eqz v0, :cond_2

    .line 123
    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/OPRecorder;->mIsAuto:Z

    .line 104
    :cond_2
    return-void

    .line 119
    .end local v0    # "isAuto":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/OPRecorder;->startRecording()V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/record/OPRecorder;->releaseMediaRecorder(Z)Z

    .line 206
    return-void
.end method
