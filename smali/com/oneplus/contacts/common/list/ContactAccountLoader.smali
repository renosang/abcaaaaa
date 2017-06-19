.class public final Lcom/oneplus/contacts/common/list/ContactAccountLoader;
.super Landroid/content/CursorLoader;
.source "ContactAccountLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/list/ContactAccountLoader$AccountInfoQuery;
    }
.end annotation


# static fields
.field public static final ONEPLUS_ACCOUNTS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "oneplus_accounts"

    .line 28
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/contacts/common/list/ContactAccountLoader;->ONEPLUS_ACCOUNTS_URI:Landroid/net/Uri;

    .line 26
    return-void
.end method
