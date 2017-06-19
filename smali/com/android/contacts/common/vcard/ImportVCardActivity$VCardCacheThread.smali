.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceDisplayNames:[Ljava/lang/String;

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "sourceUris"    # [Landroid/net/Uri;
    .param p3, "sourceDisplayNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 223
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 225
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceDisplayNames:[Ljava/lang/String;

    .line 226
    iput-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    .line 227
    move-object v0, p1

    .line 229
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 232
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "VCardImport"

    .line 231
    const v3, 0x20000006

    .line 230
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    iput-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    .line 223
    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 21
    .param p1, "data"    # [B
    .param p2, "localDataUri"    # Landroid/net/Uri;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 351
    .local v19, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 352
    .local v10, "count":I
    const/4 v11, 0x0

    .line 353
    .local v11, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 355
    .local v9, "vcardVersion":I
    const/16 v20, 0x0

    .line 357
    .local v20, "shouldUseV30":Z
    if-eqz p1, :cond_1

    .line 358
    :try_start_0
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v17, "is":Ljava/io/InputStream;
    move-object/from16 v18, v17

    .line 362
    .end local v17    # "is":Ljava/io/InputStream;
    .local v18, "is":Ljava/io/InputStream;
    :goto_0
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 365
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v12}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v12, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parseOne(Ljava/io/InputStream;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap2(Lcom/android/contacts/common/vcard/ImportVCardActivity;[BLandroid/net/Uri;)I
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v10

    .line 394
    if-eqz v18, :cond_0

    .line 396
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_0
    :goto_1
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v11, v12

    .line 402
    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v11, "detector":Lcom/android/vcard/VCardSourceDetector;
    :goto_2
    if-eqz v20, :cond_5

    const/4 v9, 0x2

    .line 411
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v17    # "is":Ljava/io/InputStream;
    :goto_3
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get0(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v3

    .line 413
    invoke-virtual {v11}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    .line 414
    invoke-virtual {v11}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 411
    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 360
    .local v11, "detector":Lcom/android/vcard/VCardSourceDetector;
    :cond_1
    :try_start_4
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v17

    .restart local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v18, v17

    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 397
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/io/IOException;
    goto :goto_1

    .line 370
    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_1
    move-exception v15

    .line 372
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v15, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_4
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 376
    :goto_5
    const/16 v20, 0x1

    .line 377
    if-eqz p1, :cond_3

    .line 378
    :try_start_6
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    :goto_6
    :try_start_7
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 385
    :try_start_8
    new-instance v12, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v12}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 387
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parseOne(Ljava/io/InputStream;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap2(Lcom/android/contacts/common/vcard/ImportVCardActivity;[BLandroid/net/Uri;)I
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v10

    .line 394
    if-eqz v17, :cond_2

    .line 396
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_7

    :cond_2
    :goto_7
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v11, "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_2

    .line 373
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 380
    .end local v14    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_b
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v17

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 390
    :catch_3
    move-exception v16

    .line 391
    .local v16, "e2":Lcom/android/vcard/exception/VCardVersionException;
    :goto_8
    :try_start_c
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string/jumbo v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 393
    .end local v16    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    .line 394
    .end local v15    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_9
    if-eqz v17, :cond_4

    .line 396
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_d .. :try_end_d} :catch_4

    .line 393
    :cond_4
    :goto_a
    :try_start_e
    throw v2
    :try_end_e
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_e .. :try_end_e} :catch_4

    .line 403
    .end local v17    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v13

    .line 404
    .local v13, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_b
    const-string/jumbo v2, "VCardImport"

    const-string/jumbo v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 397
    .end local v13    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v15    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v17    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_7

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :catch_6
    move-exception v14

    .restart local v14    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 402
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 403
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_7
    move-exception v13

    .restart local v13    # "e":Lcom/android/vcard/exception/VCardNestedException;
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_b

    .line 393
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v13    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_9

    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v15    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_3
    move-exception v2

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_9

    .line 390
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_8
    move-exception v16

    .restart local v16    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_8

    .line 370
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v15    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v16    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v15

    .restart local v15    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 425
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 423
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "VCardImport"

    const-string/jumbo v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 237
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 432
    const-string/jumbo v0, "VCardImport"

    const-string/jumbo v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    .line 431
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 246
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "vCard cache thread starts running."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v14

    if-nez v14, :cond_0

    .line 248
    new-instance v14, Ljava/lang/NullPointerException;

    const-string/jumbo v15, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v14, :cond_1

    .line 255
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "vCard cache operation is canceled."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 256
    return-void

    .line 327
    :catch_0
    move-exception v6

    .line 328
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .line 268
    .local v3, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 269
    .local v2, "cache_index":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v11, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_3

    .line 272
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    :goto_2
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 330
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 245
    .end local v2    # "cache_index":I
    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :goto_4
    return-void

    .line 273
    .restart local v2    # "cache_index":I
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_1
    move-exception v4

    .line 274
    .local v4, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_6
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Maybe the file is in wrong format"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v15, 0x7f0d018c

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 330
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 276
    return-void

    .line 327
    :catch_2
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 279
    .end local v4    # "e":Lcom/android/vcard/exception/VCardException;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v8, 0x0

    .line 280
    .local v8, "i":I
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v9, v8

    .end local v8    # "i":I
    .local v9, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget-object v13, v15, v14

    .line 281
    .local v13, "sourceUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 282
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "vCard cache operation is canceled."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 312
    .end local v2    # "cache_index":I
    .end local v3    # "context":Landroid/content/Context;
    .end local v9    # "i":I
    .end local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    .end local v13    # "sourceUri":Landroid/net/Uri;
    :catch_3
    move-exception v7

    .line 313
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    :try_start_9
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "OutOfMemoryError occured during caching vCard"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v15, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v16, v0

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0d018a

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 315
    invoke-direct/range {v15 .. v17}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 330
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_4

    .line 286
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "cache_index":I
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v9    # "i":I
    .restart local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    .restart local v13    # "sourceUri":Landroid/net/Uri;
    :cond_4
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mSourceDisplayNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-object v12, v17, v9
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 290
    .local v12, "sourceDisplayName":Ljava/lang/String;
    const/16 v17, 0x0

    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/common/vcard/ImportRequest;
    :try_end_c
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v10

    .line 300
    .local v10, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 301
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "vCard cache operation is canceled."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 330
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 302
    return-void

    .line 295
    .end local v10    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :catch_4
    move-exception v5

    .line 296
    .local v5, "e":Ljava/io/IOException;
    :try_start_f
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Unexpected IOException"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v15, 0x7f0d0189

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 330
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 298
    return-void

    .line 327
    :catch_5
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 291
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 292
    .restart local v4    # "e":Lcom/android/vcard/exception/VCardException;
    :try_start_11
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Maybe the file is in wrong format"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const v15, 0x7f0d018c

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 330
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 294
    return-void

    .line 327
    :catch_7
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 327
    .end local v4    # "e":Lcom/android/vcard/exception/VCardException;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :catch_8
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 304
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_13
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v14, v14, 0x1

    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_6

    .line 310
    .end local v9    # "i":I
    .end local v10    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    .end local v12    # "sourceDisplayName":Ljava/lang/String;
    .end local v13    # "sourceUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Empty import requests. Ignore it."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_2

    .line 317
    .end local v2    # "cache_index":I
    .end local v3    # "context":Landroid/content/Context;
    .end local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_9
    move-exception v5

    .line 318
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_14
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "IOException during caching vCard"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    new-instance v15, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v16, v0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0d0189

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 319
    invoke-direct/range {v15 .. v17}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 322
    const-string/jumbo v14, "VCardImport"

    const-string/jumbo v15, "Finished caching vCard."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 330
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v14}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto/16 :goto_4

    .line 327
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "cache_index":I
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    :catch_a
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 327
    .end local v2    # "cache_index":I
    .end local v3    # "context":Landroid/content/Context;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    .restart local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 327
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unbindService Exception e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 321
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v14

    .line 322
    const-string/jumbo v15, "VCardImport"

    const-string/jumbo v16, "Finished caching vCard."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 326
    :try_start_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get2(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    .line 330
    :goto_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get4(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->dismiss()V

    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-set1(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 332
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v15}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    .line 321
    throw v14

    .line 327
    :catch_d
    move-exception v6

    .line 328
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v15, "VCardImport"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unbindService Exception e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method
