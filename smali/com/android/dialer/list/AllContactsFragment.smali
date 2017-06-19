.class public Lcom/android/dialer/list/AllContactsFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "AllContactsFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/AllContactsFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;",
        "Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;"
    }
.end annotation


# instance fields
.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/dialer/list/AllContactsFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->reloadData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/android/dialer/list/AllContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/AllContactsFragment$1;-><init>(Lcom/android/dialer/list/AllContactsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/dialer/list/AllContactsFragment;->setQuickContactEnabled(Z)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setAdjustSelectionBoundsEnabled(Z)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setPhotoLoaderEnabled(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/dialer/list/AllContactsFragment;->setDarkTheme(Z)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setVisibleScrollbarEnabled(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/android/dialer/list/AllContactsFragment$2;

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/AllContactsFragment$2;-><init>(Lcom/android/dialer/list/AllContactsFragment;Landroid/content/Context;)V

    .line 140
    .local v0, "adapter":Lcom/android/contacts/common/list/DefaultContactListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 142
    const/4 v1, -0x1

    .line 141
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 144
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    const v0, 0x7f040021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1, v4}, Landroid/support/v13/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 172
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v1

    .line 184
    const v2, 0x7f0d0286

    .line 183
    invoke-static {v0, v1, v2}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 167
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 155
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 158
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    .line 157
    invoke-static {v1, p2, v0, v3, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, p2, v0, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 126
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 123
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    if-ne p1, v2, :cond_0

    .line 192
    array-length v0, p3

    if-lt v0, v2, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->reloadData()V

    .line 190
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/dialer/list/AllContactsFragment;->mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    .line 98
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/PermissionsUtil;->registerPermissionReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/dialer/list/AllContactsFragment;->mReadContactsPermissionGrantedReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->unregisterPermissionReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 106
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onStop()V

    .line 103
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f0e0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    .line 86
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 87
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02b3

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 88
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/ViewUtil;->addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V

    .line 82
    return-void
.end method

.method protected startLoading()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 113
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02b3

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 114
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02b4

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 110
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02fe

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 117
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02fa

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 118
    iget-object v0, p0, Lcom/android/dialer/list/AllContactsFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    goto :goto_0
.end method
