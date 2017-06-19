.class public Lcom/android/dialer/list/RegularSearchFragment;
.super Lcom/android/dialer/list/SearchFragment;
.source "RegularSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# instance fields
.field protected mPermissionToRequest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->configureDirectorySearch()V

    .line 57
    return-void
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 83
    sget-object v1, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    .line 86
    .local v0, "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    sget-object v1, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-virtual {v0, v3, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;->getContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;I)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v3

    .line 86
    invoke-interface {v1, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    .line 82
    .end local v0    # "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    :cond_0
    return-void
.end method

.method public configureDirectorySearch()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchFragment;->setDirectorySearchEnabled(Z)V

    .line 63
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchFragment;->setDirectoryResultLimit(I)V

    .line 61
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "adapter":Lcom/android/dialer/list/RegularSearchListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setDisplayPhotos(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setUseCallableUri(Z)V

    .line 77
    invoke-virtual {v0, p0}, Lcom/android/dialer/list/RegularSearchListAdapter;->setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V

    .line 78
    return-object v0
.end method

.method protected getCallInitiationType(Z)I
    .locals 1
    .param p1, "isRemoteDirectory"    # Z

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setScrollToSectionOnHeaderTouch(Z)V

    .line 67
    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    iget-object v2, p0, Lcom/android/dialer/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1, v4}, Landroid/support/v13/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 122
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

    .line 137
    if-ne p1, v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->setupEmptyView()V

    .line 139
    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v2, :cond_0

    .line 140
    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->notifyPermissionGranted(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected setupEmptyView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v4, p0, Lcom/android/dialer/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    const v2, 0x7f0200b4

    .line 100
    .local v2, "imageResource":I
    const v0, 0x7f0d02fa

    .line 101
    .local v0, "actionLabelResource":I
    const v1, 0x7f0d0300

    .line 102
    .local v1, "descriptionResource":I
    move-object v3, p0

    .line 103
    .local v3, "listener":Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    iput-object v4, p0, Lcom/android/dialer/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    .line 112
    .end local v3    # "listener":Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4, v2}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 113
    iget-object v4, p0, Lcom/android/dialer/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4, v0}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 114
    iget-object v4, p0, Lcom/android/dialer/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 115
    if-eqz v3, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/dialer/list/RegularSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 92
    .end local v0    # "actionLabelResource":I
    .end local v1    # "descriptionResource":I
    .end local v2    # "imageResource":I
    :cond_0
    return-void

    .line 105
    :cond_1
    const/4 v2, 0x0

    .line 106
    .restart local v2    # "imageResource":I
    const/4 v0, 0x0

    .line 107
    .restart local v0    # "actionLabelResource":I
    const/4 v1, 0x0

    .line 108
    .restart local v1    # "descriptionResource":I
    const/4 v3, 0x0

    .line 109
    .local v3, "listener":Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
    iput-object v6, p0, Lcom/android/dialer/list/RegularSearchFragment;->mPermissionToRequest:Ljava/lang/String;

    goto :goto_0
.end method
