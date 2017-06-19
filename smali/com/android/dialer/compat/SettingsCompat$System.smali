.class public Lcom/android/dialer/compat/SettingsCompat$System;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 41
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
