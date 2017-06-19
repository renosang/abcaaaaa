.class public final Lcom/android/dialer/util/PhoneLookupUtil;
.super Ljava/lang/Object;
.source "PhoneLookupUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactIdColumnNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "phoneLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 30
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "contact_id"

    return-object v1

    .line 35
    :cond_0
    const-string/jumbo v1, "sip"

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, "isSip":Z
    if-eqz v0, :cond_1

    const-string/jumbo v1, "contact_id"

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "_id"

    goto :goto_0
.end method
