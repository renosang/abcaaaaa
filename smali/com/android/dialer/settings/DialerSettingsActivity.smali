.class public Lcom/android/dialer/settings/DialerSettingsActivity;
.super Lcom/android/dialer/settings/AppCompatPreferenceActivity;
.source "DialerSettingsActivity.java"


# instance fields
.field protected mPreferences:Landroid/content/SharedPreferences;

.field private migrationStatusOnBuildHeaders:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method private isPrimaryUser()Z
    .locals 1

    .prologue
    .line 183
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/dialer/settings/DialerSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/dialer/compat/UserManagerCompat;->isSystemUser(Landroid/os/UserManager;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->isSafeToCommitTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->onBackPressed()V

    .line 167
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 66
    .local v7, "displayOptionsHeader":Landroid/preference/PreferenceActivity$Header;
    const v17, 0x7f0d02da

    move/from16 v0, v17

    iput v0, v7, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 67
    const-class v17, Lcom/android/dialer/settings/DisplayOptionsSettingsFragment;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v13, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v13}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 71
    .local v13, "soundSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    const v17, 0x7f0d02db

    move/from16 v0, v17

    iput v0, v13, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 72
    const-class v17, Lcom/android/dialer/settings/SoundSettingsFragment;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 73
    const-wide/32 v18, 0x7f0e0022

    move-wide/from16 v0, v18

    iput-wide v0, v13, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 74
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 77
    new-instance v11, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 79
    .local v11, "quickResponseSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v17, "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v12, "quickResponseSettingsIntent":Landroid/content/Intent;
    const v17, 0x7f0d02e1

    move/from16 v0, v17

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 81
    iput-object v12, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 82
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v11    # "quickResponseSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "quickResponseSettingsIntent":Landroid/content/Intent;
    :cond_0
    new-instance v14, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v14}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 86
    .local v14, "speedDialSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    new-instance v15, Landroid/content/Intent;

    const-class v17, Lcom/android/dialer/SpeedDialListActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v15, "speedDialSettingsIntent":Landroid/content/Intent;
    const/high16 v17, 0x4000000

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const v17, 0x7f0d0305

    move/from16 v0, v17

    iput v0, v14, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 90
    iput-object v15, v14, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 91
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/settings/DialerSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 100
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->isPrimaryUser()Z

    move-result v8

    .line 101
    .local v8, "isPrimaryUser":Z
    if-eqz v8, :cond_5

    .line 102
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->getPhoneCount(Landroid/telephony/TelephonyManager;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    .line 103
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 104
    .local v5, "callSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v17, "android.telecom.action.SHOW_CALL_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, "callSettingsIntent":Landroid/content/Intent;
    const/high16 v17, 0x4000000

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    const v17, 0x7f0d02e2

    move/from16 v0, v17

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 108
    iput-object v6, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 109
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "callSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "callSettingsIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/compat/FilteredNumberCompat;->canCurrentUserOpenBlockSettings(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 121
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 122
    .local v4, "blockedCallsHeader":Landroid/preference/PreferenceActivity$Header;
    const v17, 0x7f0d02e3

    move/from16 v0, v17

    iput v0, v4, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 123
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/compat/FilteredNumberCompat;->createManageBlockedNumbersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 124
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/dialer/settings/DialerSettingsActivity;->migrationStatusOnBuildHeaders:Z

    .line 127
    .end local v4    # "blockedCallsHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    if-eqz v8, :cond_4

    .line 128
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->isTtyModeSupported(Landroid/telephony/TelephonyManager;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 129
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/compat/TelephonyManagerCompat;->isHearingAidCompatibilitySupported(Landroid/telephony/TelephonyManager;)Z

    move-result v17

    .line 127
    if-eqz v17, :cond_4

    .line 130
    :cond_3
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 132
    .local v2, "accessibilitySettingsHeader":Landroid/preference/PreferenceActivity$Header;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v17, "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, "accessibilitySettingsIntent":Landroid/content/Intent;
    const v17, 0x7f0d02dc

    move/from16 v0, v17

    iput v0, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 134
    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 135
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v2    # "accessibilitySettingsHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "accessibilitySettingsIntent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 110
    :cond_5
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v17

    if-nez v17, :cond_6

    if-eqz v8, :cond_1

    .line 111
    :cond_6
    new-instance v9, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v9}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 113
    .local v9, "phoneAccountSettingsHeader":Landroid/preference/PreferenceActivity$Header;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v17, "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v10, "phoneAccountSettingsIntent":Landroid/content/Intent;
    const/high16 v17, 0x4000000

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const v17, 0x7f0d02f5

    move/from16 v0, v17

    iput v0, v9, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 117
    iput-object v10, v9, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 118
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/settings/DialerSettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 141
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0e0022

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/android/dialer/compat/SettingsCompat$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0302

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    .line 146
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/settings/DialerSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->onBackPressed()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/dialer/settings/AppCompatPreferenceActivity;->onResume()V

    .line 58
    iget-boolean v0, p0, Lcom/android/dialer/settings/DialerSettingsActivity;->migrationStatusOnBuildHeaders:Z

    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->hasMigratedToNewBlocking()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->invalidateHeaders()V

    .line 52
    :cond_0
    return-void
.end method
