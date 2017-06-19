.class public final Lcom/android/dialer/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static CACHED_PHOTO_URI:I

.field public static POST_DIAL_DIGITS:I

.field public static VIA_NUMBER:I

.field public static final _PROJECTION:[Ljava/lang/String;

.field private static final _PROJECTION_INTERNAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 34
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    .line 35
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    const-string/jumbo v2, "number"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 37
    const-string/jumbo v2, "date"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 38
    const-string/jumbo v2, "duration"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 39
    const-string/jumbo v2, "type"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 40
    const-string/jumbo v2, "countryiso"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 41
    const-string/jumbo v2, "voicemail_uri"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 42
    const-string/jumbo v2, "geocoded_location"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 43
    const-string/jumbo v2, "name"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 44
    const-string/jumbo v2, "numbertype"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 45
    const-string/jumbo v2, "numberlabel"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 46
    const-string/jumbo v2, "lookup_uri"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 47
    const-string/jumbo v2, "matched_number"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 48
    const-string/jumbo v2, "normalized_number"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 49
    const-string/jumbo v2, "photo_id"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 50
    const-string/jumbo v2, "formatted_number"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 51
    const-string/jumbo v2, "is_read"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 52
    const-string/jumbo v2, "presentation"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 53
    const-string/jumbo v2, "subscription_component_name"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 54
    const-string/jumbo v2, "subscription_id"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 55
    const-string/jumbo v2, "features"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 56
    const-string/jumbo v2, "data_usage"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 57
    const-string/jumbo v2, "transcription"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 34
    sput-object v1, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION_INTERNAL:[Ljava/lang/String;

    .line 89
    sput v4, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    .line 95
    sput v4, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    .line 96
    sput v4, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    .line 101
    sget-object v1, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/dialer/compat/DialerCompatUtils;->isCallsCachedPhotoUriCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string/jumbo v1, "photo_uri"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/dialer/calllog/CallLogQuery;->CACHED_PHOTO_URI:I

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string/jumbo v1, "post_dial_digits"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    .line 109
    const-string/jumbo v1, "via_number"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
