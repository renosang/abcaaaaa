.class public Lcom/android/contacts/common/model/account/ProfileAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "ProfileAccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "profile"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.profile"

.field private static final TAG:Ljava/lang/String; = "ProfileAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 18
    const-string/jumbo v1, "com.android.profile"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/ProfileAccountType;->accountType:Ljava/lang/String;

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ProfileAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;->printStackTrace()V

    .line 30
    const-string/jumbo v1, "ProfileAccountType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
