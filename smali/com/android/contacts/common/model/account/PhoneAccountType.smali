.class public Lcom/android/contacts/common/model/account/PhoneAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "PhoneAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.localphone"

.field public static final FLAGS_PERSON_NAME:I = 0x2061

.field protected static final FLAGS_PHONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhoneAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 56
    const-string/jumbo v1, "com.android.localphone"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/PhoneAccountType;->accountType:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/contacts/common/model/account/PhoneAccountType;->resourcePackageName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/android/contacts/common/model/account/PhoneAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    const v2, 0x1120063

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/PhoneAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/PhoneAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v1, "PhoneAccountType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getPhoneAccountDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 104
    if-eqz p0, :cond_0

    .line 105
    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    return-object v0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
