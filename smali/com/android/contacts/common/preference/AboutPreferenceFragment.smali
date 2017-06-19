.class public Lcom/android/contacts/common/preference/AboutPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutPreferenceFragment.java"


# static fields
.field private static final PRIVACY_POLICY_URL:Ljava/lang/String; = "http://www.google.com/policies/privacy"

.field private static final TERMS_OF_SERVICE_URL:Ljava/lang/String; = "http://www.google.com/policies/terms"


# direct methods
.method static synthetic -wrap0(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->startActivityForUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private startActivityForUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v8, 0x7f070002

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 51
    .local v4, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const v8, 0x7f0d009d

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 54
    .local v7, "versionPreference":Landroid/preference/Preference;
    iget-object v8, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "versionPreference":Landroid/preference/Preference;
    :goto_0
    const v8, 0x7f0d009e

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 61
    .local v2, "licensePreference":Landroid/preference/Preference;
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/android/contacts/common/activity/LicenseActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 63
    const-string/jumbo v8, "pref_privacy_policy"

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 64
    .local v5, "privacyPolicyPreference":Landroid/preference/Preference;
    const-string/jumbo v8, "pref_terms_of_service"

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 67
    .local v6, "termsOfServicePreference":Landroid/preference/Preference;
    new-instance v3, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;-><init>(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Landroid/preference/Preference;Landroid/preference/Preference;)V

    .line 84
    .local v3, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 42
    return-void

    .line 55
    .end local v2    # "licensePreference":Landroid/preference/Preference;
    .end local v3    # "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    .end local v5    # "privacyPolicyPreference":Landroid/preference/Preference;
    .end local v6    # "termsOfServicePreference":Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
