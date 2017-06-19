.class public Lcom/android/incallui/CallerInfoUtils;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/incallui/CallerInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCachedContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;Lcom/android/incallui/CallerInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 4
    .param p0, "lookupService"    # Lcom/android/dialer/service/CachedNumberLookupService;
    .param p1, "ci"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 111
    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 112
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 113
    iget v2, p1, Lcom/android/incallui/CallerInfo;->numberType:I

    iput v2, v1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 114
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 115
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 116
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 117
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 118
    iget-wide v2, p1, Lcom/android/incallui/CallerInfo;->userType:J

    iput-wide v2, v1, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    .line 120
    invoke-interface {p0, v1}, Lcom/android/dialer/service/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 121
    .local v0, "cacheInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    iget-object v2, p1, Lcom/android/incallui/CallerInfo;->lookupKeyOrNull:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    .line 122
    return-object v0
.end method

.method public static buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/android/incallui/CallerInfo;

    invoke-direct {v0}, Lcom/android/incallui/CallerInfo;-><init>()V

    .line 62
    .local v0, "info":Lcom/android/incallui/CallerInfo;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 63
    iget-object v3, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v3

    iput v3, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 65
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapNamePresentation()I

    move-result v3

    iput v3, v0, Lcom/android/incallui/CallerInfo;->namePresentation:I

    .line 66
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCallSubject()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->callSubject:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const-string/jumbo v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "numbers":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 74
    aget-object v1, v2, v4

    .line 75
    array-length v3, v2

    if-le v3, v5, :cond_0

    .line 76
    aget-object v3, v2, v5

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->forwardingNumber:Ljava/lang/String;

    .line 79
    :cond_0
    iget v3, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v1, v3}, Lcom/android/incallui/CallerInfoUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 88
    .end local v2    # "numbers":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 89
    const-string/jumbo v3, "voicemail"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 88
    if-nez v3, :cond_3

    .line 90
    :cond_2
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 91
    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;

    .line 94
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p0, p1, v0}, Lcom/android/incallui/ContactInfoCache;->maybeInsertCnapInformationIntoCache(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 97
    return-object v0
.end method

.method public static getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    .line 49
    .local v0, "info":Lcom/android/incallui/CallerInfo;
    iget v1, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 51
    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, -0x1

    invoke-static {v1, p0, v0, p2, p1}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-object v0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCnapSpecialCaseUnknown(Ljava/lang/String;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {p0, v0, v1}, Lcom/android/dialer/util/TelecomUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    const v6, 0x7f0d0274

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 144
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object p2

    .line 146
    :cond_1
    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string/jumbo v3, ", presentation="

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string/jumbo v3, " ci "

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "absentNumberValues":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    if-ne p3, v4, :cond_2

    .line 157
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 158
    iput v5, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 166
    :cond_2
    iget v1, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v1, v4, :cond_3

    .line 167
    iget v1, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v1, p3, :cond_5

    .line 168
    if-ne p3, v4, :cond_5

    .line 170
    :cond_3
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    const v1, 0x7f0d0276

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 172
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 177
    :cond_4
    :goto_0
    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SpecialCnap: number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    const-string/jumbo v3, "; presentation now="

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    iget v3, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_5
    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object p2

    .line 173
    :cond_6
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 175
    iput v5, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    goto :goto_0
.end method

.method public static sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 224
    new-instance v0, Lcom/android/contacts/common/model/ContactLoader;

    .line 225
    const/4 v1, 0x1

    .line 224
    invoke-direct {v0, p0, p1, v1}, Lcom/android/contacts/common/model/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 226
    .local v0, "loader":Lcom/android/contacts/common/model/ContactLoader;
    new-instance v1, Lcom/android/incallui/CallerInfoUtils$1;

    invoke-direct {v1}, Lcom/android/incallui/CallerInfoUtils$1;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/common/model/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 237
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->startLoading()V

    .line 223
    return-void
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const-string/jumbo v3, ""

    return-object v3

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 210
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_2

    .line 211
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x26

    if-eq v1, v3, :cond_1

    .line 213
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
