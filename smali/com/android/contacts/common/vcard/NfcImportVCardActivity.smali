.class public Lcom/android/contacts/common/vcard/NfcImportVCardActivity;
.super Landroid/app/Activity;
.source "NfcImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/contacts/common/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;
    }
.end annotation


# static fields
.field private static final SELECT_ACCOUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcImportVCardActivity"


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mRecord:Landroid/nfc/NdefRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startImport()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    return-void
.end method


# virtual methods
.method createImportRequest()Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 23

    .prologue
    .line 91
    const/4 v11, 0x0

    .line 92
    .local v11, "counter":Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 93
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 95
    .local v9, "vcardVersion":I
    :try_start_0
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 96
    .local v20, "is":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 97
    new-instance v21, Lcom/android/vcard/VCardParser_V21;

    invoke-direct/range {v21 .. v21}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_7

    .line 99
    .local v21, "parser":Lcom/android/vcard/VCardParser;
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v12, "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .local v14, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 102
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 103
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    if-eqz v20, :cond_0

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_a

    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    :cond_0
    :goto_0
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 135
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v20    # "is":Ljava/io/ByteArrayInputStream;
    :goto_1
    new-instance v2, Lcom/android/contacts/common/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 136
    const v5, 0x7f0d01aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    .line 137
    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    .line 135
    const/4 v5, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/common/vcard/ImportRequest;-><init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 120
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catch_0
    move-exception v17

    .local v17, "e":Ljava/io/IOException;
    goto :goto_0

    .line 104
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_1
    move-exception v18

    .line 105
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v18, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_2
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 106
    const/4 v9, 0x2

    .line 107
    new-instance v22, Lcom/android/vcard/VCardParser_V30;

    invoke-direct/range {v22 .. v22}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    .local v22, "parser":Lcom/android/vcard/VCardParser;
    :try_start_6
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_6
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 110
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_7
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_7
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 111
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 112
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 113
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 119
    if-eqz v20, :cond_0

    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_0

    .line 120
    :catch_2
    move-exception v17

    .restart local v17    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 114
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v17    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v19

    .line 115
    .local v19, "e2":Lcom/android/vcard/exception/VCardVersionException;
    :goto_3
    const/4 v2, 0x0

    .line 119
    if-eqz v20, :cond_1

    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_7

    .line 115
    :cond_1
    :goto_4
    return-object v2

    .line 120
    :catch_4
    move-exception v17

    .restart local v17    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 117
    .end local v17    # "e":Ljava/io/IOException;
    .end local v18    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v19    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    .end local v22    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_0
    move-exception v2

    .line 119
    :goto_5
    if-eqz v20, :cond_2

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_b .. :try_end_b} :catch_7

    .line 117
    :cond_2
    :goto_6
    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_7

    .line 123
    .end local v20    # "is":Ljava/io/ByteArrayInputStream;
    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catch_5
    move-exception v17

    .line 124
    .restart local v17    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "NfcImportVCardActivity"

    const-string/jumbo v3, "Failed reading vcard data"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v2, 0x0

    return-object v2

    .line 120
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v20    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catch_6
    move-exception v17

    .restart local v17    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 130
    .end local v17    # "e":Ljava/io/IOException;
    .end local v20    # "is":Ljava/io/ByteArrayInputStream;
    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catch_7
    move-exception v15

    .line 131
    .local v15, "e":Lcom/android/vcard/exception/VCardException;
    :goto_7
    const-string/jumbo v2, "NfcImportVCardActivity"

    const-string/jumbo v3, "Error parsing vcard"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v2, 0x0

    return-object v2

    .line 126
    .end local v15    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_8
    move-exception v16

    .line 127
    .local v16, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_8
    const-string/jumbo v2, "NfcImportVCardActivity"

    const-string/jumbo v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 126
    .end local v16    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "is":Ljava/io/ByteArrayInputStream;
    :catch_9
    move-exception v16

    .restart local v16    # "e":Lcom/android/vcard/exception/VCardNestedException;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v11, "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_8

    .line 130
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v16    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_a
    move-exception v15

    .restart local v15    # "e":Lcom/android/vcard/exception/VCardException;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_7

    .line 117
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v15    # "e":Lcom/android/vcard/exception/VCardException;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_5

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_5

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v18    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v22    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_3
    move-exception v2

    move-object/from16 v21, v22

    .end local v22    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_5

    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v22    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_4
    move-exception v2

    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    move-object/from16 v21, v22

    .end local v22    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_5

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v22    # "parser":Lcom/android/vcard/VCardParser;
    :catchall_5
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    move-object/from16 v21, v22

    .end local v22    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    goto :goto_5

    .line 114
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v21    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v22    # "parser":Lcom/android/vcard/VCardParser;
    :catch_b
    move-exception v19

    .restart local v19    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_3

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v19    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_c
    move-exception v19

    .restart local v19    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_3

    .line 104
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v18    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v19    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    .end local v22    # "parser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v21    # "parser":Lcom/android/vcard/VCardParser;
    :catch_d
    move-exception v18

    .restart local v18    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_2

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_e
    move-exception v18

    .restart local v18    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 198
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 199
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 200
    const-string/jumbo v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string/jumbo v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string/jumbo v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 203
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startImport()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    .line 268
    return-void
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    const-string/jumbo v5, "NfcImportVCardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknowon intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    .line 163
    return-void

    .line 166
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "type":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 168
    const-string/jumbo v5, "text/x-vcard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "text/vcard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    :cond_2
    const-string/jumbo v5, "android.nfc.extra.NDEF_MESSAGES"

    .line 174
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    aget-object v3, v5, v7

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 176
    .local v3, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    .line 178
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 181
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-static {v1}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getWriteableWithoutSimAccounts(Lcom/android/contacts/common/model/AccountTypeManager;)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 184
    iput-object v9, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startImport()V

    .line 152
    return-void

    .line 169
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v3    # "msg":Landroid/nfc/NdefMessage;
    :cond_3
    const-string/jumbo v5, "NfcImportVCardActivity"

    const-string/jumbo v6, "Not a vcard"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    .line 172
    return-void

    .line 185
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .restart local v3    # "msg":Landroid/nfc/NdefMessage;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 186
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v5, p0, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    goto :goto_0

    .line 188
    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v8}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;

    .prologue
    .line 263
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 258
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/common/vcard/ImportRequest;I)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v0, "NfcImportVCardActivity"

    const-string/jumbo v1, "Late import failure -- ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 244
    :cond_0
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/common/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const-string/jumbo v2, "NfcImportVCardActivity"

    const-string/jumbo v3, "Late import -- ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_0
    if-eqz p3, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    .local v0, "contactUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/android/contacts/common/util/ImplicitIntentsUtil;->startActivityInAppIfPossible(Landroid/content/Context;Landroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity;->finish()V

    .line 229
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onImportParsed(Lcom/android/contacts/common/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 224
    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V
    .locals 0
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    .line 218
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 142
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v0

    .line 143
    .local v0, "service":Lcom/android/contacts/common/vcard/VCardService;
    new-instance v1, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;-><init>(Lcom/android/contacts/common/vcard/NfcImportVCardActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/contacts/common/vcard/VCardService;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/NfcImportVCardActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 147
    return-void
.end method
