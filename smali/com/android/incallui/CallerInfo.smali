.class public Lcom/android/incallui/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field private static final BACKWARD_COMPATIBLE_NON_SIP_DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public callSubject:Ljava/lang/String;

.field public cnapName:Ljava/lang/String;

.field public contactDisplayPhotoUri:Landroid/net/Uri;

.field public contactExists:Z

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public forwardingNumber:Ljava/lang/String;

.field public geoDescription:Ljava/lang/String;

.field public isAutoRecording:Z

.field public isCachedPhotoCurrent:Z

.field public lookupKeyOrNull:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

.field public name:Ljava/lang/String;

.field public nameAlternative:Ljava/lang/String;

.field public namePresentation:I

.field public needUpdate:Z

.field public normalizedNumber:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public phonebookLabel:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z

.field public starred:I

.field public userType:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v3

    .line 57
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 58
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v5

    .line 59
    const-string/jumbo v1, "number"

    aput-object v1, v0, v6

    .line 60
    const-string/jumbo v1, "normalized_number"

    aput-object v1, v0, v7

    .line 61
    const-string/jumbo v1, "label"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "photo_uri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "custom_ringtone"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "send_to_voicemail"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "starred"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "is_autorecording"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/incallui/CallerInfo;->DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    .line 73
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 75
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 76
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v5

    .line 77
    const-string/jumbo v1, "number"

    aput-object v1, v0, v6

    .line 78
    const-string/jumbo v1, "normalized_number"

    aput-object v1, v0, v7

    .line 79
    const-string/jumbo v1, "label"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "photo_uri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "custom_ringtone"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "send_to_voicemail"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 72
    sput-object v0, Lcom/android/incallui/CallerInfo;->BACKWARD_COMPATIBLE_NON_SIP_DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/CallerInfo;->userType:J

    .line 212
    return-void
.end method

