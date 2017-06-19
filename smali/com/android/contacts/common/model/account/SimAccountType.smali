.class public Lcom/android/contacts/common/model/account/SimAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "SimAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.sim"

.field public static final FLAGS_PERSON_NAME:I = 0x2061

.field protected static final FLAGS_PHONE:I = 0x3

.field public static final FLAGS_PHONETIC:I = 0xc1

.field private static final TAG:Ljava/lang/String; = "SimContactsType"

.field private static mContext:Landroid/content/Context;

.field public static mSim1Wriable:Z

.field public static mSim2Wriable:Z

.field public static mSimWritable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lcom/android/contacts/common/model/account/SimAccountType;->mSimWritable:Z

    .line 61
    sput-boolean v0, Lcom/android/contacts/common/model/account/SimAccountType;->mSim1Wriable:Z

    .line 62
    sput-boolean v0, Lcom/android/contacts/common/model/account/SimAccountType;->mSim2Wriable:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 66
    const-string/jumbo v1, "com.android.sim"

    iput-object v1, p0, Lcom/android/contacts/common/model/account/SimAccountType;->accountType:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/contacts/common/model/account/SimAccountType;->resourcePackageName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/android/contacts/common/model/account/SimAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 70
    sput-object p1, Lcom/android/contacts/common/model/account/SimAccountType;->mContext:Landroid/content/Context;

    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/SimAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/model/account/SimAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v1, "SimContactsType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 120
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 122
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 123
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 125
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/contacts/common/model/account/SimAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 127
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f0d013e

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 98
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 99
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v5, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 100
    const-string/jumbo v3, "data2"

    iput-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 104
    invoke-static {v5}, Lcom/android/contacts/common/model/account/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 105
    .local v2, "moblieType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iput v4, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 106
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v4}, Lcom/android/contacts/common/model/account/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 109
    .local v0, "homeType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iput v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 110
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 113
    iget-object v3, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v4, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v5, "data1"

    const v6, 0x7f0d013d

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-object v1
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 89
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 90
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f0d0131

    .line 91
    const/16 v5, 0x2061

    .line 90
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
