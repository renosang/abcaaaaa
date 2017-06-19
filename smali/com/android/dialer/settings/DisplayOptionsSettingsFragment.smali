.class public Lcom/android/dialer/settings/DisplayOptionsSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DisplayOptionsSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/android/dialer/settings/DisplayOptionsSettingsFragment;->addPreferencesFromResource(I)V

    .line 27
    return-void
.end method
