.class final Lcom/android/dialer/calllog/PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneQuery.java"


# static fields
.field private static final BACKWARD_COMPATIBLE_NON_SIP_PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field public static final DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v3

    .line 41
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 42
    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    .line 43
    const-string/jumbo v1, "label"

    aput-object v1, v0, v6

    .line 44
    const-string/jumbo v1, "number"

    aput-object v1, v0, v7

    .line 45
    const-string/jumbo v1, "normalized_number"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "photo_uri"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 39
    sput-object v0, Lcom/android/dialer/calllog/PhoneQuery;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 59
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 60
    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    .line 61
    const-string/jumbo v1, "label"

    aput-object v1, v0, v6

    .line 62
    const-string/jumbo v1, "number"

    aput-object v1, v0, v7

    .line 63
    const-string/jumbo v1, "normalized_number"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "photo_uri"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/android/dialer/calllog/PhoneQuery;->BACKWARD_COMPATIBLE_NON_SIP_PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 95
    new-array v0, v4, [Ljava/lang/String;

    .line 96
    const-string/jumbo v1, "display_name_alt"

    aput-object v1, v0, v3

    .line 95
    sput-object v0, Lcom/android/dialer/calllog/PhoneQuery;->DISPLAY_NAME_ALTERNATIVE_PROJECTION:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 3
    .param p0, "phoneLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 71
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/android/dialer/calllog/PhoneQuery;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v1, "sip"

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    .local v0, "isSip":Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/dialer/calllog/PhoneQuery;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v1

    .line 78
    :cond_1
    sget-object v1, Lcom/android/dialer/calllog/PhoneQuery;->BACKWARD_COMPATIBLE_NON_SIP_PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
