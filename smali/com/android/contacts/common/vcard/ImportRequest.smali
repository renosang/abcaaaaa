.class public Lcom/android/contacts/common/vcard/ImportRequest;
.super Ljava/lang/Object;
.source "ImportRequest.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final data:[B

.field public final displayName:Ljava/lang/String;

.field public final entryCount:I

.field public final estimatedCharset:Ljava/lang/String;

.field public final estimatedVCardType:I

.field public final uri:Landroid/net/Uri;

.field public final vcardVersion:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/model/account/AccountWithDataSet;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "data"    # [B
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "estimatedType"    # I
    .param p6, "estimatedCharset"    # Ljava/lang/String;
    .param p7, "vcardVersion"    # I
    .param p8, "entryCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 103
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportRequest;->data:[B

    .line 104
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 105
    iput-object p4, p0, Lcom/android/contacts/common/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 106
    iput p5, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedVCardType:I

    .line 107
    iput-object p6, p0, Lcom/android/contacts/common/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 108
    iput p7, p0, Lcom/android/contacts/common/vcard/ImportRequest;->vcardVersion:I

    .line 109
    iput p8, p0, Lcom/android/contacts/common/vcard/ImportRequest;->entryCount:I

    .line 101
    return-void
.end method
