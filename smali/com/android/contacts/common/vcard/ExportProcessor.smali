.class public Lcom/android/contacts/common/vcard/ExportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ExportProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ExportProcessor$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardExport"


# instance fields
.field private final SHOW_READY_TOAST:I

.field private final handler:Landroid/os/Handler;

.field private final mCallingActivity:Ljava/lang/String;

.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/vcard/ExportProcessor;)Lcom/android/contacts/common/vcard/VCardService;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V
    .locals 2
    .param p1, "service"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "exportRequest"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p3, "jobId"    # I
    .param p4, "callingActivity"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->SHOW_READY_TOAST:I

    .line 65
    new-instance v0, Lcom/android/contacts/common/vcard/ExportProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/ExportProcessor$1;-><init>(Lcom/android/contacts/common/vcard/ExportProcessor;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 79
    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 81
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 80
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 82
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    .line 83
    iput p3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 84
    iput-object p4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private doCancelNotification()V
    .locals 6

    .prologue
    .line 497
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 498
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    iget-object v4, v4, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 497
    const v4, 0x7f0d0193

    invoke-virtual {v2, v4, v3}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 501
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    .line 502
    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 501
    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 495
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCallingActivity:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-static {v2, p1, p2, v0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    .line 512
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    .line 513
    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 512
    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 505
    return-void
.end method

.method private doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "text/x-vcard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 531
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/high16 v3, 0x10000000

    .line 530
    invoke-static {v2, p1, p2, v0, v3}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructFinishNotificationWithFlags(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Landroid/app/Notification;

    move-result-object v1

    .line 532
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "VCardServiceProgress"

    .line 533
    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 532
    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 521
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "totalCount"    # I
    .param p3, "currentCount"    # I

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v1, v4

    const v4, 0x7f0d0195

    invoke-virtual {v0, v4, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v1, 0x7f0d0194

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 489
    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    const/4 v1, 0x2

    move v6, p2

    move v7, p3

    .line 488
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 491
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "VCardServiceProgress"

    .line 492
    iget v4, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    .line 491
    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 481
    return-void
.end method

.method private isLocalFile(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "authority":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v2, 0x7f0d01f7

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private runInternal()V
    .locals 28

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v19, v0

    .line 121
    .local v19, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    const/4 v10, 0x0

    .line 122
    .local v10, "composer":Lcom/android/vcard/VCardComposer;
    const/16 v26, 0x0

    .line 123
    .local v26, "writer":Ljava/io/Writer;
    const/16 v20, 0x0

    .line 125
    .local v20, "successful":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const-string/jumbo v4, "VCardExport"

    const-string/jumbo v5, "Export request is cancelled before handling the request"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 127
    return-void

    .line 129
    :cond_0
    :try_start_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v24, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .local v24, "uri":Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v18

    .line 144
    .local v18, "outputStream":Ljava/io/OutputStream;
    :try_start_3
    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 146
    .local v15, "exportType":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0d0096

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v25

    .line 153
    .local v25, "vcardType":I
    :goto_0
    new-instance v3, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    move/from16 v0, v25

    invoke-direct {v3, v4, v0, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_4
    new-instance v27, Ljava/io/BufferedWriter;

    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    .local v27, "writer":Ljava/io/Writer;
    :try_start_5
    sget-object v9, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 163
    .end local v26    # "writer":Ljava/io/Writer;
    .local v9, "contentUriForRawContactsEntity":Landroid/net/Uri;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 164
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 165
    const/4 v8, 0x0

    .line 163
    invoke-virtual/range {v3 .. v9}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 166
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "errorReason":Ljava/lang/String;
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initialization of vCard composer failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 171
    .local v23, "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 172
    const/4 v6, 0x0

    aput-object v23, v5, v6

    .line 171
    const v6, 0x7f0d0184

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 173
    .local v21, "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 241
    :cond_1
    if-eqz v27, :cond_2

    .line 243
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 248
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 174
    return-void

    .line 133
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v14    # "errorReason":Ljava/lang/String;
    .end local v15    # "exportType":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    .end local v21    # "title":Ljava/lang/String;
    .end local v23    # "translatedErrorReason":Ljava/lang/String;
    .end local v25    # "vcardType":I
    .end local v27    # "writer":Ljava/io/Writer;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v26    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v12

    .line 134
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string/jumbo v4, "VCardExport"

    const-string/jumbo v5, "FileNotFoundException thrown"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 139
    const/4 v6, 0x0

    aput-object v24, v5, v6

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 138
    const v6, 0x7f0d0183

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 140
    .restart local v14    # "errorReason":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 141
    return-void

    .line 150
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "errorReason":Ljava/lang/String;
    .restart local v15    # "exportType":Ljava/lang/String;
    .restart local v18    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :try_start_8
    invoke-static {v15}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v25

    .restart local v25    # "vcardType":I
    goto/16 :goto_0

    .line 244
    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v26    # "writer":Ljava/io/Writer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v14    # "errorReason":Ljava/lang/String;
    .restart local v21    # "title":Ljava/lang/String;
    .restart local v23    # "translatedErrorReason":Ljava/lang/String;
    .restart local v27    # "writer":Ljava/io/Writer;
    :catch_1
    move-exception v13

    .line 245
    .local v13, "e":Ljava/io/IOException;
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "errorReason":Ljava/lang/String;
    .end local v21    # "title":Ljava/lang/String;
    .end local v23    # "translatedErrorReason":Ljava/lang/String;
    :cond_4
    :try_start_9
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v22

    .line 178
    .local v22, "total":I
    if-nez v22, :cond_7

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0d0185

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 181
    .restart local v21    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 238
    if-eqz v3, :cond_5

    .line 239
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 241
    :cond_5
    if-eqz v27, :cond_6

    .line 243
    :try_start_a
    invoke-virtual/range {v27 .. v27}, Ljava/io/Writer;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 248
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 182
    return-void

    .line 244
    :catch_2
    move-exception v13

    .line 245
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 185
    .end local v13    # "e":Ljava/io/IOException;
    .end local v21    # "title":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    .line 186
    .local v11, "current":I
    :goto_3
    :try_start_b
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_e

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    const-string/jumbo v4, "VCardExport"

    const-string/jumbo v5, "Export request is cancelled during composing vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 238
    if-eqz v3, :cond_8

    .line 239
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 241
    :cond_8
    if-eqz v27, :cond_9

    .line 243
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 248
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 189
    return-void

    .line 244
    :catch_3
    move-exception v13

    .line 245
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 192
    .end local v13    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_d
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 207
    :try_start_e
    rem-int/lit8 v4, v11, 0x64

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v11}, Lcom/android/contacts/common/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 210
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 193
    :catch_4
    move-exception v13

    .line 194
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v14

    .line 195
    .restart local v14    # "errorReason":Ljava/lang/String;
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to read a contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 199
    .restart local v23    # "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 200
    const/4 v6, 0x0

    aput-object v23, v5, v6

    .line 199
    const v6, 0x7f0d0187

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 201
    .restart local v21    # "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 238
    if-eqz v3, :cond_c

    .line 239
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 241
    :cond_c
    if-eqz v27, :cond_d

    .line 243
    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 248
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 202
    return-void

    .line 244
    :catch_5
    move-exception v13

    .line 245
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 212
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "errorReason":Ljava/lang/String;
    .end local v21    # "title":Ljava/lang/String;
    .end local v23    # "translatedErrorReason":Ljava/lang/String;
    :cond_e
    :try_start_10
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Successfully finished exporting vCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 219
    const/16 v20, 0x1

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->isLocalFile(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 226
    .local v17, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0d0190

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v6, 0x7f0d0192

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v5, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 238
    .end local v17    # "msg":Landroid/os/Message;
    :goto_6
    if-eqz v3, :cond_f

    .line 239
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 241
    :cond_f
    if-eqz v27, :cond_10

    .line 243
    :try_start_11
    invoke-virtual/range {v27 .. v27}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 248
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 118
    return-void

    .line 232
    :cond_11
    if-nez v16, :cond_14

    .line 233
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v5, 0x7f0d0190

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 235
    .restart local v21    # "title":Ljava/lang/String;
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_6

    .line 237
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v11    # "current":I
    .end local v16    # "filename":Ljava/lang/String;
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "total":I
    :catchall_0
    move-exception v4

    move-object/from16 v26, v27

    .line 238
    .end local v15    # "exportType":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    .end local v24    # "uri":Landroid/net/Uri;
    .end local v25    # "vcardType":I
    .end local v27    # "writer":Ljava/io/Writer;
    :goto_9
    if-eqz v3, :cond_12

    .line 239
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 241
    :cond_12
    if-eqz v26, :cond_13

    .line 243
    :try_start_13
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 248
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 237
    throw v4

    .line 234
    .restart local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v11    # "current":I
    .restart local v15    # "exportType":Ljava/lang/String;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v18    # "outputStream":Ljava/io/OutputStream;
    .restart local v22    # "total":I
    .restart local v24    # "uri":Landroid/net/Uri;
    .restart local v25    # "vcardType":I
    .restart local v27    # "writer":Ljava/io/Writer;
    :cond_14
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const v6, 0x7f0d018f

    invoke-virtual {v4, v6, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v21

    goto :goto_8

    .line 244
    :catch_6
    move-exception v13

    .line 245
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 244
    .end local v9    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v11    # "current":I
    .end local v13    # "e":Ljava/io/IOException;
    .end local v15    # "exportType":Ljava/lang/String;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v18    # "outputStream":Ljava/io/OutputStream;
    .end local v22    # "total":I
    .end local v24    # "uri":Landroid/net/Uri;
    .end local v25    # "vcardType":I
    .end local v27    # "writer":Ljava/io/Writer;
    :catch_7
    move-exception v13

    .line 245
    .restart local v13    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 237
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v26    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v4

    move-object v3, v10

    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    goto :goto_9

    .end local v10    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v15    # "exportType":Ljava/lang/String;
    .restart local v18    # "outputStream":Ljava/io/OutputStream;
    .restart local v24    # "uri":Landroid/net/Uri;
    .restart local v25    # "vcardType":I
    :catchall_2
    move-exception v4

    goto :goto_9
.end method

.method private runInternalIndeed()V
    .locals 45

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    move-object/from16 v35, v0

    .line 257
    .local v35, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    const/16 v20, 0x0

    .line 258
    .local v20, "composer":Lcom/android/vcard/VCardComposer;
    const/16 v43, 0x0

    .line 259
    .local v43, "writer":Ljava/io/Writer;
    const/16 v37, 0x0

    .line 260
    .local v37, "successful":Z
    const/16 v17, 0x0

    .line 262
    .local v17, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    const-string/jumbo v5, "VCardExport"

    const-string/jumbo v6, "Export request is cancelled before handling the request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 264
    return-void

    .line 266
    :cond_1
    :try_start_1
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v41, v0

    .line 268
    .local v41, "uri":Landroid/net/Uri;
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->exportType:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 270
    .local v29, "exportType":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v6, 0x7f0d0096

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v42

    .line 277
    .local v42, "vcardType":I
    :goto_0
    new-instance v4, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v6, 0x1

    move/from16 v0, v42

    invoke-direct {v4, v5, v0, v6}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_2
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .end local v20    # "composer":Lcom/android/vcard/VCardComposer;
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 293
    .local v10, "contentUriForRawContactsEntity":Landroid/net/Uri;
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 294
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 295
    const/4 v9, 0x0

    .line 293
    invoke-virtual/range {v4 .. v10}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 296
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v28

    .line 297
    .local v28, "errorReason":Ljava/lang/String;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initialization of vCard composer failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 301
    .local v40, "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 302
    const/4 v7, 0x0

    aput-object v40, v6, v7

    .line 301
    const v7, 0x7f0d0184

    invoke-virtual {v5, v7, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 303
    .local v38, "title":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 441
    if-eqz v4, :cond_2

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 454
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_4

    .line 455
    return-void

    .line 274
    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v10    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v28    # "errorReason":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/String;
    .end local v40    # "translatedErrorReason":Ljava/lang/String;
    .end local v42    # "vcardType":I
    .restart local v20    # "composer":Lcom/android/vcard/VCardComposer;
    :cond_3
    :try_start_3
    invoke-static/range {v29 .. v29}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v42

    .restart local v42    # "vcardType":I
    goto :goto_0

    .line 457
    .end local v20    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v10    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v28    # "errorReason":Ljava/lang/String;
    .restart local v38    # "title":Ljava/lang/String;
    .restart local v40    # "translatedErrorReason":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 305
    return-void

    .line 307
    .end local v28    # "errorReason":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/String;
    .end local v40    # "translatedErrorReason":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v39

    .line 308
    .local v39, "total":I
    if-nez v39, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v6, 0x7f0d0185

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 311
    .restart local v38    # "title":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 441
    if-eqz v4, :cond_6

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 454
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_7

    .line 455
    return-void

    .line 457
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 312
    return-void

    .line 317
    .end local v38    # "title":Ljava/lang/String;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v34

    .line 329
    .local v34, "outputStream":Ljava/io/OutputStream;
    :try_start_6
    new-instance v44, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 331
    .local v44, "writer":Ljava/io/Writer;
    :try_start_7
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getCursor()Landroid/database/Cursor;

    .end local v43    # "writer":Ljava/io/Writer;
    move-result-object v22

    .line 332
    .local v22, "cursor":Landroid/database/Cursor;
    const-string/jumbo v32, ""

    .line 333
    .local v32, "ids":Ljava/lang/String;
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 335
    .local v31, "idColumn":I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 336
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 338
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 339
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getContentUriForRawContactsEntity()Landroid/net/Uri;

    move-result-object v12

    .line 340
    .local v12, "dataUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 341
    .local v18, "begin":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact_id IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v16, "contact_id"

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 342
    .local v17, "c":Landroid/database/Cursor;
    if-eqz v17, :cond_10

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v26, v6, v18

    .line 347
    .local v26, "end":J
    const/16 v21, 0x1

    .line 348
    .local v21, "current":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 401
    :cond_a
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Successfully finished exporting vCard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 408
    const/16 v37, 0x1

    .line 409
    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v30

    .line 413
    .local v30, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->isLocalFile(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 414
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v33

    .line 415
    .local v33, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v33

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->handler:Landroid/os/Handler;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 419
    const-wide/16 v6, 0x64

    :try_start_8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 425
    :goto_2
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v6, 0x7f0d0190

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 426
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v7, 0x7f0d0192

    invoke-virtual {v6, v7}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v5, v6, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotificationWithShareAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 441
    .end local v33    # "msg":Landroid/os/Message;
    :goto_3
    if-eqz v4, :cond_b

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 444
    :cond_b
    if-eqz v17, :cond_c

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_c
    if-eqz v44, :cond_d

    .line 449
    :try_start_a
    invoke-virtual/range {v44 .. v44}, Ljava/io/Writer;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 454
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_29

    .line 455
    return-void

    .line 318
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v18    # "begin":J
    .end local v21    # "current":I
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v26    # "end":J
    .end local v30    # "filename":Ljava/lang/String;
    .end local v31    # "idColumn":I
    .end local v32    # "ids":Ljava/lang/String;
    .end local v34    # "outputStream":Ljava/io/OutputStream;
    .end local v44    # "writer":Ljava/io/Writer;
    .local v17, "c":Landroid/database/Cursor;
    .restart local v43    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v23

    .line 319
    .local v23, "e":Ljava/io/FileNotFoundException;
    :try_start_b
    const-string/jumbo v5, "VCardExport"

    const-string/jumbo v6, "FileNotFoundException thrown"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 324
    const/4 v7, 0x0

    aput-object v41, v6, v7

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 323
    const v7, 0x7f0d0183

    invoke-virtual {v5, v7, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 325
    .restart local v28    # "errorReason":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 441
    if-eqz v4, :cond_e

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 454
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_f

    .line 455
    return-void

    .line 457
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 327
    return-void

    .line 441
    .end local v23    # "e":Ljava/io/FileNotFoundException;
    .end local v28    # "errorReason":Ljava/lang/String;
    .end local v43    # "writer":Ljava/io/Writer;
    .restart local v12    # "dataUri":Landroid/net/Uri;
    .local v17, "c":Landroid/database/Cursor;
    .restart local v18    # "begin":J
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v31    # "idColumn":I
    .restart local v32    # "ids":Ljava/lang/String;
    .restart local v34    # "outputStream":Ljava/io/OutputStream;
    .restart local v44    # "writer":Ljava/io/Writer;
    :cond_10
    if-eqz v4, :cond_11

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 444
    :cond_11
    if-eqz v17, :cond_12

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_12
    if-eqz v44, :cond_13

    .line 449
    :try_start_c
    invoke-virtual/range {v44 .. v44}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 454
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_14

    .line 455
    return-void

    .line 450
    :catch_1
    move-exception v24

    .line 451
    .local v24, "e":Ljava/io/IOException;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 457
    .end local v24    # "e":Ljava/io/IOException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 343
    return-void

    .line 349
    .restart local v21    # "current":I
    .restart local v26    # "end":J
    :cond_15
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 350
    const-string/jumbo v5, "VCardExport"

    const-string/jumbo v6, "Export request is cancelled during composing vCard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 441
    if-eqz v4, :cond_16

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 444
    :cond_16
    if-eqz v17, :cond_17

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_17
    if-eqz v44, :cond_18

    .line 449
    :try_start_e
    invoke-virtual/range {v44 .. v44}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 454
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_19

    .line 455
    return-void

    .line 450
    :catch_2
    move-exception v24

    .line 451
    .restart local v24    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 457
    .end local v24    # "e":Ljava/io/IOException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 351
    return-void

    .line 354
    :cond_1a
    :try_start_f
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/vcard/VCardComposer;->createOneEntryIndeed(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 395
    :try_start_10
    rem-int/lit8 v5, v21, 0x64

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v39

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 399
    :cond_1b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 373
    :catch_3
    move-exception v25

    .line 374
    .local v25, "e":Ljava/lang/Exception;
    const-string/jumbo v28, "Failed to get database information"

    .line 375
    .restart local v28    # "errorReason":Ljava/lang/String;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read contact: Failed to get database information;e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string/jumbo v5, "Failed to get database information"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 379
    .restart local v40    # "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 380
    const/4 v7, 0x0

    aput-object v40, v6, v7

    .line 379
    const v7, 0x7f0d0187

    invoke-virtual {v5, v7, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v38

    .line 383
    .restart local v38    # "title":Ljava/lang/String;
    const-wide/16 v6, 0x64

    :try_start_11
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 388
    :goto_7
    const/4 v5, 0x0

    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 441
    if-eqz v4, :cond_1c

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 444
    :cond_1c
    if-eqz v17, :cond_1d

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_1d
    if-eqz v44, :cond_1e

    .line 449
    :try_start_13
    invoke-virtual/range {v44 .. v44}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    .line 454
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_1f

    .line 455
    return-void

    .line 384
    :catch_4
    move-exception v36

    .local v36, "se":Ljava/lang/Exception;
    goto :goto_7

    .line 450
    .end local v36    # "se":Ljava/lang/Exception;
    :catch_5
    move-exception v24

    .line 451
    .restart local v24    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 457
    .end local v24    # "e":Ljava/io/IOException;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 390
    return-void

    .line 355
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v28    # "errorReason":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/String;
    .end local v40    # "translatedErrorReason":Ljava/lang/String;
    :catch_6
    move-exception v24

    .line 356
    .restart local v24    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v28

    .line 357
    .restart local v28    # "errorReason":Ljava/lang/String;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read a contact: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 361
    .restart local v40    # "translatedErrorReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 362
    const/4 v7, 0x0

    aput-object v40, v6, v7

    .line 361
    const v7, 0x7f0d0187

    invoke-virtual {v5, v7, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v38

    .line 365
    .restart local v38    # "title":Ljava/lang/String;
    const-wide/16 v6, 0x64

    :try_start_15
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 370
    :goto_9
    const/4 v5, 0x0

    :try_start_16
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 441
    if-eqz v4, :cond_20

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 444
    :cond_20
    if-eqz v17, :cond_21

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_21
    if-eqz v44, :cond_22

    .line 449
    :try_start_17
    invoke-virtual/range {v44 .. v44}, Ljava/io/Writer;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    .line 454
    :cond_22
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v5, :cond_23

    .line 455
    return-void

    .line 366
    :catch_7
    move-exception v36

    .restart local v36    # "se":Ljava/lang/Exception;
    goto :goto_9

    .line 450
    .end local v36    # "se":Ljava/lang/Exception;
    :catch_8
    move-exception v24

    .line 451
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 457
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 372
    return-void

    .line 420
    .end local v24    # "e":Ljava/io/IOException;
    .end local v28    # "errorReason":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/String;
    .end local v40    # "translatedErrorReason":Ljava/lang/String;
    .restart local v30    # "filename":Ljava/lang/String;
    .restart local v33    # "msg":Landroid/os/Message;
    :catch_9
    move-exception v36

    .restart local v36    # "se":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 428
    .end local v33    # "msg":Landroid/os/Message;
    .end local v36    # "se":Ljava/lang/Exception;
    :cond_24
    if-nez v30, :cond_28

    .line 429
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const v6, 0x7f0d0190

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v38

    .line 433
    .restart local v38    # "title":Ljava/lang/String;
    :goto_b
    const-wide/16 v6, 0x64

    :try_start_19
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 438
    :goto_c
    const/4 v5, 0x0

    :try_start_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/common/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_3

    .line 440
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v18    # "begin":J
    .end local v21    # "current":I
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v26    # "end":J
    .end local v30    # "filename":Ljava/lang/String;
    .end local v31    # "idColumn":I
    .end local v32    # "ids":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object/from16 v43, v44

    .line 441
    .end local v10    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v29    # "exportType":Ljava/lang/String;
    .end local v34    # "outputStream":Ljava/io/OutputStream;
    .end local v39    # "total":I
    .end local v41    # "uri":Landroid/net/Uri;
    .end local v42    # "vcardType":I
    .end local v44    # "writer":Ljava/io/Writer;
    :goto_d
    if-eqz v4, :cond_25

    .line 442
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 444
    :cond_25
    if-eqz v17, :cond_26

    .line 445
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_26
    if-eqz v43, :cond_27

    .line 449
    :try_start_1b
    invoke-virtual/range {v43 .. v43}, Ljava/io/Writer;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 454
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-nez v6, :cond_2a

    .line 455
    return-void

    .line 430
    .restart local v10    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .restart local v12    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v18    # "begin":J
    .restart local v21    # "current":I
    .restart local v22    # "cursor":Landroid/database/Cursor;
    .restart local v26    # "end":J
    .restart local v29    # "exportType":Ljava/lang/String;
    .restart local v30    # "filename":Ljava/lang/String;
    .restart local v31    # "idColumn":I
    .restart local v32    # "ids":Ljava/lang/String;
    .restart local v34    # "outputStream":Ljava/io/OutputStream;
    .restart local v39    # "total":I
    .restart local v41    # "uri":Landroid/net/Uri;
    .restart local v42    # "vcardType":I
    .restart local v44    # "writer":Ljava/io/Writer;
    :cond_28
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v30, v6, v7

    const v7, 0x7f0d018f

    invoke-virtual {v5, v7, v6}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-result-object v38

    .restart local v38    # "title":Ljava/lang/String;
    goto :goto_b

    .line 434
    :catch_a
    move-exception v36

    .restart local v36    # "se":Ljava/lang/Exception;
    goto :goto_c

    .line 450
    .end local v36    # "se":Ljava/lang/Exception;
    .end local v38    # "title":Ljava/lang/String;
    :catch_b
    move-exception v24

    .line 451
    .restart local v24    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 457
    .end local v24    # "e":Ljava/io/IOException;
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 254
    return-void

    .line 450
    .end local v10    # "contentUriForRawContactsEntity":Landroid/net/Uri;
    .end local v12    # "dataUri":Landroid/net/Uri;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v18    # "begin":J
    .end local v21    # "current":I
    .end local v22    # "cursor":Landroid/database/Cursor;
    .end local v26    # "end":J
    .end local v29    # "exportType":Ljava/lang/String;
    .end local v30    # "filename":Ljava/lang/String;
    .end local v31    # "idColumn":I
    .end local v32    # "ids":Ljava/lang/String;
    .end local v34    # "outputStream":Ljava/io/OutputStream;
    .end local v39    # "total":I
    .end local v41    # "uri":Landroid/net/Uri;
    .end local v42    # "vcardType":I
    .end local v44    # "writer":Ljava/io/Writer;
    :catch_c
    move-exception v24

    .line 451
    .restart local v24    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "VCardExport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 457
    .end local v24    # "e":Ljava/io/IOException;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/common/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v37

    invoke-virtual {v6, v7, v0}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 440
    throw v5

    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .local v17, "c":Landroid/database/Cursor;
    .restart local v20    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v43    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v5

    move-object/from16 v4, v20

    .restart local v4    # "composer":Lcom/android/vcard/VCardComposer;
    goto/16 :goto_d

    .end local v20    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v29    # "exportType":Ljava/lang/String;
    .restart local v41    # "uri":Landroid/net/Uri;
    .restart local v42    # "vcardType":I
    :catchall_2
    move-exception v5

    goto/16 :goto_d
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 470
    .local v0, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 472
    :cond_0
    const-string/jumbo v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const v1, 0x7f0d0197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 474
    :cond_1
    const-string/jumbo v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    const v1, 0x7f0d0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 477
    :cond_2
    return-object p1
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 539
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 542
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 543
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/common/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/common/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 548
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 553
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->runInternalIndeed()V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :cond_0
    monitor-enter p0

    .line 113
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 93
    return-void

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "VCardExport"

    const-string/jumbo v3, "RuntimeException thrown during export"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    .line 112
    monitor-enter p0

    .line 113
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ExportProcessor;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    .line 111
    throw v2

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string/jumbo v2, "VCardExport"

    const-string/jumbo v3, "OutOfMemoryError thrown during import"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_2
    move-exception v2

    monitor-exit p0

    throw v2
.end method
