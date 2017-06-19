.class public Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BlockedNumbersSettingsActivity.java"

# interfaces
.implements Lcom/android/dialer/list/SearchFragment$HostInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getDialpadHeight()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public isActionBarShowing()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isDialpadShown()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 129
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->setContentView(I)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->showManagementUi()V

    .line 50
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->onBackPressed()V

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showManagementUi()V
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "blocked_management"

    .line 64
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    .line 66
    .local v0, "fragment":Lcom/android/dialer/filterednumber/BlockedNumbersFragment;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    .end local v0    # "fragment":Lcom/android/dialer/filterednumber/BlockedNumbersFragment;
    invoke-direct {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;-><init>()V

    .line 70
    .restart local v0    # "fragment":Lcom/android/dialer/filterednumber/BlockedNumbersFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "blocked_management"

    .line 71
    const v3, 0x7f0e00ab

    .line 70
    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 75
    const/16 v1, 0x12

    invoke-static {v1, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 63
    return-void
.end method

.method public showNumbersToImportPreviewUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 107
    const-string/jumbo v2, "view_numbers_to_import"

    .line 106
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;

    .line 108
    .local v0, "fragment":Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;

    .end local v0    # "fragment":Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;
    invoke-direct {v0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;-><init>()V

    .line 112
    .restart local v0    # "fragment":Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 114
    const-string/jumbo v2, "view_numbers_to_import"

    .line 113
    const v3, 0x7f0e00ab

    .line 112
    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 105
    return-void
.end method

.method public showSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 83
    const-string/jumbo v2, "blocked_search"

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/BlockedListSearchFragment;

    .line 84
    .local v0, "fragment":Lcom/android/dialer/list/BlockedListSearchFragment;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/dialer/list/BlockedListSearchFragment;

    .end local v0    # "fragment":Lcom/android/dialer/list/BlockedListSearchFragment;
    invoke-direct {v0}, Lcom/android/dialer/list/BlockedListSearchFragment;-><init>()V

    .line 86
    .restart local v0    # "fragment":Lcom/android/dialer/list/BlockedListSearchFragment;
    invoke-virtual {v0, v3}, Lcom/android/dialer/list/BlockedListSearchFragment;->setHasOptionsMenu(Z)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/BlockedListSearchFragment;->setShowEmptyListForNullQuery(Z)V

    .line 88
    invoke-virtual {v0, v3}, Lcom/android/dialer/list/BlockedListSearchFragment;->setDirectorySearchEnabled(Z)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockedNumbersSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "blocked_search"

    .line 92
    const v3, 0x7f0e00ab

    .line 91
    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 97
    const/16 v1, 0x13

    invoke-static {v1, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 81
    return-void
.end method
