.class public Lcom/android/contacts/common/vcard/ImportVCardActivity;
.super Landroid/app/Activity;
.source "ImportVCardActivity.java"

# interfaces
.implements Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;
    }
.end annotation


# static fields
.field private static final FAILURE_NOTIFICATION_ID:I = 0x1

.field private static final LOCAL_TMP_FILE_NAME_EXTRA:Ljava/lang/String; = "com.android.contacts.common.vcard.LOCAL_TMP_FILE_NAME"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardImport"

.field private static final REQUEST_OPEN_DOCUMENT:I = 0x64

.field private static final SECURE_DIRECTORY_NAME:Ljava/lang/String; = ".android_secure"

.field private static final SELECT_ACCOUNT:I = 0x0

.field private static final SOURCE_URI_DISPLAY_NAME:Ljava/lang/String; = "com.android.contacts.common.vcard.SOURCE_URI_DISPLAY_NAME"

.field private static final STORAGE_VCARD_URI_PREFIX:Ljava/lang/String; = "file:///storage"

.field static final VCARD_VERSION_AUTO_DETECT:I = 0x0

.field static final VCARD_VERSION_V21:I = 0x1

.field static final VCARD_VERSION_V30:I = 0x2


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;)Landroid/app/Dialog;
    .locals 1
    .param p1, "allVCardFileList"    # Ljava/util/Vector;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSelectImportTypeDialog(Ljava/util/Vector;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;Z)Landroid/app/Dialog;
    .locals 1
    .param p1, "allVCardFileList"    # Ljava/util/Vector;
    .param p2, "multipleSelect"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Ljava/util/Vector;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/contacts/common/vcard/ImportVCardActivity;[BLandroid/net/Uri;)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "localDataUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getVcardCount([BLandroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    .locals 0
    .param p1, "vcardFile"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "selectedVCardFileList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    .line 88
    return-void
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 492
    const-string/jumbo v7, "VCardImport"

    const-string/jumbo v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 493
    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    .line 492
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    move-object v1, p0

    .line 495
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 496
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 497
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 498
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 500
    .local v2, "destUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 501
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 502
    .local v2, "destUri":Landroid/net/Uri;
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 503
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 504
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 505
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 506
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 507
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 513
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "destUri":Landroid/net/Uri;
    .end local v4    # "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    .end local v5    # "outputChannel":Ljava/nio/channels/WritableByteChannel;
    :catchall_0
    move-exception v7

    .line 514
    if-eqz v4, :cond_0

    .line 516
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 521
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 523
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 513
    :cond_1
    :goto_2
    throw v7

    .line 509
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "destUri":Landroid/net/Uri;
    .restart local v4    # "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    .restart local v5    # "outputChannel":Ljava/nio/channels/WritableByteChannel;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 510
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 511
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 514
    :cond_3
    if-eqz v4, :cond_4

    .line 516
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 521
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 523
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 529
    :cond_5
    :goto_5
    return-object v2

    .line 517
    :catch_0
    move-exception v3

    .line 518
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "VCardImport"

    const-string/jumbo v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 524
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "VCardImport"

    const-string/jumbo v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 517
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "destUri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    .end local v5    # "outputChannel":Ljava/nio/channels/WritableByteChannel;
    :catch_2
    move-exception v3

    .line 518
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "VCardImport"

    const-string/jumbo v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 524
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 525
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "VCardImport"

    const-string/jumbo v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 8

    .prologue
    .line 788
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 789
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 796
    const v5, 0x7f0d00c0

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "message":Ljava/lang/String;
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p0, v5, v2, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    .line 799
    .local v3, "scanVCard":Landroid/app/ProgressDialog;
    new-instance v4, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;Ljava/io/File;)V

    .line 800
    .local v4, "vCardScanThread":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;
    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 801
    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->start()V

    .line 786
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "scanVCard":Landroid/app/ProgressDialog;
    .end local v4    # "vCardScanThread":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    const v6, 0x7f0d00bf

    .line 790
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 792
    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    .line 790
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 793
    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const v7, 0x104000a

    .line 790
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 794
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private getDisplayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 455
    if-nez p1, :cond_0

    .line 456
    return-object v1

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 460
    .local v7, "displayName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 465
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_display_name"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 466
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 464
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 467
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v9, :cond_1

    .line 469
    const-string/jumbo v1, "VCardImport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected multiple rows: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1
    const-string/jumbo v1, "_display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 473
    .local v8, "index":I
    if-ltz v8, :cond_2

    .line 474
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 478
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_2
    if-eqz v6, :cond_3

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 483
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 485
    :cond_4
    return-object v7

    .line 477
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "displayName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 478
    if-eqz v6, :cond_5

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_5
    throw v1
.end method

