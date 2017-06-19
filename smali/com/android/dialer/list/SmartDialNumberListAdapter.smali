.class public Lcom/android/dialer/list/SmartDialNumberListAdapter;
.super Lcom/android/dialer/list/DialerPhoneNumberListAdapter;
.source "SmartDialNumberListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 49
    invoke-virtual {p0, v3, v3}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    .line 46
    return-void
.end method


# virtual methods
.method public configureLoader(Lcom/android/dialer/dialpad/SmartDialCursorLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->setQuery(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->configureQuery(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->setQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 109
    .local v2, "id":J
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 111
    .end local v2    # "id":J
    :cond_0
    sget-object v1, Lcom/android/dialer/list/SmartDialNumberListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v5
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->clearHighlightSequences()V

    .line 82
    iget-object v4, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    const/4 v5, 0x7

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->getMatchPositions()Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    .local v2, "nameMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "match$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 85
    .local v0, "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    iget v4, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v5, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {p1, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->addNameHighlightSequence(II)V

    goto :goto_0

    .line 93
    .end local v0    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .end local v1    # "match$iterator":Ljava/util/Iterator;
    .end local v2    # "nameMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/list/SmartDialNumberListAdapter;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 94
    const/4 v5, 0x3

    .line 93
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v3

    .line 95
    .local v3, "numberMatch":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    if-eqz v3, :cond_1

    .line 96
    iget v4, v3, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v5, v3, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {p1, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->addNumberHighlightSequence(II)V

    .line 79
    :cond_1
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 5
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getFormattedQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 120
    .local v1, "showNumberShortcuts":Z
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    move-result v0

    .line 121
    .local v0, "changed":Z
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 122
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    move-result v3

    or-int/2addr v0, v3

    .line 124
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 123
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setShortcutEnabled(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->notifyDataSetChanged()V

    .line 128
    :cond_1
    invoke-super {p0, p1}, Lcom/android/dialer/list/DialerPhoneNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 117
    return-void

    .end local v0    # "changed":Z
    .end local v1    # "showNumberShortcuts":Z
    :cond_2
    move v1, v3

    .line 118
    goto :goto_0
.end method
