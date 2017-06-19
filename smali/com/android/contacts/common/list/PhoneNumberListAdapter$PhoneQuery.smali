.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;
.super Ljava/lang/Object;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final ANALYTICS_ACTION:Ljava/lang/String; = "analytics_action"

.field public static final ANALYTICS_CATEGORY:Ljava/lang/String; = "analytics_category"

.field public static final ANALYTICS_VALUE:Ljava/lang/String; = "analytics_value"

.field public static final CARRIER_PRESENCE:I = 0xa

.field public static final CONTACT_ID:I = 0x4

.field public static final CONTACT_PHONEBOOK_LABEL:I = 0x9

.field public static final DISPLAY_NAME:I = 0x7

.field public static final LOOKUP_KEY:I = 0x5

.field public static final PHONEBOOK_LABEL_PRIMARY:Ljava/lang/String; = "phonebook_label"

.field public static final PHONE_ID:I = 0x0

.field public static final PHONE_LABEL:I = 0x2

.field public static final PHONE_NUMBER:I = 0x3

.field public static final PHONE_TYPE:I = 0x1

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x8

.field public static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 104
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    .line 105
    const-string/jumbo v2, "data2"

    aput-object v2, v1, v5

    .line 106
    const-string/jumbo v2, "data3"

    aput-object v2, v1, v6

    .line 107
    const-string/jumbo v2, "data1"

    aput-object v2, v1, v7

    .line 108
    const-string/jumbo v2, "contact_id"

    aput-object v2, v1, v8

    .line 109
    const-string/jumbo v2, "lookup"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 110
    const-string/jumbo v2, "photo_id"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 111
    const-string/jumbo v2, "display_name"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 112
    const-string/jumbo v2, "photo_thumb_uri"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 113
    const-string/jumbo v2, "phonebook_label"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 103
    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;

    .line 119
    sget-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    .local v0, "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "carrier_presence"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 126
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 127
    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    .line 128
    const-string/jumbo v2, "data2"

    aput-object v2, v1, v5

    .line 129
    const-string/jumbo v2, "data3"

    aput-object v2, v1, v6

    .line 130
    const-string/jumbo v2, "data1"

    aput-object v2, v1, v7

    .line 131
    const-string/jumbo v2, "contact_id"

    aput-object v2, v1, v8

    .line 132
    const-string/jumbo v2, "lookup"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 133
    const-string/jumbo v2, "photo_id"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 134
    const-string/jumbo v2, "display_name_alt"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 135
    const-string/jumbo v2, "photo_thumb_uri"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 136
    const-string/jumbo v2, "phonebook_label"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 126
    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

    .line 142
    sget-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const-string/jumbo v1, "carrier_presence"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