.method private getSelectImportTypeDialog(Ljava/util/Vector;)Landroid/app/Dialog;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .local p1, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    const/4 v6, 0x0

    .line 994
    new-instance v2, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;)V

    .line 995
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    const v4, 0x7f0d00c1

    .line 995
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 997
    const v4, 0x104000a

    .line 995
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 998
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    .line 995
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 999
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const/high16 v5, 0x1040000

    .line 995
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1001
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 1003
    .local v1, "items":[Ljava/lang/String;
    const v3, 0x7f0d00c2

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1002
    aput-object v3, v1, v6

    .line 1005
    const v3, 0x7f0d00c3

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 1007
    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1006
    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 1008
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1009
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Ljava/util/Vector;Z)Landroid/app/Dialog;
    .locals 18
    .param p2, "multipleSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;Z)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v10

    .line 1050
    .local v10, "size":I
    new-instance v9, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v9, v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/Vector;Z)V

    .line 1052
    .local v9, "listener":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1053
    const v14, 0x7f0d00c1

    .line 1052
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1054
    const v14, 0x104000a

    .line 1052
    invoke-virtual {v13, v14, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1055
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    .line 1052
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1056
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const/high16 v15, 0x1040000

    .line 1052
    invoke-virtual {v13, v15, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1058
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    new-array v8, v10, [Ljava/lang/CharSequence;

    .line 1059
    .local v8, "items":[Ljava/lang/CharSequence;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v5, "dateFormat":Ljava/text/DateFormat;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 1061
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .line 1062
    .local v12, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1063
    .local v11, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1064
    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1065
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 1070
    .local v7, "indexToBeSpanned":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/util/Date;

    invoke-virtual {v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1069
    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1072
    new-instance v13, Landroid/text/style/RelativeSizeSpan;

    const v14, 0x3f333333    # 0.7f

    invoke-direct {v13, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 1073
    const/16 v15, 0x21

    .line 1071
    invoke-virtual {v11, v13, v7, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1074
    aput-object v11, v8, v6

    .line 1060
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1076
    .end local v7    # "indexToBeSpanned":I
    .end local v11    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v12    # "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    if-eqz p2, :cond_1

    .line 1077
    const/4 v13, 0x0

    check-cast v13, [Z

    invoke-virtual {v4, v8, v13, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1081
    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    return-object v13

    .line 1079
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v4, v8, v13, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private getVcardCount([BLandroid/net/Uri;)I
    .locals 12
    .param p1, "data"    # [B
    .param p2, "localDataUri"    # Landroid/net/Uri;

    .prologue
    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1222
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "BEGIN:VCARD"

    .line 1223
    .local v7, "vcardBegin":Ljava/lang/String;
    const-string/jumbo v8, "END:VCARD"

    .line 1224
    .local v8, "vcardEnd":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1226
    .local v2, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_3

    .line 1227
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .line 1232
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    .line 1233
    const-string/jumbo v9, "ISO-8859-1"

    .line 1232
    invoke-direct {v6, v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1234
    .local v6, "tmpReader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1235
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1237
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1238
    add-int/lit8 v0, v0, 0x1

    .line 1239
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 1248
    :cond_1
    if-eqz v2, :cond_2

    .line 1250
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1255
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpReader":Ljava/io/InputStreamReader;
    :cond_2
    :goto_1
    return v0

    .line 1229
    .local v2, "is":Ljava/io/InputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v5, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1251
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "tmpReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 1245
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    .line 1246
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v9, "VCardImport"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getVcardCount IOException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1248
    if-eqz v2, :cond_2

    .line 1250
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1251
    :catch_2
    move-exception v1

    goto :goto_1

    .line 1247
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1248
    if-eqz v2, :cond_4

    .line 1250
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1247
    :cond_4
    :goto_2
    throw v9

    .line 1251
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private importVCard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceDisplayName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    new-array v0, v1, [Landroid/net/Uri;

    aput-object p1, v0, v2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;[Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private importVCard([Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "sourceDisplayNames"    # [Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    .locals 5
    .param p1, "vcardFile"    # Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 990
    new-array v0, v4, [Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;[Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 978
    .local v1, "size":I
    new-array v3, v1, [Landroid/net/Uri;

    .line 979
    .local v3, "uris":[Landroid/net/Uri;
    new-array v2, v1, [Ljava/lang/String;

    .line 980
    .local v2, "sourceDisplayNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 981
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "vcardFile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .line 982
    .local v4, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v3, v0

    .line 983
    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .end local v4    # "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;[Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method private importVCardSelectFile()V
    .locals 3

    .prologue
    .line 1139
    const-string/jumbo v1, "VCardImport"

    const-string/jumbo v2, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const-string/jumbo v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    const-string/jumbo v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1144
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1138
    return-void
.end method

.method private static isCallerSelf(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 676
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 677
    .local v0, "callingActivity":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    return v2

    .line 678
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    return v2

    .line 680
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isStorageUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file:///storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readUriToLocalFile(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    const v8, 0x7f0d0189

    const/4 v7, 0x0

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "cache_index":I
    const/4 v4, 0x0

    .line 542
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "import_tmp_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "localFilename":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 544
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 554
    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    if-nez v4, :cond_2

    .line 566
    const-string/jumbo v5, "VCardImport"

    const-string/jumbo v6, "Cannot load uri to local storage."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V

    .line 568
    return-object v7

    .line 547
    :cond_0
    const v5, 0x7fffffff

    if-ne v0, v5, :cond_1

    .line 548
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exceeded cache limit"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 550
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "VCardImport"

    const-string/jumbo v6, "IOException during caching vCard"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V

    .line 562
    return-object v7

    .line 555
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 556
    .local v2, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "VCardImport"

    const-string/jumbo v6, "SecurityException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V

    .line 558
    return-object v7

    .line 571
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    return-object v4
.end method

.method private readUriToLocalUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->readUriToLocalFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 577
    return-object v1

    .line 579
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private startImport(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceDisplayName"    # Ljava/lang/String;

    .prologue
    .line 773
    if-eqz p1, :cond_0

    .line 774
    const-string/jumbo v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting vCard import using Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;Ljava/lang/String;)V

    .line 771
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 695
    if-nez p1, :cond_4

    .line 696
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 697
    new-instance v11, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 698
    const-string/jumbo v12, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 699
    const-string/jumbo v13, "account_type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 700
    const-string/jumbo v14, "data_set"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 697
    invoke-direct {v11, v12, v13, v14}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 701
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 702
    .local v8, "sourceUri":Landroid/net/Uri;
    if-nez v8, :cond_1

    .line 703
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport(Landroid/net/Uri;Ljava/lang/String;)V

    .line 694
    .end local v8    # "sourceUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 705
    .restart local v8    # "sourceUri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 706
    const-string/jumbo v12, "com.android.contacts.common.vcard.SOURCE_URI_DISPLAY_NAME"

    .line 705
    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "sourceDisplayName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 708
    const-string/jumbo v12, "com.android.contacts.common.vcard.LOCAL_TMP_FILE_NAME"

    .line 707
    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "localFileName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    .line 709
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 711
    .local v5, "localUri":Landroid/net/Uri;
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    .end local v4    # "localFileName":Ljava/lang/String;
    .end local v5    # "localUri":Landroid/net/Uri;
    .end local v6    # "sourceDisplayName":Ljava/lang/String;
    .end local v8    # "sourceUri":Landroid/net/Uri;
    :cond_2
    if-eqz p2, :cond_3

    .line 715
    const-string/jumbo v11, "VCardImport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Result code was not OK nor CANCELED: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_0

    .line 719
    :cond_4
    const/16 v11, 0x64

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 720
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_b

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 722
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_8

    .line 723
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v10, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v7, "sourceDisplayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 726
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 727
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 728
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_5

    .line 729
    invoke-direct {p0, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->readUriToLocalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 730
    .restart local v5    # "localUri":Landroid/net/Uri;
    if-eqz v5, :cond_5

    .line 731
    invoke-direct {p0, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 732
    .restart local v6    # "sourceDisplayName":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .end local v5    # "localUri":Landroid/net/Uri;
    .end local v6    # "sourceDisplayName":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 737
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 738
    const-string/jumbo v11, "VCardImport"

    const-string/jumbo v12, "No vCard was selected for import"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 741
    :cond_7
    const-string/jumbo v11, "VCardImport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Multiple vCards selected for import: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v11, 0x0

    new-array v11, v11, [Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/net/Uri;

    .line 743
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 742
    invoke-direct {p0, v11, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 746
    .end local v2    # "i":I
    .end local v7    # "sourceDisplayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 747
    .restart local v9    # "uri":Landroid/net/Uri;
    if-eqz v9, :cond_a

    .line 748
    const-string/jumbo v11, "VCardImport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "vCard selected for import: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-direct {p0, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->readUriToLocalUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 750
    .restart local v5    # "localUri":Landroid/net/Uri;
    if-eqz v5, :cond_9

    .line 751
    invoke-direct {p0, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 752
    .restart local v6    # "sourceDisplayName":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    .end local v6    # "sourceDisplayName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v11, "VCardImport"

    const-string/jumbo v12, "No local URI for vCard import"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 758
    .end local v5    # "localUri":Landroid/net/Uri;
    :cond_a
    const-string/jumbo v11, "VCardImport"

    const-string/jumbo v12, "No vCard was selected for import"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0

    .line 763
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_b
    if-eqz p2, :cond_c

    .line 764
    const-string/jumbo v11, "VCardImport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Result code was not OK nor CANCELED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 589
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 596
    .local v8, "sourceUri":Landroid/net/Uri;
    invoke-direct {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isStorageUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 598
    return-void

    .line 601
    :cond_0
    const/4 v7, 0x0

    .line 602
    .local v7, "sourceDisplayName":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "com.android.contacts.common.vcard.LOCAL_TMP_FILE_NAME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, "localTmpFileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "com.android.contacts.common.vcard.SOURCE_URI_DISPLAY_NAME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 606
    .local v7, "sourceDisplayName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 607
    invoke-direct {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->readUriToLocalFile(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 608
    invoke-direct {p0, v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 609
    if-nez v6, :cond_1

    .line 610
    const-string/jumbo v9, "VCardImport"

    const-string/jumbo v10, "Cannot load uri to local storage."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const v9, 0x7f0d0189

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V

    .line 612
    return-void

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "com.android.contacts.common.vcard.LOCAL_TMP_FILE_NAME"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "com.android.contacts.common.vcard.SOURCE_URI_DISPLAY_NAME"

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 621
    .end local v6    # "localTmpFileName":Ljava/lang/String;
    .end local v7    # "sourceDisplayName":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 622
    return-void

    .line 625
    :cond_4
    const/4 v1, 0x0

    .line 626
    .local v1, "accountName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 627
    .local v2, "accountType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 628
    .local v4, "dataSet":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 629
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_6

    .line 630
    const-string/jumbo v9, "account_name"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v9, "account_type"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "accountType":Ljava/lang/String;
    const-string/jumbo v9, "data_set"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 637
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 640
    :cond_5
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    .line 643
    .local v3, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-static {v3}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getWriteableWithoutSimAccounts(Lcom/android/contacts/common/model/AccountTypeManager;)Ljava/util/List;

    move-result-object v0

    .line 645
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_8

    .line 646
    iput-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 656
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v3    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :goto_1
    invoke-static {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->isCallerSelf(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 657
    invoke-direct {p0, v8, v7}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport(Landroid/net/Uri;Ljava/lang/String;)V

    .line 588
    :goto_2
    return-void

    .line 634
    .local v1, "accountName":Ljava/lang/String;
    .local v2, "accountType":Ljava/lang/String;
    .restart local v4    # "dataSet":Ljava/lang/String;
    :cond_6
    const-string/jumbo v9, "VCardImport"

    const-string/jumbo v10, "intent does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "dataSet":Ljava/lang/String;
    :cond_7
    new-instance v9, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v9, v1, v2, v4}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    .line 647
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v3    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 648
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_1

    .line 650
    :cond_9
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 652
    return-void

    .line 659
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v3    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    :cond_a
    invoke-static {p0, v8, v7}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->show(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1149
    const v3, 0x7f0e0010

    if-ne p1, v3, :cond_1

    .line 1150
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    .line 1151
    const v3, 0x7f0d01ac

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f0d01a8

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    .line 1154
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1156
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1157
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1158
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardService()V

    .line 1160
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v3

    .line 1161
    :cond_1
    const v3, 0x7f0e0011

    if-ne p1, v3, :cond_3

    .line 1162
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 1163
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1164
    const-string/jumbo v3, "VCardImport"

    const-string/jumbo v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const v3, 0x7f0d0182

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1167
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1168
    const v4, 0x7f0d019c

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1167
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1169
    const v4, 0x1010355

    .line 1167
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1171
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    .line 1167
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1172
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const v5, 0x104000a

    .line 1167
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1173
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 1176
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    return-object v3
.end method

.method public onImportVCardConfirmed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "sourceDisplayName"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport(Landroid/net/Uri;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public onImportVCardDenied()V
    .locals 0

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 689
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1192
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1193
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1194
    const-string/jumbo v0, "VCardImport"

    const-string/jumbo v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showDialog(I)V

    .line 1191
    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4
    .param p1, "reasonId"    # I

    .prologue
    .line 1201
    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1205
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1203
    invoke-static {p0, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 1206
    .local v0, "notification":Landroid/app/Notification;
    const-string/jumbo v2, "VCardServiceFailure"

    .line 1207
    const/4 v3, 0x1

    .line 1206
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1208
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$2;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1199
    return-void
.end method

.method startVCardService()V
    .locals 4

    .prologue
    .line 1180
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;)V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 1182
    const-string/jumbo v1, "VCardImport"

    const-string/jumbo v2, "Bind to VCardService."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1185
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1186
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1187
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v3, 0x1

    .line 1186
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1179
    return-void
.end method
