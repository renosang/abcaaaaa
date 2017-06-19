.class public Lcom/android/dialer/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSystemUser(Landroid/os/UserManager;)Z
    .locals 3
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    return v0

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x186a0

    div-int/2addr v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/android/dialer/compat/UserManagerSdkCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
