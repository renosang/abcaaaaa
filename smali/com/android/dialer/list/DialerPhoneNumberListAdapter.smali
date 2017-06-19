.class public Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.source "DialerPhoneNumberListAdapter.java"


# instance fields
.field private final mBidiFormatter:Landroid/text/BidiFormatter;

.field private mCountryIso:Ljava/lang/String;

.field private mFormattedQueryString:Ljava/lang/String;

.field private final mShortcutEnabled:[Z

.field private mVideoCallingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    .line 46
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallingEnabled:Z

    .line 52
    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallingEnabled:Z

    .line 49
    return-void
.end method

.method private assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 6
    .param p1, "v"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "shortcutType"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 164
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "number":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 193
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Invalid shortcut type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :pswitch_0
    iget-object v4, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v4, v1, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    .line 168
    const v5, 0x7f0d02aa

    .line 167
    invoke-static {v2, v5, v4}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 170
    .local v3, "text":Ljava/lang/CharSequence;
    const v0, 0x7f02012c

    .line 195
    .local v0, "drawableId":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDrawableResource(I)V

    .line 196
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 197
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 198
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    .line 160
    return-void

    .line 173
    .end local v0    # "drawableId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    const v4, 0x7f0d02ab

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .restart local v3    # "text":Ljava/lang/CharSequence;
    const v0, 0x7f02012b

    .line 175
    .restart local v0    # "drawableId":I
    goto :goto_0

    .line 177
    .end local v0    # "drawableId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    const v4, 0x7f0d02ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .restart local v3    # "text":Ljava/lang/CharSequence;
    const v0, 0x7f020119

    .line 179
    .restart local v0    # "drawableId":I
    goto :goto_0

    .line 181
    .end local v0    # "drawableId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :pswitch_3
    const v4, 0x7f0d02ad

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3    # "text":Ljava/lang/CharSequence;
    const v0, 0x7f020110

    .line 183
    .restart local v0    # "drawableId":I
    goto :goto_0

    .line 185
    .end local v0    # "drawableId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :pswitch_4
    const v4, 0x7f0d02ae

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "text":Ljava/lang/CharSequence;
    const v0, 0x7f020143

    .line 187
    .restart local v0    # "drawableId":I
    goto :goto_0

    .line 189
    .end local v0    # "drawableId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :pswitch_5
    const v4, 0x7f0d02af

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .restart local v3    # "text":Ljava/lang/CharSequence;
    const v0, 0x7f020114

    .line 191
    .restart local v0    # "drawableId":I
    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public disableAllShortcuts()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFormattedQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    .line 81
    .local v0, "shortcut":I
    if-ltz v0, :cond_0

    .line 83
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemViewType(I)I

    move-result v1

    return v1
.end method

.method public getShortcutCount()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return v0
.end method

.method public getShortcutTypeFromPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCount()I

    move-result v2

    sub-int v1, p1, v2

    .line 130
    .local v1, "shortcutCount":I
    if-ltz v1, :cond_2

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 135
    add-int/lit8 v1, v1, -0x1

    .line 136
    if-gez v1, :cond_0

    return v0

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid position - greater than cursor count  but not a shortcut."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    .end local v0    # "i":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    .line 98
    .local v0, "shortcutType":I
    if-ltz v0, :cond_1

    .line 99
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 100
    check-cast v2, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-direct {p0, v2, v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 101
    return-object p2

    .line 103
    :cond_0
    new-instance v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 104
    iget-boolean v3, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallingEnabled:Z

    .line 103
    invoke-direct {v1, v2, v4, v3}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 105
    .local v1, "v":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-direct {p0, v1, v0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->assignShortcutToView(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 106
    return-object v1

    .line 109
    .end local v1    # "v":Lcom/android/contacts/common/list/ContactListItemView;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEmpty()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->getShortcutTypeFromPosition(I)I

    move-result v0

    .line 153
    .local v0, "shortcutType":I
    if-ltz v0, :cond_0

    .line 154
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isEnabled(I)Z

    move-result v1

    return v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    .line 119
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-boolean v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mVideoCallingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSupportVideoCallIcon(Z)V

    .line 120
    return-object v0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    .line 216
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mFormattedQueryString:Ljava/lang/String;

    .line 218
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setShortcutEnabled(IZ)Z
    .locals 2
    .param p1, "shortcutType"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aget-boolean v1, v1, p1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x1

    .line 206
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->mShortcutEnabled:[Z

    aput-boolean p2, v1, p1

    .line 207
    return v0

    .line 205
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method
