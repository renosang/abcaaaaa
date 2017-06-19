.class public Lcom/android/dialer/settings/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;

.field private mIsSafeToCommitTransactions:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 121
    invoke-static {p0, v1}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 115
    return-void
.end method

.method public isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mIsSafeToCommitTransactions:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 40
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mIsSafeToCommitTransactions:Z

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 111
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mIsSafeToCommitTransactions:Z

    .line 133
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mIsSafeToCommitTransactions:Z

    .line 139
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->mIsSafeToCommitTransactions:Z

    .line 127
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 105
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    .line 103
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 93
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    .line 65
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method
