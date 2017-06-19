.class public Lcom/android/dialer/list/RegularSearchListAdapter;
.super Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.source "RegularSearchListAdapter.java"


# instance fields
.field protected mIsQuerySipAddress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    .line 38
    return-void
.end method

.method private hasDigitsInQueryString()Z
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "queryString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 123
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const/4 v3, 0x1

    return v3

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public getContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;I)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 12
    .param p1, "lookupService"    # Lcom/android/dialer/service/CachedNumberLookupService;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x0

    .line 46
    new-instance v1, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v1}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 47
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    invoke-interface {p1, v1}, Lcom/android/dialer/service/CachedNumberLookupService;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 48
    .local v0, "cacheInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    invoke-virtual {p0, p2}, Lcom/android/dialer/list/RegularSearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 49
    .local v5, "item":Landroid/database/Cursor;
    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/dialer/list/RegularSearchListAdapter;->getPartitionForPosition(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/dialer/list/RegularSearchListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 52
    .local v6, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 53
    .local v2, "directoryId":J
    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/list/RegularSearchListAdapter;->isExtendedDirectory(J)Z

    move-result v4

    .line 55
    .local v4, "isExtendedDirectory":Z
    const/4 v10, 0x7

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 56
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 57
    const/4 v10, 0x2

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 58
    const/4 v10, 0x3

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 59
    const/16 v10, 0x8

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "photoUriStr":Ljava/lang/String;
    if-nez v7, :cond_1

    :goto_0
    iput-object v9, v1, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 69
    if-nez v4, :cond_2

    .line 70
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v9

    .line 69
    if-eqz v9, :cond_2

    .line 71
    const-wide/16 v10, 0x1

    .line 69
    :goto_1
    iput-wide v10, v1, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    .line 73
    const/4 v9, 0x5

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setLookupKey(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "sourceName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 77
    invoke-interface {v0, v8, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setExtendedSource(Ljava/lang/String;J)V

    .line 82
    .end local v2    # "directoryId":J
    .end local v4    # "isExtendedDirectory":Z
    .end local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v7    # "photoUriStr":Ljava/lang/String;
    .end local v8    # "sourceName":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v0

    .line 60
    .restart local v2    # "directoryId":J
    .restart local v4    # "isExtendedDirectory":Z
    .restart local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .restart local v7    # "photoUriStr":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 71
    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 79
    .restart local v8    # "sourceName":Ljava/lang/String;
    :cond_3
    invoke-interface {v0, v8, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public getFormattedQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/dialer/list/RegularSearchListAdapter;->mIsQuerySipAddress:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isChanged(Z)Z
    .locals 3
    .param p1, "showNumberShortcuts"    # Z

    .prologue
    const/4 v2, 0x0

    .line 110
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/dialer/list/RegularSearchListAdapter;->mIsQuerySipAddress:Z

    .line 109
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    move-result v0

    .line 111
    .local v0, "changed":Z
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 113
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 112
    :goto_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setShortcutEnabled(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 114
    return v0

    .line 110
    .end local v0    # "changed":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .restart local v0    # "changed":Z
    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->hasDigitsInQueryString()Z

    move-result v0

    .line 99
    :goto_0
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/list/RegularSearchListAdapter;->mIsQuerySipAddress:Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchListAdapter;->isChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 95
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    .local v0, "showNumberShortcuts":Z
    goto :goto_0
.end method
