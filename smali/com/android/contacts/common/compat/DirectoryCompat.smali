.class public Lcom/android/contacts/common/compat/DirectoryCompat;
.super Ljava/lang/Object;
.source "DirectoryCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/android/contacts/common/compat/DirectorySdkCompat;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 31
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static isEnterpriseDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/DirectorySdkCompat;->isEnterpriseDirectoryId(J)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInvisibleDirectory(J)Z
    .locals 6
    .param p0, "directoryId"    # J

    .prologue
    const-wide/16 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 35
    sget-boolean v2, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v2, :cond_2

    .line 36
    cmp-long v2, p0, v4

    if-eqz v2, :cond_0

    .line 37
    const-wide/32 v2, 0x3b9aca01

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    cmp-long v2, p0, v4

    if-nez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isRemoteDirectoryId(J)Z
    .locals 4
    .param p0, "directoryId"    # J

    .prologue
    const/4 v0, 0x0

    .line 43
    sget-boolean v1, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/DirectorySdkCompat;->isRemoteDirectoryId(J)Z

    move-result v0

    return v0

    .line 46
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x1

    cmp-long v1, p0, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
