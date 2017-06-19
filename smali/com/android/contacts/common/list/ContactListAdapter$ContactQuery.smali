.class public Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContactQuery"
.end annotation


# static fields
.field public static final CONTACT_CONTACT_STATUS:I = 0x3

.field public static final CONTACT_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_IS_USER_PROFILE:I = 0x7

.field public static final CONTACT_LAST_TIME_CONTACTED:I = 0xb

.field public static final CONTACT_LOOKUP_KEY:I = 0x6

.field public static final CONTACT_PHONEBOOK_LABEL:I = 0x9

.field public static final CONTACT_PHONETIC_NAME:I = 0x8

.field public static final CONTACT_PHOTO_ID:I = 0x4

.field public static final CONTACT_PHOTO_URI:I = 0x5

.field public static final CONTACT_PRESENCE_STATUS:I = 0x2

.field private static final CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final CONTACT_RAW_CONTACT_INFO:I = 0xa

.field public static final CONTACT_SNIPPET:I = 0xd

.field public static final CONTACT_STARRED:I = 0xc

.field private static final FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final PHONEBOOK_LABEL_PRIMARY:Ljava/lang/String; = "phonebook_label"

.field public static final RAW_CONTACT_INFO:Ljava/lang/String; = "raw_contact_info"


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 48
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 49
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 50
    const-string/jumbo v1, "contact_status"

    aput-object v1, v0, v6

    .line 51
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 52
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "is_user_profile"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "phonetic_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "raw_contact_info"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 60
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 62
    const-string/jumbo v1, "display_name_alt"

    aput-object v1, v0, v4

    .line 63
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 64
    const-string/jumbo v1, "contact_status"

    aput-object v1, v0, v6

    .line 65
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 66
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "is_user_profile"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "phonetic_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "raw_contact_info"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 60
    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 74
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 76
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 77
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 78
    const-string/jumbo v1, "contact_status"

    aput-object v1, v0, v6

    .line 79
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 80
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "is_user_profile"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "phonetic_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "raw_contact_info"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "last_time_contacted"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "starred"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "snippet"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 74
    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 91
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 93
    const-string/jumbo v1, "display_name_alt"

    aput-object v1, v0, v4

    .line 94
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 95
    const-string/jumbo v1, "contact_status"

    aput-object v1, v0, v6

    .line 96
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 97
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 98
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 99
    const-string/jumbo v1, "is_user_profile"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "phonetic_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "raw_contact_info"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "last_time_contacted"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 104
    const-string/jumbo v1, "starred"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 105
    const-string/jumbo v1, "snippet"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->FILTER_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
