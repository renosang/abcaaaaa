.class public Lcom/android/contacts/common/compat/ContactsCompat;
.super Ljava/lang/Object;
.source "ContactsCompat.java"


# static fields
.field private static final ENTERPRISE_CONTACT_ID_BASE:J = 0x3b9aca00L

.field private static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/android/contacts/common/compat/ContactsCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/contacts/common/compat/ContactsCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static isEnterpriseContactId(J)Z
    .locals 4
    .param p0, "contactId"    # J

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v0

    return v0

    .line 57
    :cond_0
    const-wide/32 v2, 0x3b9aca00

    cmp-long v1, p0, v2

    if-ltz v1, :cond_1

    .line 58
    const-wide v2, 0x7fffffff80000000L

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 57
    :cond_1
    return v0
.end method
