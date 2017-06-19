.class public final Lcom/android/contacts/common/ContactTileLoaderFactory;
.super Ljava/lang/Object;
.source "ContactTileLoaderFactory.java"


# static fields
.field public static final ACCOUNT_NAME:I = 0x6

.field public static final ACCOUNT_TYPE:I = 0x5

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMNS_PHONE_ONLY:[Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_ID_FOR_DATA:I = 0xc

.field public static final CONTACT_PHONEBOOK_LABEL:I = 0xe

.field public static final CONTACT_PRESENCE:I = 0x7

.field public static final CONTACT_STATUS:I = 0x8

.field public static final DISPLAY_NAME:I = 0x1

.field public static final DISPLAY_NAME_ALTERNATIVE:I = 0xd

.field public static final IS_DEFAULT_NUMBER:I = 0xa

.field public static final LOOKUP_KEY:I = 0x4

.field public static final PHONE_NUMBER:I = 0x7

.field public static final PHONE_NUMBER_LABEL:I = 0x9

.field public static final PHONE_NUMBER_TYPE:I = 0x8

.field public static final PHOTO_URI:I = 0x3

.field public static final PINNED:I = 0xb

.field public static final STARRED:I = 0x2

.field private static final STARRED_ORDER:Ljava/lang/String; = "display_name COLLATE NOCASE ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 61
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 62
    const-string/jumbo v1, "starred"

    aput-object v1, v0, v5

    .line 63
    const-string/jumbo v1, "photo_uri"

    aput-object v1, v0, v6

    .line 64
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v7

    .line 65
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "contact_presence"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "contact_status"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    .line 78
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 80
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 81
    const-string/jumbo v1, "starred"

    aput-object v1, v0, v5

    .line 82
    const-string/jumbo v1, "photo_uri"

    aput-object v1, v0, v6

    .line 83
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v7

    .line 84
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "account_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "data1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "data2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "data3"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "is_super_primary"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "pinned"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "contact_id"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "display_name_alt"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "phonebook_label"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 78
    sput-object v0, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

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

.method public static createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    .line 117
    const-string/jumbo v4, "starred=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x0

    move-object v1, p0

    .line 116
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    const-string/jumbo v4, "starred=?"

    .line 112
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string/jumbo v6, "display_name COLLATE NOCASE ASC"

    move-object v1, p0

    .line 111
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS:[Ljava/lang/String;

    .line 100
    const-string/jumbo v6, "display_name COLLATE NOCASE ASC"

    move-object v1, p0

    move-object v5, v4

    .line 99
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 104
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "strequent_phone_only"

    const-string/jumbo v3, "true"

    .line 104
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 107
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/contacts/common/ContactTileLoaderFactory;->COLUMNS_PHONE_ONLY:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
