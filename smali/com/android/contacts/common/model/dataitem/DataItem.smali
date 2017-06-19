.class public Lcom/android/contacts/common/model/dataitem/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field protected mKind:Lcom/android/contacts/common/model/dataitem/DataKind;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 51
    return-void
.end method

.method public static createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 60
    const-string/jumbo v1, "mimetype"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 63
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 65
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 67
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    new-instance v1, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 69
    :cond_3
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 71
    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    new-instance v1, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 73
    :cond_5
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 74
    new-instance v1, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 75
    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    new-instance v1, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 77
    :cond_7
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 78
    new-instance v1, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 79
    :cond_8
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 80
    new-instance v1, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 81
    :cond_9
    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 82
    new-instance v1, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 83
    :cond_a
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 84
    new-instance v1, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 85
    :cond_b
    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 86
    new-instance v1, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 87
    :cond_c
    const-string/jumbo v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 88
    new-instance v1, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 89
    :cond_d
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 90
    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 94
    :cond_e
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1
.end method

.method private hasCarrierPresence()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "carrier_presence"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "carrier_presence"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method


# virtual methods
.method public buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    if-nez v2, :cond_0

    .line 171
    return-object v1

    .line 173
    :cond_0
    iget-object v2, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/common/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    .local v0, "actionBody":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public buildDataStringForDisplay(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public collapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;)V
    .locals 9
    .param p1, "that"    # Lcom/android/contacts/common/model/dataitem/DataItem;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 207
    .local v1, "thisKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 210
    .local v0, "thatKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getTypePrecedence(Lcom/android/contacts/common/model/dataitem/DataKind;I)I

    move-result v2

    .line 214
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/contacts/common/model/RawContactModifier;->getTypePrecedence(Lcom/android/contacts/common/model/dataitem/DataKind;I)I

    move-result v6

    .line 212
    if-le v2, v6, :cond_2

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    iget-object v6, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iput-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    iget v6, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 221
    iget v7, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 220
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "is_super_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v7, "times_used"

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    .line 236
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_8

    .line 235
    :goto_1
    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    iget-object v6, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v7, "last_time_used"

    .line 240
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_9

    move-wide v2, v4

    .line 241
    :goto_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_a

    .line 240
    :goto_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 239
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    return-void

    .line 235
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 236
    :cond_8
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getTimesUsed()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 240
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    .line 241
    :cond_a
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getLastTimeUsed()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)V
    .locals 0
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 205
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->collapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;)V

    return-void
.end method

.method public getCarrierPresence()I
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->hasCarrierPresence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "carrier_presence"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I
    .locals 2
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 144
    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 145
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getLastTimeUsed()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "last_time_used"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTimesUsed()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "times_used"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 139
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 139
    :cond_0
    return v1
.end method

.method public isPrimary()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "is_primary"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 129
    .local v0, "primary":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSuperPrimary()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v3, "is_super_primary"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 134
    .local v0, "superPrimary":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setDataKind(Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 0
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 188
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setRawContactId(J)V
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 4
    .param p1, "t"    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p2, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/MoreContactUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .end local p1    # "t":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/DataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
