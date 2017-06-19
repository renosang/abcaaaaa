.class public Lcom/android/dialer/settings/SoundSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SoundSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/settings/SoundSettingsFragment$1;,
        Lcom/android/dialer/settings/SoundSettingsFragment$2;
    }
.end annotation


# instance fields
.field private mDtmfToneLength:Landroid/preference/ListPreference;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private final mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/settings/SoundSettingsFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/settings/SoundSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->updateRingtonePreferenceSummary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/dialer/settings/SoundSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/settings/SoundSettingsFragment$1;-><init>(Lcom/android/dialer/settings/SoundSettingsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lcom/android/dialer/settings/SoundSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/settings/SoundSettingsFragment$2;-><init>(Lcom/android/dialer/settings/SoundSettingsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private hasVibrator()Z
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 236
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldHideCarrierSettings()Z
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 241
    const-string/jumbo v2, "carrier_config"

    .line 240
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 242
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 243
    const-string/jumbo v2, "hide_carrier_network_settings_bool"

    .line 242
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private shouldPlayDtmfTone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 225
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 226
    const-string/jumbo v3, "dtmf_tone"

    .line 225
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, "dtmfToneSetting":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldVibrateWhenRinging()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 216
    const-string/jumbo v4, "vibrate_when_ringing"

    .line 215
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "vibrateWhenRingingSetting":I
    invoke-direct {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateRingtonePreferenceSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 204
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v1, v3, v2, v3}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V

    .line 199
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x17

    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/SoundSettingsFragment;->addPreferencesFromResource(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    const v2, 0x7f0d02f6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    .line 96
    const v2, 0x7f0d02f7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 98
    const v2, 0x7f0d02f8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 100
    const v2, 0x7f0d02f9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/SoundSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    .line 102
    invoke-direct {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->shouldPlayDtmfTone()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 114
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 115
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->canChangeDtmfToneLength()Z

    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isWorldPhone()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->shouldHideCarrierSettings()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    iput-object v5, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    .line 87
    :goto_1
    return-void

    .line 105
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    iput-object v5, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    .line 117
    .restart local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 120
    const-string/jumbo v4, "dtmf_tone_type"

    .line 121
    const/4 v5, 0x0

    .line 119
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 118
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dialer/compat/SettingsCompat$System;->canWrite(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 159
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0302

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 161
    return v3

    .line 163
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_3

    .line 164
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 165
    .local v0, "doVibrate":Z
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 166
    const-string/jumbo v5, "vibrate_when_ringing"

    .line 167
    if-eqz v0, :cond_1

    move v2, v3

    .line 165
    :cond_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    .end local v0    # "doVibrate":Z
    :cond_2
    :goto_0
    return v3

    .line 168
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mDtmfToneLength:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 170
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 171
    const-string/jumbo v4, "dtmf_tone_type"

    .line 170
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/compat/SettingsCompat$System;->canWrite(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 184
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0302

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    return v1

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 190
    const-string/jumbo v3, "dtmf_tone"

    .line 191
    iget-object v4, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 189
    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    :cond_2
    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/compat/SettingsCompat$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/dialer/settings/SoundSettingsFragment;->shouldVibrateWhenRinging()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/dialer/settings/SoundSettingsFragment;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method
