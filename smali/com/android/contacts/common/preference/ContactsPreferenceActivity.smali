.class public final Lcom/android/contacts/common/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"


# static fields
.field private static final TAG_ABOUT_CONTACTS:Ljava/lang/String; = "about_contacts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    const v2, 0x7f09000e

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setActivityTitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    const v0, 0x7f0d01de

    invoke-direct {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 85
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0d01de

    const/4 v3, 0x4

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 43
    :cond_0
    if-nez p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 45
    new-instance v4, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;

    invoke-direct {v4}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;-><init>()V

    const v5, 0x1020002

    .line 44
    invoke-virtual {v3, v5, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 47
    invoke-direct {p0, v2}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    .line 35
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 50
    const-string/jumbo v4, "about_contacts"

    .line 49
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    .line 51
    .local v1, "fragment":Lcom/android/contacts/common/preference/AboutPreferenceFragment;
    if-nez v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    goto :goto_0

    .line 52
    :cond_2
    const v2, 0x7f0d01b9

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->onBackPressed()V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showAboutFragment()V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;-><init>()V

    const-string/jumbo v2, "about_contacts"

    const v3, 0x1020002

    .line 57
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 61
    const v0, 0x7f0d01b9

    invoke-direct {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    .line 56
    return-void
.end method
