.class public Lcom/android/contacts/common/compat/CallableCompat;
.super Ljava/lang/Object;
.source "CallableCompat.java"


# static fields
.field private static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/contacts/common/compat/CallableCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentFilterUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/android/contacts/common/compat/CallableCompat;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0

    .line 34
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method
