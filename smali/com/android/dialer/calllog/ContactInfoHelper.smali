.class public Lcom/android/dialer/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->TAG:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    .line 58
    sput-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private createPhoneLookupContactInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6
    .param p1, "phoneLookupCursor"    # Landroid/database/Cursor;
    .param p2, "lookupKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 194
    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 195
    .local v0, "info":Lcom/android/dialer/calllog/ContactInfo;
    iput-object p2, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupKey:Ljava/lang/String;

    .line 196
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3, p2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 198
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 199
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 200
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 201
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 202
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 203
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 204
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 205
    iput-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 207
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 206
    invoke-static {v5, v1}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    .line 209
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->phonebookLabel:Ljava/lang/String;

    .line 211
    return-object v0
.end method

.method private static createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    .line 131
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "data1"

    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "data2"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 130
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    .local v0, "contactRows":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "display_name"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 134
    const-string/jumbo v4, "display_name_source"

    const/16 v5, 0x14

    .line 133
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 135
    const-string/jumbo v4, "vnd.android.cursor.item/contact"

    .line 133
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "jsonString":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 139
    const-string/jumbo v4, "encoded"

    .line 137
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 140
    const-string/jumbo v4, "directory"

    .line 141
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 144
    .end local v0    # "contactRows":Lorg/json/JSONObject;
    .end local v2    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    return-object v3
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, ""

    return-object v0

    .line 285
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    return-object p1

    .line 288
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object p3, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 291
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 436
    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 437
    .local v0, "info":Lcom/android/dialer/calllog/ContactInfo;
    const/16 v4, 0xb

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 438
    const/16 v4, 0x8

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 439
    const/16 v4, 0x9

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 440
    const/16 v4, 0xa

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 441
    const/16 v4, 0xc

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "matchedNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 443
    sget v4, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "postDialDigits":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    .end local v1    # "matchedNumber":Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 447
    const/16 v4, 0xd

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 448
    const/16 v4, 0xe

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 449
    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    sget v3, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 450
    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 449
    :cond_1
    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 453
    const/16 v3, 0xf

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 455
    return-object v0

    .line 443
    .end local v2    # "postDialDigits":Ljava/lang/String;
    .restart local v1    # "matchedNumber":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    .restart local v2    # "postDialDigits":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 403
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 9
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "directoryId"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 409
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 410
    .local v1, "uri":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-nez v2, :cond_0

    .line 411
    cmp-long v2, p1, v6

    if-eqz v2, :cond_2

    .line 413
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 419
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 421
    const-string/jumbo v3, "sip"

    .line 422
    invoke-static {p0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 423
    .local v0, "builder":Landroid/net/Uri$Builder;
    cmp-long v2, p1, v6

    if-eqz v2, :cond_1

    .line 424
    const-string/jumbo v2, "directory"

    .line 425
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 427
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 416
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static lookUpDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lookupKey"    # Ljava/lang/String;
    .param p2, "userType"    # J

    .prologue
    const/4 v8, 0x0

    .line 217
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 218
    :cond_0
    return-object v8

    .line 220
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 223
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    sget-object v2, Lcom/android/dialer/calllog/PhoneQuery;->DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 223
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 226
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 232
    if-eqz v6, :cond_2

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_2
    return-object v0

    .line 232
    :cond_3
    if-eqz v6, :cond_4

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return-object v8

    .line 229
    :catch_0
    move-exception v7

    .line 232
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_4

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 231
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    .line 232
    if-eqz v6, :cond_5

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_5
    throw v0
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/calllog/ContactInfo;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "isSip"    # Z

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    return-object v3

    .line 255
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 256
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v1, v2, :cond_2

    .line 257
    invoke-direct {p0, p1, v3, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 267
    .end local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_1
    :goto_0
    return-object v1

    .line 258
    .restart local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_2
    sget-object v2, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v2, :cond_1

    .line 260
    sget-object v2, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 261
    .local v0, "cacheInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    if-eqz v0, :cond_4

    .line 262
    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_0

    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_3
    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_4
    const/4 v1, 0x0

    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_0
.end method


# virtual methods
.method public canReportAsInvalid(ILjava/lang/String;)Z
    .locals 1
    .param p1, "sourceType"    # I
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 478
    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v0, :cond_0

    .line 479
    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/service/CachedNumberLookupService;->canReportAsInvalid(ILjava/lang/String;)Z

    move-result v0

    .line 478
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBusiness(I)Z
    .locals 1
    .param p1, "sourceType"    # I

    .prologue
    .line 465
    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-interface {v0, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->isBusiness(I)Z

    move-result v0

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupContactFromUri(Landroid/net/Uri;Z)Lcom/android/dialer/calllog/ContactInfo;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isSip"    # Z

    .prologue
    const/4 v10, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 160
    return-object v10

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    return-object v0

    .line 166
    :cond_1
    const/4 v9, 0x0

    .line 168
    .local v9, "phoneLookupCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lcom/android/dialer/calllog/PhoneQuery;->getPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 170
    const/4 v5, 0x0

    move-object v1, p1

    .line 169
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 175
    .local v9, "phoneLookupCursor":Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 176
    return-object v10

    .line 171
    .end local v2    # "projection":[Ljava/lang/String;
    .local v9, "phoneLookupCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 173
    .local v7, "e":Ljava/lang/NullPointerException;
    return-object v10

    .line 180
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "projection":[Ljava/lang/String;
    .local v9, "phoneLookupCursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    sget-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 181
    return-object v0

    .line 183
    :cond_3
    const/4 v0, 0x7

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "lookupKey":Ljava/lang/String;
    invoke-direct {p0, v9, v8}, Lcom/android/dialer/calllog/ContactInfoHelper;->createPhoneLookupContactInfo(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v6

    .line 185
    .local v6, "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 186
    iget-wide v4, v6, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    .line 185
    invoke-static {v0, v8, v4, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookUpDisplayNameAlternative(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 187
    return-object v6

    .line 188
    .end local v6    # "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    .end local v8    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 188
    throw v0
.end method

.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    return-object v4

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    invoke-static {p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    .line 88
    .local v0, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v3, :cond_2

    .line 90
    :cond_1
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "username":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-direct {p0, v2, p2, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    .line 101
    .end local v2    # "username":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 103
    const/4 v1, 0x0

    .line 118
    :goto_1
    return-object v1

    .line 97
    .end local v0    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    .restart local v0    # "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_0

    .line 106
    :cond_4
    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v3, :cond_5

    .line 108
    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 109
    .local v1, "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    iput-object p1, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1, v4, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 111
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 113
    iget-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/dialer/calllog/ContactInfoHelper;->createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    goto :goto_1

    .line 115
    .end local v1    # "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    :cond_5
    move-object v1, v0

    .restart local v1    # "updatedInfo":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_1
.end method

.method public updateCallLogContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "updatedInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 304
    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.WRITE_CALL_LOG"

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v3, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 311
    .local v1, "needsUpdate":Z
    if-eqz p4, :cond_c

    .line 312
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 313
    const-string/jumbo v4, "name"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x1

    .line 317
    :cond_1
    iget v4, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v5, p4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v4, v5, :cond_2

    .line 318
    const-string/jumbo v4, "numbertype"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const/4 v1, 0x1

    .line 322
    :cond_2
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 323
    const-string/jumbo v4, "numberlabel"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v1, 0x1

    .line 327
    :cond_3
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 328
    const-string/jumbo v4, "lookup_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x1

    .line 333
    :cond_4
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 334
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 339
    :cond_5
    :goto_0
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 340
    const-string/jumbo v4, "matched_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x1

    .line 344
    :cond_6
    iget-wide v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v6, p4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 345
    const-string/jumbo v4, "photo_id"

    iget-wide v6, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const/4 v1, 0x1

    .line 350
    :cond_7
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 351
    .local v2, "updatedPhotoUriContactsOnly":Landroid/net/Uri;
    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 352
    iget-object v4, p4, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 358
    :cond_8
    :goto_1
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 359
    const-string/jumbo v4, "formatted_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v1, 0x1

    .line 379
    .end local v2    # "updatedPhotoUriContactsOnly":Landroid/net/Uri;
    :cond_9
    :goto_2
    if-nez v1, :cond_e

    .line 380
    return-void

    .line 335
    :cond_a
    const-string/jumbo v4, "normalized_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v1, 0x1

    goto :goto_0

    .line 353
    .restart local v2    # "updatedPhotoUriContactsOnly":Landroid/net/Uri;
    :cond_b
    const-string/jumbo v4, "photo_uri"

    .line 354
    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x1

    goto :goto_1

    .line 364
    .end local v2    # "updatedPhotoUriContactsOnly":Landroid/net/Uri;
    :cond_c
    const-string/jumbo v4, "name"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v4, "numbertype"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string/jumbo v4, "numberlabel"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v4, "lookup_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v4, "matched_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v4, "normalized_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v4, "photo_id"

    iget-wide v6, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 372
    const-string/jumbo v4, "photo_uri"

    .line 373
    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->nullForNonContactsUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 372
    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_d
    const-string/jumbo v4, "formatted_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v1, 0x1

    goto :goto_2

    .line 384
    :cond_e
    if-nez p2, :cond_f

    .line 385
    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 386
    iget-object v5, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 388
    const-string/jumbo v6, "number = ? AND countryiso IS NULL"

    .line 389
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 385
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 303
    :goto_3
    return-void

    .line 391
    :cond_f
    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 392
    iget-object v5, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/dialer/util/TelecomUtil;->getCallLogUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 394
    const-string/jumbo v6, "number = ? AND countryiso = ?"

    .line 395
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    .line 391
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lcom/android/dialer/calllog/ContactInfoHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to update contact info in call log db"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
