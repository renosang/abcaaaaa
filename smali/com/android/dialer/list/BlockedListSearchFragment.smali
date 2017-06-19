.class public Lcom/android/dialer/list/BlockedListSearchFragment;
.super Lcom/android/dialer/list/RegularSearchFragment;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/BlockedListSearchFragment$1;,
        Lcom/android/dialer/list/BlockedListSearchFragment$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private final mSearchLayoutCallback:Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

.field private mSearchView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/dialer/list/BlockedListSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/BlockedListSearchFragment;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/dialer/list/RegularSearchFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/dialer/list/BlockedListSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/BlockedListSearchFragment$1;-><init>(Lcom/android/dialer/list/BlockedListSearchFragment;)V

    iput-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    .line 68
    new-instance v0, Lcom/android/dialer/list/BlockedListSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/BlockedListSearchFragment$2;-><init>(Lcom/android/dialer/list/BlockedListSearchFragment;)V

    .line 67
    iput-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchLayoutCallback:Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    .line 44
    return-void
.end method

.method private blockContactNumber(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "blockId"    # Ljava/lang/Integer;

    .prologue
    .line 228
    if-eqz p2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02f2

    .line 229
    invoke-static {v1, v2, p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 231
    const/4 v2, 0x0

    .line 229
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 240
    const v0, 0x7f0e00ab

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 241
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object v0, p2

    move-object v1, p1

    move-object v3, p1

    move-object v6, p0

    .line 235
    invoke-static/range {v0 .. v6}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 227
    return-void
.end method

.method private blockNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "countryIso":Ljava/lang/String;
    new-instance v1, Lcom/android/dialer/list/BlockedListSearchFragment$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/dialer/list/BlockedListSearchFragment$3;-><init>(Lcom/android/dialer/list/BlockedListSearchFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v1, "onCheckListener":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    iget-object v3, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v3, v1, p1, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 194
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 197
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02f1

    .line 196
    invoke-static {v4, v5, p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 198
    const/4 v5, 0x0

    .line 195
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 170
    :cond_0
    return-void
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 216
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 214
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/android/dialer/list/BlockedListSearchAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "adapter":Lcom/android/dialer/list/BlockedListSearchAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setDisplayPhotos(Z)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setUseCallableUri(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->setQueryString(Ljava/lang/String;)V

    .line 136
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onChangeFilteredNumberUndo()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/dialer/list/RegularSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/BlockedListSearchFragment;->setShowEmptyListForNullQuery(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/list/BlockedListSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 92
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 93
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 80
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onFilterNumberSuccess()V
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 205
    invoke-direct {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->goBack()V

    .line 203
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 166
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/dialer/list/RegularSearchFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 143
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v1, p3, v5

    .line 144
    .local v1, "adapterPosition":I
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/BlockedListSearchAdapter;

    .line 145
    .local v0, "adapter":Lcom/android/dialer/list/BlockedListSearchAdapter;
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->getShortcutTypeFromPosition(I)I

    move-result v4

    .line 146
    .local v4, "shortcutType":I
    const v5, 0x7f0e0023

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 148
    .local v2, "blockId":Ljava/lang/Integer;
    sparse-switch v4, :sswitch_data_0

    .line 160
    sget-object v5, Lcom/android/dialer/list/BlockedListSearchFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring unsupported shortcut type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 151
    :sswitch_0
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/BlockedListSearchAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "number":Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/dialer/list/BlockedListSearchFragment;->blockContactNumber(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 156
    .end local v3    # "number":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {v0}, Lcom/android/dialer/list/BlockedListSearchAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3    # "number":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/dialer/list/BlockedListSearchFragment;->blockNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    invoke-super {p0}, Lcom/android/dialer/list/RegularSearchFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const v2, 0x7f0400d9

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 102
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 103
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 107
    const v3, 0x7f0e01f8

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/widget/SearchEditTextLayout;

    .line 108
    .local v1, "searchEditTextLayout":Lcom/android/dialer/widget/SearchEditTextLayout;
    invoke-virtual {v1, v5, v4}, Lcom/android/dialer/widget/SearchEditTextLayout;->expand(ZZ)V

    .line 109
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchLayoutCallback:Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->setCallback(Lcom/android/dialer/widget/SearchEditTextLayout$Callback;)V

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const v2, 0x7f0e01f4

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    .line 113
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    const v3, 0x7f0d028b

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 116
    const v2, 0x7f0e01f6

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/list/BlockedListSearchFragment;->mSearchView:Landroid/widget/EditText;

    .line 125
    invoke-virtual {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b024d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 124
    invoke-virtual {v2, v5, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 97
    return-void
.end method

.method public onUnfilterNumberSuccess()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/android/dialer/list/BlockedListSearchFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unblocked a number from the BlockedListSearchFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lcom/android/dialer/list/BlockedListSearchFragment;->goBack()V

    .line 209
    return-void
.end method
