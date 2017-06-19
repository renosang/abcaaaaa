.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$YuloreInfoCallbackImp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContactUtils:Lcom/android/incallui/ContactUtils;

.field private final mContext:Landroid/content/Context;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

.field private final mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/ContactInfoCache;)Lcom/android/dialer/service/CachedNumberLookupService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "didLocalLookup"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    .line 96
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p1}, Lcom/android/incalluibind/ObjectFactory;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    .line 99
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 100
    invoke-static {p1}, Lcom/android/incalluibind/ObjectFactory;->getContactUtilsInstance(Landroid/content/Context;)Lcom/android/incallui/ContactUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContactUtils:Lcom/android/incallui/ContactUtils;

    .line 95
    return-void
.end method

.method public static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 110
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 113
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    .line 114
    .local v1, "info":Lcom/android/incallui/CallerInfo;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v2

    invoke-static {p0, v1, v0, v2, p2}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 116
    return-object v0
.end method

.method private buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/incallui/CallerInfo;
    .param p4, "presentation"    # I
    .param p5, "isIncoming"    # Z

    .prologue
    const/4 v6, 0x0

    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 438
    .local v0, "cce":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p1, p3, v0, p4, p5}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 441
    iget v2, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    if-eqz v2, :cond_3

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 464
    .end local v1    # "photo":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 465
    sget-boolean v2, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-nez v2, :cond_0

    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 466
    :cond_0
    iget-wide v2, p3, Lcom/android/incallui/CallerInfo;->contactIdOrZero:J

    iget-object v4, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    .line 472
    :goto_1
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 473
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    .line 474
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    .line 475
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, v3, :cond_2

    .line 476
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    .line 479
    :cond_2
    return-object v0

    .line 443
    .restart local v1    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-boolean v2, p3, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_5

    .line 444
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 445
    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 448
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->phonebookLabel:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->getDefaultLetterPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 453
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-nez v2, :cond_6

    .line 455
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/incallui/CallerInfo;->phonebookLabel:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->getDefaultLetterPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 459
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v2, p3, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    goto :goto_0

    .line 468
    .end local v1    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_7
    sget-object v2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "lookup key is null or contact ID is 0 on M. Don\'t create a lookup uri."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iput-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private clearCallbacks(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-void
.end method

.method private findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callerInfo"    # Lcom/android/incallui/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "didLocalLookup"    # Z

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    .line 237
    .local v4, "presentationMode":I
    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    .line 237
    if-eqz v0, :cond_1

    .line 239
    :cond_0
    const/4 v4, 0x1

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 245
    .local v6, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    .line 245
    if-eqz v0, :cond_3

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .line 248
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_3
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "findInfoQueryComplete"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, v2, v6}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 253
    if-eqz p4, :cond_4

    .line 257
    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    if-eqz v0, :cond_5

    .line 258
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v7, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    invoke-direct {v7, p0, v2}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    .line 260
    .local v7, "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    iget-object v1, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {v0, v1, v7, v7, p3}, Lcom/android/incallui/service/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    .line 227
    .end local v7    # "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    :cond_4
    :goto_0
    return-void

    .line 264
    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 266
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Contact lookup. Local contact found, starting image load"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingPhoto:Z

    .line 271
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 270
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, p0, v2}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 273
    :cond_6
    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_7

    .line 274
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Contact lookup done. Local contact found, no image."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_7
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Contact lookup done. Local contact not found and no remote lookup service available."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDefaultLetterPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupKey"    # Ljava/lang/String;
    .param p3, "phonebookLabel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 777
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lookupKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phonebookLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    :cond_0
    return-object v3

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    if-nez v0, :cond_2

    .line 780
    new-instance v0, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    invoke-direct {v0, p1}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mOPContactsDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    new-instance v1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    const/4 v2, 0x1

    invoke-direct {v1, p3, p2, v2}, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;->getDefaultLetterPhoto(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presentation"    # I
    .param p2, "customLabel"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 652
    const v1, 0x7f0d0274

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "name":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 655
    if-ne p1, v2, :cond_1

    .line 656
    :cond_0
    move-object v0, p2

    .line 657
    return-object p2

    .line 659
    :cond_1
    if-ne p1, v2, :cond_3

    .line 660
    const v1, 0x7f0d0276

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    :cond_2
    :goto_0
    return-object v0

    .line 661
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 662
    const v1, 0x7f0d0277

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/incallui/CallerInfo;
    .param p2, "cce"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "presentation"    # I
    .param p4, "isIncoming"    # Z

    .prologue
    const/4 v7, 0x1

    .line 487
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 490
    .local v2, "displayNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 491
    .local v0, "displayLocation":Ljava/lang/String;
    const/4 v4, 0x0

    .line 492
    .local v4, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 516
    .local v3, "isSipCall":Z
    iget-object v5, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 518
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 519
    invoke-static {v5}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    .line 520
    .local v3, "isSipCall":Z
    const-string/jumbo v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 521
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 525
    .end local v3    # "isSipCall":Z
    :cond_0
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 531
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 534
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    invoke-static {p0, p3, v6}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> no name *or* number! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .end local v0    # "displayLocation":Ljava/lang/String;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "displayNumber":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/String;
    :goto_0
    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 593
    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 594
    iput-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 595
    iput-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 596
    iput-boolean v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 597
    iget-wide v6, p1, Lcom/android/incallui/CallerInfo;->userType:J

    iput-wide v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 599
    iget-boolean v6, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v6, :cond_1

    .line 600
    const/4 v6, 0x2

    iput v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    .line 603
    :cond_1
    iget v6, p1, Lcom/android/incallui/CallerInfo;->starred:I

    iput v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->starred:I

    .line 604
    iget-boolean v6, p1, Lcom/android/incallui/CallerInfo;->isAutoRecording:Z

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isAutoRecording:Z

    .line 605
    iget-boolean v6, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isContactsExist:Z

    .line 606
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 607
    invoke-virtual {p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    iput-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    .line 608
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 609
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->phonebookLabel:Ljava/lang/String;

    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->phonebookLabel:Ljava/lang/String;

    .line 486
    return-void

    .line 536
    .restart local v0    # "displayLocation":Ljava/lang/String;
    .local v1, "displayName":Ljava/lang/String;
    .restart local v2    # "displayNumber":Ljava/lang/String;
    .restart local v4    # "label":Ljava/lang/String;
    :cond_2
    if-eq p3, v7, :cond_3

    .line 540
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    invoke-static {p0, p3, v6}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    .local v1, "displayName":Ljava/lang/String;
    :cond_3
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 544
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 545
    .local v1, "displayName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 546
    move-object v2, v5

    .line 547
    .local v2, "displayNumber":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> cnapName available: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 548
    const-string/jumbo v8, "\', displayNumber \'"

    .line 547
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 548
    const-string/jumbo v8, "\'"

    .line 547
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    .local v1, "displayName":Ljava/lang/String;
    .local v2, "displayNumber":Ljava/lang/String;
    :cond_4
    move-object v2, v5

    .line 558
    .local v2, "displayNumber":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 562
    iget-object v0, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 563
    .local v0, "displayLocation":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Geodescrption: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v0    # "displayLocation":Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 567
    invoke-static {v2}, Lcom/android/incallui/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 566
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 568
    const-string/jumbo v8, "\', displayLocation \'"

    .line 566
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 568
    const-string/jumbo v8, "\'"

    .line 566
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    .local v0, "displayLocation":Ljava/lang/String;
    .local v2, "displayNumber":Ljava/lang/String;
    :cond_6
    if-eq p3, v7, :cond_7

    .line 577
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    invoke-static {p0, p3, v6}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "displayName":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    .local v1, "displayName":Ljava/lang/String;
    :cond_7
    iget-object v1, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 584
    .local v1, "displayName":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->nameAlternative:Ljava/lang/String;

    iput-object v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 585
    move-object v2, v5

    .line 586
    .local v2, "displayNumber":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 587
    .local v4, "label":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 588
    const-string/jumbo v8, "\', displayNumber \'"

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 588
    const-string/jumbo v8, "\'"

    .line 587
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 626
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 627
    .local v2, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v2, :cond_0

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 628
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callBack$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 629
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 625
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v1    # "callBack$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private sendInfoNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 617
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 618
    .local v2, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v2, :cond_0

    .line 619
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callBack$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 620
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 616
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v1    # "callBack$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 429
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 427
    return-void
.end method

.method public findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isIncoming"    # Z
    .param p3, "callback"    # Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .prologue
    const/4 v5, 0x0

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "callId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 190
    .local v0, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 193
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v0, :cond_2

    .line 194
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 195
    if-nez v1, :cond_1

    const-string/jumbo v4, "complete"

    .line 194
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {p3, v2, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 198
    if-nez v1, :cond_2

    .line 199
    return-void

    .end local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v2    # "callId":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 185
    goto :goto_0

    .line 195
    .restart local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .restart local v2    # "callId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "still running"

    goto :goto_1

    .line 204
    :cond_2
    if-eqz v1, :cond_3

    .line 205
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    return-void

    .line 208
    :cond_3
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 211
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v6, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    .line 220
    invoke-static {v4, p1, v6}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    .line 223
    .local v3, "callerInfo":Lcom/android/incallui/CallerInfo;
    invoke-direct {p0, p1, v3, p2, v5}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    .line 184
    return-void
.end method

.method public getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "info"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "applicationContext":Landroid/content/Context;
    sget-object v1, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Found contact with CNAP name - inserting into cache"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/android/incallui/ContactInfoCache$1;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/android/incallui/ContactInfoCache$1;-><init>(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/Call;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 388
    const-string/jumbo v2, "Image load complete with context: "

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p4

    .line 392
    check-cast v0, Ljava/lang/String;

    .line 393
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 395
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v1, :cond_0

    .line 396
    const-string/jumbo v2, "Image Load received for empty search entry."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 398
    return-void

    .line 401
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingPhoto:Z

    .line 403
    const-string/jumbo v2, "setting photo for entry: "

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    if-eqz p2, :cond_2

    .line 407
    const-string/jumbo v2, "direct drawable: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    iput-object p2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 417
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 419
    iget-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingContactInteractions:Z

    if-nez v2, :cond_1

    .line 420
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(Ljava/lang/String;)V

    .line 387
    :cond_1
    return-void

    .line 409
    :cond_2
    if-eqz p3, :cond_3

    .line 410
    const-string/jumbo v2, "photo icon: "

    invoke-static {p0, v2, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 413
    :cond_3
    const-string/jumbo v2, "unknown photo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iput-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
