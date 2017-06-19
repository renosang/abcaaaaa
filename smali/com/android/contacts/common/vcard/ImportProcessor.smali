.class public Lcom/android/contacts/common/vcard/ImportProcessor;
.super Lcom/android/contacts/common/vcard/ProcessorBase;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardImport"


# instance fields
.field private volatile mCanceled:Z

.field private mCurrentCount:I

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFivePercentCount:I

.field private final mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

.field private final mJobId:I

.field private final mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/common/vcard/VCardService;

.field private mTotalCount:I

.field private mVCardParser:Lcom/android/vcard/VCardParser;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/contacts/common/vcard/VCardService;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .param p3, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p4, "jobId"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ProcessorBase;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    .line 64
    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    .line 65
    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    .line 66
    iput v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFivePercentCount:I

    .line 70
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 71
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 72
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .line 74
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    .line 75
    iput p4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    .line 69
    return-void
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "vcardType"    # I
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "interpreter"    # Lcom/android/vcard/VCardInterpreter;
    .param p5, "possibleVCardVersions"    # [I

    .prologue
    .line 250
    const/4 v8, 0x0

    .line 251
    .local v8, "successful":Z
    move-object/from16 v0, p5

    array-length v7, v0

    .line 252
    .local v7, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 253
    aget v9, p5, v6

    .line 255
    .local v9, "vcardVersion":I
    if-lez v6, :cond_0

    :try_start_0
    move-object/from16 v0, p4

    instance-of v10, v0, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v10, :cond_0

    .line 257
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 264
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 266
    :try_start_1
    new-instance v10, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v10, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    .line 265
    :goto_1
    iput-object v10, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 269
    const-string/jumbo v10, "VCardImport"

    const-string/jumbo v11, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v10}, Lcom/android/vcard/VCardParser;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit p0

    .line 274
    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, p4

    invoke-virtual {v10, p1, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 276
    const/4 v8, 0x1

    .line 300
    if-eqz p1, :cond_2

    .line 302
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 309
    .end local v9    # "vcardVersion":I
    :cond_2
    :goto_2
    return v8

    .line 267
    .restart local v9    # "vcardVersion":I
    :cond_3
    :try_start_4
    new-instance v10, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v10, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v10

    :try_start_5
    monitor-exit p0

    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 278
    :catch_0
    move-exception v5

    .line 279
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v10, "VCardImport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException was emitted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 300
    if-eqz p1, :cond_4

    .line 302
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 252
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 303
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 297
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 298
    .local v1, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_8
    const-string/jumbo v10, "VCardImport"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 300
    if-eqz p1, :cond_4

    .line 302
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 303
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 291
    .end local v1    # "e":Lcom/android/vcard/exception/VCardException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 292
    .local v4, "e":Lcom/android/vcard/exception/VCardVersionException;
    add-int/lit8 v10, v7, -0x1

    if-ne v6, v10, :cond_5

    .line 293
    :try_start_a
    const-string/jumbo v10, "VCardImport"

    const-string/jumbo v11, "Appropriate version for this vCard is not found."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 300
    :cond_5
    if-eqz p1, :cond_4

    .line 302
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    .line 303
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 289
    .end local v4    # "e":Lcom/android/vcard/exception/VCardVersionException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 290
    .local v3, "e":Lcom/android/vcard/exception/VCardNotSupportedException;
    :try_start_c
    const-string/jumbo v10, "VCardImport"

    invoke-virtual {v3}, Lcom/android/vcard/exception/VCardNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 300
    if-eqz p1, :cond_4

    .line 302
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_3

    .line 303
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 280
    .end local v3    # "e":Lcom/android/vcard/exception/VCardNotSupportedException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 288
    .local v2, "e":Lcom/android/vcard/exception/VCardNestedException;
    :try_start_e
    const-string/jumbo v10, "VCardImport"

    const-string/jumbo v11, "Nested Exception is found."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 300
    if-eqz p1, :cond_4

    .line 302
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_3

    .line 303
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v2    # "e":Lcom/android/vcard/exception/VCardNestedException;
    :catch_a
    move-exception v5

    goto :goto_3

    .line 299
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 300
    if-eqz p1, :cond_6

    .line 302
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 299
    :cond_6
    :goto_4
    throw v10

    .line 303
    :catch_b
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method private runInternal()V
    .locals 24

    .prologue
    .line 133
    const-string/jumbo v4, "VCardImport"

    const-string/jumbo v20, "vCard import (id: %d) has started."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v16, v0

    .line 135
    .local v16, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const-string/jumbo v4, "VCardImport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Canceled before actually handling parameter ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 140
    :cond_0
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    if-nez v4, :cond_5

    .line 146
    const/4 v4, 0x1

    .line 147
    const/16 v20, 0x2

    .line 145
    move/from16 v0, v20

    filled-new-array {v4, v0}, [I

    move-result-object v9

    .line 155
    .local v9, "possibleVCardVersions":[I
    :goto_0
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 156
    .local v18, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 157
    .local v10, "account":Landroid/accounts/Account;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    .line 158
    .local v6, "estimatedVCardType":I
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 159
    .local v7, "estimatedCharset":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v14, v0, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    .line 160
    .local v14, "entryCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    add-int/2addr v4, v14

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    .line 161
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x64

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFivePercentCount:I

    .line 164
    new-instance v8, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v8, v6, v10, v7}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 165
    .local v8, "constructor":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v11, Lcom/android/vcard/VCardEntryCommitter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v11, v4}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 166
    .local v11, "committer":Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v8, v11}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 172
    .local v17, "successful":Z
    if-eqz v18, :cond_6

    .line 173
    :try_start_0
    const-string/jumbo v4, "VCardImport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "start importing one vCard (Uri: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 180
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    move-object/from16 v4, p0

    .line 181
    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/common/vcard/ImportProcessor;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 187
    .end local v17    # "successful":Z
    :cond_2
    if-eqz v5, :cond_3

    .line 189
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mService:Lcom/android/contacts/common/vcard/VCardService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/contacts/common/vcard/VCardService;->handleFinishImportNotification(IZ)V

    .line 198
    if-eqz v17, :cond_c

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 202
    const-string/jumbo v4, "VCardImport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "vCard import has been canceled (uri: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4
    :goto_3
    return-void

    .line 150
    .end local v6    # "estimatedVCardType":I
    .end local v7    # "estimatedCharset":Ljava/lang/String;
    .end local v8    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .end local v9    # "possibleVCardVersions":[I
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v11    # "committer":Lcom/android/vcard/VCardEntryCommitter;
    .end local v14    # "entryCount":I
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v4, 0x1

    new-array v9, v4, [I

    .line 151
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    const/16 v20, 0x0

    aput v4, v9, v20

    .line 150
    .restart local v9    # "possibleVCardVersions":[I
    goto/16 :goto_0

    .line 175
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "estimatedVCardType":I
    .restart local v7    # "estimatedCharset":Ljava/lang/String;
    .restart local v8    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .restart local v10    # "account":Landroid/accounts/Account;
    .restart local v11    # "committer":Lcom/android/vcard/VCardEntryCommitter;
    .restart local v14    # "entryCount":I
    .restart local v17    # "successful":Z
    .restart local v18    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportRequest;->data:[B

    if-eqz v4, :cond_1

    .line 176
    const-string/jumbo v4, "VCardImport"

    const-string/jumbo v20, "start importing one vCard (byte[])"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v15, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportRequest;->data:[B

    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v15, "is":Ljava/io/InputStream;
    move-object v5, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    goto :goto_1

    .line 190
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v17    # "successful":Z
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 184
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v17    # "successful":Z
    :catch_1
    move-exception v12

    .line 185
    .local v12, "e":Ljava/io/IOException;
    const/16 v17, 0x0

    .line 187
    if-eqz v5, :cond_3

    .line 189
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 190
    :catch_2
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 186
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 187
    if-eqz v5, :cond_7

    .line 189
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 186
    :cond_7
    :goto_4
    throw v4

    .line 190
    :catch_3
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 205
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "successful":Z
    :cond_8
    const-string/jumbo v4, "VCardImport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Successfully finished importing one vCard file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v19

    .line 210
    .local v19, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-wide/16 v20, 0x64

    :try_start_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 216
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    if-eqz v4, :cond_4

    .line 227
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_9

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_9

    .line 228
    const-string/jumbo v4, "VCardImport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Successfully finished importing one contact: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v22, v0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v4}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_3

    .line 211
    :catch_4
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 231
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_9
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 233
    :cond_a
    const-string/jumbo v4, "VCardImport"

    const-string/jumbo v20, "Created Uris is null or 0 length though the creation itself is successful."

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_b
    const-string/jumbo v4, "VCardImport"

    const-string/jumbo v20, "Successfully finished importing many contacts"

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v4, v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_3

    .line 242
    .end local v19    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_c
    const-string/jumbo v4, "VCardImport"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed to read one vCard file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 315
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 318
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCanceled:Z

    .line 319
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 324
    return v1

    .line 319
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 329
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCanceled:Z
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

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/vcard/VCardEntry;

    .prologue
    const/4 v1, 0x1

    .line 90
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    .line 91
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    if-eqz v0, :cond_1

    .line 94
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFivePercentCount:I

    if-le v0, v1, :cond_3

    .line 95
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    iget v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mFivePercentCount:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    iget v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V

    .line 89
    :cond_1
    :goto_1
    return-void

    .line 95
    :cond_2
    iget v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    iget v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    iget v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mCurrentCount:I

    iget v5, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mTotalCount:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->runInternal()V

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportProcessor;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/common/vcard/ImportRequest;

    iget v4, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v2, v3, v4}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :cond_0
    monitor-enter p0

    .line 127
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 111
    return-void

    .line 126
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "VCardImport"

    const-string/jumbo v3, "RuntimeException thrown during import"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    .line 126
    monitor-enter p0

    .line 127
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ImportProcessor;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    .line 125
    throw v2

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string/jumbo v2, "VCardImport"

    const-string/jumbo v3, "OutOfMemoryError thrown during import"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_2
    move-exception v2

    monitor-exit p0

    throw v2
.end method
