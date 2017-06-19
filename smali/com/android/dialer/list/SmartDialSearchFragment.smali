.class public Lcom/android/dialer/list/SmartDialSearchFragment;
.super Lcom/android/dialer/list/SearchFragment;
.source "SmartDialSearchFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SmartDialSearchFragment;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setUseCallableUri(Z)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setQuickContactEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p0}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V

    .line 61
    return-object v0
.end method

.method protected getCallInitiationType(Z)I
    .locals 1
    .param p1, "isRemoteDirectory"    # Z

    .prologue
    .line 128
    const/4 v0, 0x5

    return v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 88
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public isShowingPermissionRequest()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0}, Lcom/android/dialer/widget/EmptyContentView;->isShowingContent()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getDirectoryLoaderId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v2

    return-object v2

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SmartDialNumberListAdapter;

    .line 74
    .local v0, "adapter":Lcom/android/dialer/list/SmartDialNumberListAdapter;
    new-instance v1, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    invoke-super {p0}, Lcom/android/dialer/list/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, "loader":Lcom/android/dialer/dialpad/SmartDialCursorLoader;
    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SmartDialNumberListAdapter;->configureLoader(Lcom/android/dialer/dialpad/SmartDialCursorLoader;)V

    .line 76
    return-object v1
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1, v4}, Landroid/support/v13/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 121
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->setupEmptyView()V

    .line 120
    :cond_0
    return-void
.end method

.method protected setupEmptyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 96
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02fa

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 97
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d0301

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 98
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 101
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 102
    iget-object v0, p0, Lcom/android/dialer/list/SmartDialSearchFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v0, v2}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    goto :goto_0
.end method