.method static doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "previousResult"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 401
    iget-boolean v1, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    .line 402
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    .line 401
    if-eqz v1, :cond_0

    .line 403
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "username":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 407
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    invoke-static {p0, v1}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;

    move-result-object p2

    .line 410
    .end local v0    # "username":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method private static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/incallui/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 385
    invoke-static {p0, p1, v0}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 228
    new-instance v5, Lcom/android/incallui/CallerInfo;

    invoke-direct {v5}, Lcom/android/incallui/CallerInfo;-><init>()V

    .line 229
    .local v5, "info":Lcom/android/incallui/CallerInfo;
    const/4 v7, 0x0

    iput v7, v5, Lcom/android/incallui/CallerInfo;->photoResource:I

    .line 230
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 231
    const/4 v7, 0x0

    iput v7, v5, Lcom/android/incallui/CallerInfo;->numberType:I

    .line 232
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 233
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 234
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    .line 235
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 236
    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/incallui/CallerInfo;->userType:J

    .line 239
    const/4 v7, 0x0

    iput v7, v5, Lcom/android/incallui/CallerInfo;->starred:I

    .line 240
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->isAutoRecording:Z

    .line 243
    const-string/jumbo v7, "CallerInfo"

    const-string/jumbo v8, "getCallerInfo() based on cursor..."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    if-eqz p2, :cond_9

    .line 246
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 251
    const-wide/16 v2, 0x0

    .line 255
    .local v2, "contactId":J
    const-string/jumbo v7, "display_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "columnIndex":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 257
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 261
    :cond_0
    const-string/jumbo v7, "number"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 262
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    .line 263
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 268
    :cond_1
    const-string/jumbo v7, "starred"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 269
    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    .line 270
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/incallui/CallerInfo;->starred:I

    .line 273
    :cond_2
    const-string/jumbo v7, "is_autorecording"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 274
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 275
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->isAutoRecording:Z

    .line 278
    :cond_3
    const-string/jumbo v7, "phonebook_label"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 279
    const/4 v7, -0x1

    if-eq v0, v7, :cond_4

    .line 280
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->phonebookLabel:Ljava/lang/String;

    .line 285
    :cond_4
    const-string/jumbo v7, "normalized_number"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 286
    const/4 v7, -0x1

    if-eq v0, v7, :cond_5

    .line 287
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 291
    :cond_5
    const-string/jumbo v7, "label"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 292
    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 293
    const-string/jumbo v7, "type"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 294
    .local v6, "typeColumnIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 295
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/incallui/CallerInfo;->numberType:I

    .line 296
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 298
    iget v8, v5, Lcom/android/incallui/CallerInfo;->numberType:I

    iget-object v9, v5, Lcom/android/incallui/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 297
    invoke-static {v7, v8, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 304
    .end local v6    # "typeColumnIndex":I
    :cond_6
    invoke-static {p1, p2}, Lcom/android/incallui/CallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    .line 305
    const/4 v7, -0x1

    if-eq v0, v7, :cond_c

    .line 306
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 308
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-nez v7, :cond_b

    .line 309
    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 328
    :cond_7
    :goto_1
    const-string/jumbo v7, "photo_uri"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 329
    const/4 v7, -0x1

    if-eq v0, v7, :cond_d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 330
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 337
    :goto_2
    const-string/jumbo v7, "custom_ringtone"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 338
    const/4 v7, -0x1

    if-eq v0, v7, :cond_f

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 339
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 341
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 351
    :goto_3
    const-string/jumbo v7, "send_to_voicemail"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 352
    const/4 v7, -0x1

    if-eq v0, v7, :cond_11

    .line 353
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    const/4 v7, 0x1

    .line 352
    :goto_4
    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->shouldSendToVoicemail:Z

    .line 354
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 357
    if-nez p1, :cond_12

    const/4 v1, 0x0

    .line 359
    .local v1, "directory":Ljava/lang/String;
    :goto_5
    if-nez v1, :cond_13

    const/4 v4, 0x0

    .line 360
    :goto_6
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/incallui/CallerInfo;->userType:J

    .line 363
    iget-object v7, v5, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iget-wide v8, v5, Lcom/android/incallui/CallerInfo;->userType:J

    .line 362
    invoke-static {p0, v7, v8, v9}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookUpDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->nameAlternative:Ljava/lang/String;

    .line 365
    .end local v0    # "columnIndex":I
    .end local v1    # "directory":Ljava/lang/String;
    .end local v2    # "contactId":J
    :cond_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_9
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/incallui/CallerInfo;->needUpdate:Z

    .line 369
    iget-object v7, v5, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/incallui/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 370
    iput-object p1, v5, Lcom/android/incallui/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 372
    return-object v5

    .line 275
    .restart local v0    # "columnIndex":I
    .restart local v2    # "contactId":J
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 310
    :cond_b
    iput-wide v2, v5, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    .line 311
    const-string/jumbo v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "==> got info.contactIdOrZero: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v5, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v7, "lookup"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 315
    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    .line 316
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    goto/16 :goto_1

    .line 321
    :cond_c
    const-string/jumbo v7, "CallerInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find contactId column for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 332
    :cond_d
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 343
    :cond_e
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 346
    :cond_f
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 353
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 352
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 358
    :cond_12
    const-string/jumbo v7, "directory"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 359
    .restart local v1    # "directory":Ljava/lang/String;
    :cond_13
    invoke-static {v1}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .local v4, "directoryId":Ljava/lang/Long;
    goto/16 :goto_6
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 6
    .param p0, "contactRef"    # Landroid/net/Uri;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 540
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    const-string/jumbo v5, "\'..."

    .line 540
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 548
    .local v1, "columnName":Ljava/lang/String;
    const-string/jumbo v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    const-string/jumbo v1, "contact_id"

    .line 568
    .end local v1    # "columnName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 569
    .local v0, "columnIndex":I
    :goto_1
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==> Using column \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    const-string/jumbo v5, "\' (columnIndex = "

    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    const-string/jumbo v5, ") for person_id lookup..."

    .line 569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    return v0

    .line 553
    .end local v0    # "columnIndex":I
    .restart local v1    # "columnName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "contact_id"

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 559
    .local v1, "columnName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    const-string/jumbo v3, "CallerInfo"

    const-string/jumbo v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-static {p0}, Lcom/android/dialer/util/PhoneLookupUtil;->getContactIdColumnNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .local v1, "columnName":Ljava/lang/String;
    goto :goto_0

    .line 566
    .local v1, "columnName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "columnIndex":I
    goto :goto_1
.end method

.method public static getDefaultPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 3
    .param p0, "phoneLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 88
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/android/incallui/CallerInfo;->DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v1

    .line 93
    :cond_0
    const-string/jumbo v1, "sip"

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "isSip":Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/incallui/CallerInfo;->DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v1

    .line 95
    :cond_1
    sget-object v1, Lcom/android/incallui/CallerInfo;->BACKWARD_COMPATIBLE_NON_SIP_DEFAULT_PHONELOOKUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 490
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 491
    :cond_0
    return-object p0

    .line 493
    :cond_1
    return-object v1
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    return v0
.end method

.method markAsEmergency(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    const v0, 0x7f0d0404

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 439
    const v0, 0x7f020213

    iput v0, p0, Lcom/android/incallui/CallerInfo;->photoResource:I

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    .line 442
    return-object p0
.end method

.method markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 447
    const v0, 0x7f0d0404

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 448
    iput-object p2, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 450
    const v0, 0x7f020213

    iput v0, p0, Lcom/android/incallui/CallerInfo;->photoResource:I

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfo;->mIsEmergency:Z

    .line 453
    return-object p0
.end method

.method markAsVoiceMail(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/CallerInfo;->mIsVoiceMail:Z

    .line 470
    :try_start_0
    invoke-static {p1}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 471
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 473
    const v1, 0x7f02028d

    iput v1, p0, Lcom/android/incallui/CallerInfo;->photoResource:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-object p0

    .line 475
    :catch_0
    move-exception v0

    .line 481
    .local v0, "se":Ljava/lang/SecurityException;
    const-string/jumbo v1, "CallerInfo"

    const-string/jumbo v2, "Cannot access VoiceMail."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 630
    .local v0, "VERBOSE_DEBUG":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 631
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    const-string/jumbo v2, "name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 633
    const-string/jumbo v2, ", phoneNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 634
    const-string/jumbo v2, " }"

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 632
    :cond_0
    const-string/jumbo v1, "non-null"

    goto :goto_0

    .line 633
    :cond_1
    const-string/jumbo v1, "non-null"

    goto :goto_1
.end method

.method public updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackNumber"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 588
    .local v0, "number":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/android/dialer/util/PhoneNumberUtil;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 586
    return-void

    .line 587
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0
.end method
