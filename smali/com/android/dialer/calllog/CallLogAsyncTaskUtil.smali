.class public Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;
.super Ljava/lang/Object;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallDetailQuery;,
        Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;,
        Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogDeleteBlockedCallQuery;,
        Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;,
        Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->getPhoneCallDetailsForUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteBlockedCall(Landroid/content/Context;Ljava/lang/String;JLcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "timeAddedMs"    # J
    .param p4, "listener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;

    .prologue
    .line 304
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 305
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 308
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v7, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_BLOCKED_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$3;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-interface {v0, v7, v1, v2}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    return-void
.end method

.method public static deleteCalls(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callIds"    # Ljava/lang/String;
    .param p2, "callLogAsyncTaskListener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .prologue
    .line 267
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 268
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 271
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    return-void
.end method

.method public static deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "callLogAsyncTaskListener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .prologue
    .line 372
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 376
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_VOICEMAIL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$5;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 371
    return-void
.end method

.method public static getCallDetails(Landroid/content/Context;[Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callUris"    # [Landroid/net/Uri;
    .param p2, "callLogAsyncTaskListener"    # Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;

    .prologue
    .line 144
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 148
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->GET_CALL_DETAILS:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 149
    new-instance v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;

    invoke-direct {v2, p1, p0, p2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$1;-><init>([Landroid/net/Uri;Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    .line 148
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    return-void
.end method

.method private static getPhoneCallDetailsForUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 182
    sget-object v4, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallDetailQuery;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 181
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 185
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_4

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, "countryIso":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 193
    const/16 v3, 0xc

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "postDialDigits":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    const/16 v3, 0xd

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 197
    .local v16, "viaNumber":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x6

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 200
    .local v5, "numberPresentation":I
    const/4 v3, 0x7

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    const/16 v6, 0x8

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-static {v3, v6}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    .line 205
    .local v9, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v10, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    .local v10, "contactInfoHelper":Lcom/android/dialer/calllog/ContactInfoHelper;
    move-object/from16 v0, p0

    invoke-static {v0, v9, v4}, Lcom/android/dialer/util/PhoneNumberUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 208
    .local v8, "isVoicemail":Z
    invoke-static {v4, v5}, Lcom/android/dialer/util/PhoneNumberUtil;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v8, :cond_8

    :cond_0
    const/4 v15, 0x0

    .line 209
    .local v15, "shouldLookupNumber":Z
    :goto_2
    sget-object v13, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    .line 211
    .local v13, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v15, :cond_1

    .line 212
    invoke-virtual {v10, v4, v11}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v14

    .line 213
    .local v14, "lookupInfo":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v14, :cond_9

    move-object v13, v14

    .line 216
    .end local v14    # "lookupInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_1
    :goto_3
    new-instance v2, Lcom/android/dialer/PhoneCallDetails;

    .line 217
    iget-object v6, v13, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v3, p0

    .line 216
    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/PhoneCallDetails;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 220
    .local v2, "details":Lcom/android/dialer/PhoneCallDetails;
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    .line 221
    iput-object v9, v2, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 222
    iget-object v3, v13, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 223
    iget-object v3, v13, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    .line 224
    iget-object v3, v13, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->nameAlternative:Ljava/lang/CharSequence;

    .line 225
    iget v3, v13, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iput v3, v2, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 226
    iget-object v3, v13, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 227
    iget-object v3, v13, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 228
    iget v3, v13, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    iput v3, v2, Lcom/android/dialer/PhoneCallDetails;->sourceType:I

    .line 229
    iget-object v3, v13, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->objectId:Ljava/lang/String;

    .line 231
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 232
    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v17, 0x0

    aput v6, v3, v17

    .line 231
    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    .line 234
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 235
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/android/dialer/PhoneCallDetails;->duration:J

    .line 236
    const/16 v3, 0x9

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/dialer/PhoneCallDetails;->features:I

    .line 237
    const/4 v3, 0x5

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 238
    const/16 v3, 0xb

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    .line 240
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .end local v11    # "countryIso":Ljava/lang/String;
    :goto_4
    iput-object v11, v2, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 243
    const/16 v3, 0xa

    invoke-interface {v12, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    const/16 v3, 0xa

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/dialer/PhoneCallDetails;->dataUsage:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_2
    if-eqz v12, :cond_3

    .line 250
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_3
    return-object v2

    .line 186
    .end local v2    # "details":Lcom/android/dialer/PhoneCallDetails;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "numberPresentation":I
    .end local v7    # "postDialDigits":Ljava/lang/String;
    .end local v8    # "isVoicemail":Z
    .end local v9    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v10    # "contactInfoHelper":Lcom/android/dialer/calllog/ContactInfoHelper;
    .end local v13    # "info":Lcom/android/dialer/calllog/ContactInfo;
    .end local v15    # "shouldLookupNumber":Z
    .end local v16    # "viaNumber":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Cannot find content: "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :catchall_0
    move-exception v3

    .line 249
    if-eqz v12, :cond_5

    .line 250
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_5
    throw v3

    .line 193
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v11    # "countryIso":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v7, ""

    .restart local v7    # "postDialDigits":Ljava/lang/String;
    goto/16 :goto_0

    .line 195
    :cond_7
    const-string/jumbo v16, ""

    .restart local v16    # "viaNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 208
    .restart local v5    # "numberPresentation":I
    .restart local v8    # "isVoicemail":Z
    .restart local v9    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "contactInfoHelper":Lcom/android/dialer/calllog/ContactInfoHelper;
    :cond_8
    const/4 v15, 0x1

    .restart local v15    # "shouldLookupNumber":Z
    goto/16 :goto_2

    .line 213
    .restart local v13    # "info":Lcom/android/dialer/calllog/ContactInfo;
    .restart local v14    # "lookupInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_9
    sget-object v13, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    goto/16 :goto_3

    .line 241
    .end local v14    # "lookupInfo":Lcom/android/dialer/calllog/ContactInfo;
    .restart local v2    # "details":Lcom/android/dialer/PhoneCallDetails;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    goto :goto_4
.end method

.method private static initTaskExecutor()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 136
    return-void
.end method

.method public static markCallAsRead(Landroid/content/Context;[J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callIds"    # [J

    .prologue
    .line 393
    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_1

    .line 397
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 400
    :cond_1
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_CALL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$6;

    invoke-direct {v2, p1, p0}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$6;-><init>([JLandroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    return-void
.end method

.method public static markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 348
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 352
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$4;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void
.end method

.method public static resetForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 460
    return-void
.end method

.method public static updateVoicemailDuration(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "duration"    # J

    .prologue
    .line 432
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPhonePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    if-nez v0, :cond_0

    .line 436
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->initTaskExecutor()V

    .line 439
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->sAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->UPDATE_DURATION:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    new-instance v2, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$7;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 431
    return-void

    .line 433
    :cond_1
    return-void
.end method
