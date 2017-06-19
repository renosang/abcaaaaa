.class public Lcom/android/dialer/list/BlockedListSearchAdapter;
.super Lcom/android/dialer/list/RegularSearchListAdapter;
.source "BlockedListSearchAdapter.java"


# instance fields
.field private mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mResources:Landroid/content/res/Resources;

    .line 40
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchAdapter;->disableAllShortcuts()V

    .line 41
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setShortcutEnabled(IZ)Z

    .line 44
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 43
    iput-object v0, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 37
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/dialer/list/RegularSearchListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v3, p1

    .line 72
    check-cast v3, Lcom/android/contacts/common/list/ContactListItemView;

    .line 74
    .local v3, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setViewUnblocked(Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 76
    invoke-virtual {p0, p4}, Lcom/android/dialer/list/BlockedListSearchAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "number":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "countryIso":Ljava/lang/String;
    new-instance v2, Lcom/android/dialer/list/BlockedListSearchAdapter$1;

    invoke-direct {v2, p0, v3}, Lcom/android/dialer/list/BlockedListSearchAdapter$1;-><init>(Lcom/android/dialer/list/BlockedListSearchAdapter;Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 87
    .local v2, "onCheckListener":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    iget-object v4, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    return-void
.end method

.method protected isChanged(Z)Z
    .locals 2
    .param p1, "showNumberShortcuts"    # Z

    .prologue
    .line 49
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mIsQuerySipAddress:Z

    :goto_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setShortcutEnabled(IZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setViewBlocked(Lcom/android/contacts/common/list/ContactListItemView;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "id"    # Ljava/lang/Integer;

    .prologue
    .line 53
    const v1, 0x7f0e0023

    invoke-virtual {p1, v1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setTag(ILjava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 55
    .local v0, "textColor":I
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    return-void
.end method

.method public setViewUnblocked(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;

    .prologue
    .line 61
    const v1, 0x7f0e0023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setTag(ILjava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/android/dialer/list/BlockedListSearchAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a02ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 63
    .local v0, "textColor":I
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    return-void
.end method
