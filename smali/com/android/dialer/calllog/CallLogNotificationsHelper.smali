.class public Lcom/android/dialer/calllog/CallLogNotificationsHelper;
.super Ljava/lang/Object;
.source "CallLogNotificationsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;,
        Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;,
        Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;,
        Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;,
        Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/dialer/calllog/CallLogNotificationsHelper;


# instance fields
.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private final mNameLookupQuery:Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;

.field private final mNewCallsQuery:Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;Lcom/android/dialer/calllog/ContactInfoHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newCallsQuery"    # Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;
    .param p3, "nameLookupQuery"    # Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;
    .param p4, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p5, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mNewCallsQuery:Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;

    .line 75
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mNameLookupQuery:Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;

    .line 76
    iput-object p4, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 77
    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static createNameLookupQuery(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 314
    new-instance v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;)V

    return-object v0
.end method

.method public static createNewCallsQuery(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 217
    new-instance v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNewCallsQuery;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogNotificationsHelper;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->sInstance:Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 54
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "countryIso":Ljava/lang/String;
    new-instance v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    .line 56
    invoke-static {p0, v6}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->createNewCallsQuery(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;

    move-result-object v2

    .line 57
    invoke-static {p0, v6}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->createNameLookupQuery(Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;

    move-result-object v3

    .line 58
    new-instance v4, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-direct {v4, p0, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;Lcom/android/dialer/calllog/ContactInfoHelper;Ljava/lang/String;)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->sInstance:Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    .line 61
    .end local v5    # "countryIso":Ljava/lang/String;
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->sInstance:Lcom/android/dialer/calllog/CallLogNotificationsHelper;

    return-object v0
.end method

.method public static removeMissedCallNotifications(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->cancelMissedCallsNotification(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public static updateVoicemailNotifications(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/calllog/CallLogNotificationsService;->updateVoicemailNotifications(Landroid/content/Context;Landroid/net/Uri;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "numberPresentation"    # I
    .param p3, "countryIso"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    if-nez p3, :cond_0

    .line 120
    iget-object p3, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 125
    .local v1, "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    iput-object p1, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 126
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 128
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mContext:Landroid/content/Context;

    .line 135
    const/4 v3, 0x0

    .line 131
    invoke-static {v2, p1, p2, v3}, Lcom/android/dialer/calllog/PhoneNumberDisplayUtil;->getDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 136
    iget-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    return-object v1

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v2, p1, p3}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    .line 143
    .local v0, "cachedContactInfo":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    :cond_2
    iget-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    iget-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 157
    :goto_0
    return-object v1

    .line 144
    :cond_3
    return-object v0

    .line 150
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 152
    iput-object p1, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_5
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0274

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "numberPresentation"    # I
    .param p3, "countryIso"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->getContactInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMissedCalls()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mNewCallsQuery:Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewVoicemails()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->mNewCallsQuery:Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;->query(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
