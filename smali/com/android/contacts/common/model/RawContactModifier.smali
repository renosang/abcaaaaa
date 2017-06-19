.class public Lcom/android/contacts/common/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final COLUMN_FOR_LABEL:Ljava/lang/String; = "data3"

.field private static final COLUMN_FOR_TYPE:Ljava/lang/String; = "data2"

.field private static final DEBUG:Z = false

.field private static final FREQUENCY_TOTAL:I = -0x80000000

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_CUSTOM:I

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    const-class v0, Lcom/android/contacts/common/model/RawContactModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    .line 942
    new-instance v0, Ljava/util/HashSet;

    .line 943
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    .line 944
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    .line 945
    const-string/jumbo v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    .line 946
    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    .line 947
    const-string/jumbo v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    .line 948
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 949
    const-string/jumbo v2, "vnd.android.cursor.item/sip_address"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 943
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 950
    new-instance v0, Ljava/util/HashSet;

    .line 951
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    .line 952
    const-string/jumbo v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    .line 953
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    .line 954
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    .line 951
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 950
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 8
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 800
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 801
    :cond_0
    return v7

    .line 800
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 804
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 805
    .local v4, "typeInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 807
    .local v3, "type":I
    :goto_0
    invoke-static {v3, p1, p2}, Lcom/android/contacts/common/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 808
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 809
    return v7

    .line 805
    .end local v3    # "type":I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    goto :goto_0

    .line 813
    .restart local v3    # "type":I
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 814
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 815
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 816
    .local v0, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/common/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 817
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v6, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 818
    return v7

    .line 814
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 822
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_5
    return v6
.end method

.method protected static areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6
    .param p0, "values1"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "values2"    # Landroid/content/ContentValues;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v5, 0x0

    .line 507
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v4, :cond_0

    return v5

    .line 509
    :cond_0
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "field$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 510
    .local v0, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "value1":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "value2":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    return v5

    .line 517
    .end local v0    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v2    # "value1":Ljava/lang/String;
    .end local v3    # "value2":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public static canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v3, 0x0

    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    return v3

    .line 97
    :cond_1
    iget-object v4, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 98
    .local v2, "visibleCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v1

    .line 99
    .local v1, "validTypes":Z
    iget v4, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 100
    iget v4, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v4, :cond_3

    const/4 v0, 0x1

    .line 101
    .local v0, "validOverall":Z
    :goto_0
    if-eqz v1, :cond_4

    .end local v0    # "validOverall":Z
    :goto_1
    return v0

    .line 99
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "validOverall":Z
    goto :goto_0

    .line 100
    .end local v0    # "validOverall":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "validOverall":Z
    goto :goto_0

    :cond_4
    move v0, v3

    .line 101
    goto :goto_1
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v3, 0x0

    .line 1023
    if-nez p2, :cond_0

    .line 1024
    return-object v3

    .line 1027
    :cond_0
    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 1028
    .local v2, "typeOverallMax":I
    if-ltz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 1029
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1030
    .local v1, "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1031
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    move-object p2, v1

    .line 1035
    .end local v0    # "i":I
    .end local v1    # "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object p2
.end method

.method public static ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    .line 121
    .local v2, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p0, p2, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 123
    .local v1, "hasChild":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 124
    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    return-object v3

    .line 121
    .end local v1    # "hasChild":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasChild":Z
    goto :goto_0

    .line 129
    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 130
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v3, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 133
    :cond_2
    return-object v0

    .line 136
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    return-object v6
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 880
    const-string/jumbo v3, "im_protocol"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "encodedString":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 884
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 886
    .local v2, "protocol":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 887
    const-string/jumbo v3, "im_protocol"

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "protocol":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    :goto_0
    return-void

    .line 889
    .restart local v2    # "protocol":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "im_protocol"

    check-cast v2, Ljava/lang/String;

    .end local v2    # "protocol":Ljava/lang/Object;
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 12
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "includeSecondary"    # Z
    .param p3, "exactValue"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 296
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    .line 299
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 301
    .local v4, "typeCount":Landroid/util/SparseIntArray;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 300
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 302
    .local v10, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    .line 305
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 308
    .local v8, "lastType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 309
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 311
    .local v9, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v9, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 313
    .local v6, "count":I
    iget v0, v9, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne p3, v0, :cond_4

    .line 315
    return-object v9

    .line 318
    :cond_4
    if-lez v6, :cond_3

    .line 320
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 325
    .end local v6    # "count":I
    .end local v9    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 326
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    return-object v0

    .line 328
    :cond_6
    return-object v8
.end method

.method public static getCurrentType(Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "entry"    # Landroid/content/ContentValues;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v2

    .line 245
    :cond_0
    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 246
    .local v0, "rawValue":Ljava/lang/Integer;
    if-nez v0, :cond_1

    return-object v2

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentType(Landroid/database/Cursor;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v2, :cond_0

    return-object v3

    .line 256
    :cond_0
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 257
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v3

    .line 258
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 259
    .local v1, "rawValue":I
    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 235
    .local v0, "rawValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    return-object v2

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .param p1, "typeColumn"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    .line 863
    .local v0, "count":I
    if-eqz p0, :cond_1

    .line 864
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 865
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 866
    .local v3, "typeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "typeInteger":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "type$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 267
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 268
    return-object v0

    .line 271
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 198
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 201
    .local v6, "typeCount":Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 202
    .local v3, "mimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_0

    return-object v6

    .line 204
    :cond_0
    const/4 v4, 0x0

    .line 205
    .local v4, "totalCount":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 207
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 210
    invoke-static {v1, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v5

    .line 211
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 212
    iget v7, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 213
    .local v0, "count":I
    iget v7, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 216
    .end local v0    # "count":I
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    return-object v6
.end method

.method public static getTypePrecedence(Lcom/android/contacts/common/model/dataitem/DataKind;I)I
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 281
    .local v1, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 282
    return v0

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    const v2, 0x7fffffff

    return v2
.end method

.method public static getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .param p3, "includeSecondary"    # Z
    .param p4, "typeCount"    # Landroid/util/SparseIntArray;
    .param p5, "checkOverall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v7, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v8

    if-nez v8, :cond_0

    return-object v7

    .line 162
    :cond_0
    if-nez p4, :cond_1

    .line 164
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 168
    :cond_1
    const/4 v4, 0x1

    .line 169
    .local v4, "validOverall":Z
    if-eqz p5, :cond_2

    .line 170
    const/high16 v8, -0x80000000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 171
    .local v1, "overallCount":I
    iget v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const/4 v4, 0x1

    .line 175
    .end local v1    # "overallCount":I
    :cond_2
    :goto_0
    iget-object v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "type$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 176
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_9

    :cond_4
    const/4 v6, 0x1

    .line 178
    .local v6, "validSpecific":Z
    :goto_2
    if-eqz p3, :cond_a

    :cond_5
    const/4 v5, 0x1

    .line 179
    .local v5, "validSecondary":Z
    :goto_3
    invoke-virtual {v2, p2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 180
    .local v0, "forcedInclude":Z
    if-nez v0, :cond_6

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 182
    :cond_6
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    .end local v0    # "forcedInclude":Z
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v3    # "type$iterator":Ljava/util/Iterator;
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    .restart local v1    # "overallCount":I
    :cond_7
    iget v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v1, v8, :cond_8

    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_0

    .line 177
    .end local v1    # "overallCount":I
    .restart local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .restart local v3    # "type$iterator":Ljava/util/Iterator;
    :cond_9
    iget v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    .line 176
    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 177
    iget v9, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 176
    if-lt v8, v9, :cond_4

    const/4 v6, 0x0

    .restart local v6    # "validSpecific":Z
    goto :goto_2

    .line 178
    :cond_a
    iget-boolean v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->secondary:Z

    if-eqz v8, :cond_5

    const/4 v5, 0x0

    .restart local v5    # "validSecondary":Z
    goto :goto_3

    .line 186
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    :cond_b
    return-object v7
.end method

.method private static hasChanges(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Set;)Z
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "excludedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 461
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "kind$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 462
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v6, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 463
    .local v6, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 464
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 465
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 470
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v4}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_3
    move v3, v7

    .line 471
    .local v3, "isRealInsert":Z
    :goto_0
    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 472
    :cond_4
    return v8

    .end local v3    # "isRealInsert":Z
    :cond_5
    move v3, v8

    .line 470
    goto :goto_0

    .line 476
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_6
    return v7
.end method

.method public static hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z
    .locals 1
    .param p0, "set"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactModifier;->hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;Ljava/util/Set;)Z
    .locals 8
    .param p0, "set"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            "Lcom/android/contacts/common/model/AccountTypeManager;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "excludedMimeTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 398
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->isMarkedForSplitting()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->isMarkedForJoining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 399
    :cond_0
    return v7

    .line 402
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "state$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    .line 403
    .local v2, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 404
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 407
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v2, v4, p2}, Lcom/android/contacts/common/model/RawContactModifier;->hasChanges(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    return v7

    .line 411
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    return v6
.end method

.method public static hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 105
    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v5, v3

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0

    .line 108
    :cond_1
    return v3
.end method

.method public static insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 3
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 339
    if-nez p1, :cond_0

    return-object v1

    .line 341
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 342
    .local v0, "bestType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-nez v0, :cond_1

    .line 344
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 346
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 4
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType$EditType;

    .prologue
    const/4 v2, 0x0

    .line 355
    if-nez p1, :cond_0

    return-object v2

    .line 356
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v0, "after":Landroid/content/ContentValues;
    const-string/jumbo v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 366
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 368
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 372
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 373
    return-object v1
.end method

.method public static isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 484
    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    iget-object v6, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "data15"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 489
    :cond_1
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_2

    return v3

    .line 491
    :cond_2
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "field$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 493
    .local v0, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 495
    return v4

    .line 499
    .end local v0    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    return v3
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "type"    # I
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 831
    const/4 v2, 0x0

    .line 832
    .local v2, "max":I
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 833
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 834
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 835
    .local v0, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v6, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_1

    .line 836
    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 841
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_2

    .line 843
    return v5

    .line 833
    .restart local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    const/4 v6, -0x1

    if-ne v2, v6, :cond_3

    .line 848
    return v4

    .line 851
    :cond_3
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/common/model/RawContactModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-ge v6, v2, :cond_4

    :goto_1
    return v4

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V
    .locals 22
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p3, "defaultYear"    # Ljava/lang/Integer;

    .prologue
    .line 1257
    const-string/jumbo v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1256
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1258
    .local v16, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1259
    :cond_0
    return-void

    .line 1262
    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1263
    .local v9, "allowedTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/contacts/common/model/account/AccountType$EventEditType;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "editType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1264
    .local v12, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v3, v12, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    .end local v12    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v9, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1266
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1267
    .local v14, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    .line 1268
    .local v20, "values":Landroid/content/ContentValues;
    if-eqz v20, :cond_3

    .line 1271
    const-string/jumbo v3, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1272
    .local v11, "dateString":Ljava/lang/String;
    const-string/jumbo v3, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 1273
    .local v19, "type":Ljava/lang/Integer;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1274
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1275
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    .line 1277
    .local v18, "suitableType":Lcom/android/contacts/common/model/account/AccountType$EventEditType;
    new-instance v17, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1278
    .local v17, "position":Ljava/text/ParsePosition;
    const/16 v21, 0x0

    .line 1279
    .local v21, "yearOptional":Z
    sget-object v3, Lcom/android/contacts/common/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1280
    .local v10, "date":Ljava/util/Date;
    if-nez v10, :cond_4

    .line 1281
    const/16 v21, 0x1

    .line 1282
    sget-object v3, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1284
    :cond_4
    if-eqz v10, :cond_5

    .line 1285
    if-eqz v21, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1302
    :cond_5
    :goto_2
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    .line 1287
    :cond_6
    sget-object v3, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 1288
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1287
    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1289
    .local v2, "calendar":Ljava/util/Calendar;
    if-nez p3, :cond_7

    .line 1290
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1292
    :cond_7
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1293
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1294
    .local v4, "month":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1296
    .local v5, "day":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1297
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1296
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1298
    const-string/jumbo v3, "data1"

    .line 1299
    sget-object v6, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1298
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1255
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "dateString":Ljava/lang/String;
    .end local v14    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v18    # "suitableType":Lcom/android/contacts/common/model/account/AccountType$EventEditType;
    .end local v19    # "type":Ljava/lang/Integer;
    .end local v20    # "values":Landroid/content/ContentValues;
    .end local v21    # "yearOptional":Z
    :cond_8
    return-void
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 22
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1329
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1330
    .local v11, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1331
    :cond_0
    return-void

    .line 1352
    :cond_1
    const/4 v6, 0x0

    .line 1353
    .local v6, "defaultType":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1354
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    const-string/jumbo v20, "data2"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1356
    .end local v6    # "defaultType":Ljava/lang/Integer;
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1358
    .local v3, "allowedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v17, Landroid/util/SparseIntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseIntArray;-><init>()V

    .line 1359
    .local v17, "typeSpecificMaxMap":Landroid/util/SparseIntArray;
    if-eqz v6, :cond_3

    .line 1360
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1361
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    :cond_3
    const-string/jumbo v19, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1368
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1378
    :cond_4
    :goto_0
    if-nez v6, :cond_5

    .line 1379
    sget-object v19, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Default type isn\'t available for mimetype "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    move/from16 v16, v0

    .line 1385
    .local v16, "typeOverallMax":I
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 1386
    .local v5, "currentEntryCount":Landroid/util/SparseIntArray;
    const/4 v14, 0x0

    .line 1388
    .local v14, "totalCount":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1389
    .local v9, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v16

    if-lt v14, v0, :cond_a

    .line 1328
    .end local v9    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_7
    return-void

    .line 1369
    .end local v5    # "currentEntryCount":Landroid/util/SparseIntArray;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "totalCount":I
    .end local v16    # "typeOverallMax":I
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "editType$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1370
    .local v7, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1371
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v19, v0

    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 1373
    .end local v7    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_9
    if-nez v6, :cond_4

    .line 1374
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .local v6, "defaultType":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 1393
    .end local v6    # "defaultType":Ljava/lang/Integer;
    .end local v8    # "editType$iterator":Ljava/util/Iterator;
    .restart local v5    # "currentEntryCount":Landroid/util/SparseIntArray;
    .restart local v9    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v14    # "totalCount":I
    .restart local v16    # "typeOverallMax":I
    :cond_a
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    .line 1394
    .local v18, "values":Landroid/content/ContentValues;
    if-eqz v18, :cond_6

    .line 1398
    const-string/jumbo v19, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1400
    .local v12, "oldType":Ljava/lang/Integer;
    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 1402
    if-eqz v6, :cond_d

    .line 1403
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1404
    .local v15, "typeForNewAccount":Ljava/lang/Integer;
    const-string/jumbo v19, "data2"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_b

    .line 1406
    const-string/jumbo v19, "data3"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1415
    .end local v15    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_b
    :goto_3
    if-eqz v15, :cond_c

    .line 1416
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 1417
    .local v13, "specificMax":I
    if-ltz v13, :cond_c

    .line 1418
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 1419
    .local v4, "currentCount":I
    if-ge v4, v13, :cond_6

    .line 1422
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1425
    .end local v4    # "currentCount":I
    .end local v13    # "specificMax":I
    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 1426
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1409
    :cond_d
    const/4 v15, 0x0

    .line 1410
    .local v15, "typeForNewAccount":Ljava/lang/Integer;
    const-string/jumbo v19, "data2"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1413
    .end local v15    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_e
    move-object v15, v12

    .local v15, "typeForNewAccount":Ljava/lang/Integer;
    goto :goto_3
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 5
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1313
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1312
    invoke-static {p1, p2, v4}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1314
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1315
    :cond_0
    return-void

    .line 1318
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1319
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 1320
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 1321
    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 1311
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method public static migratePostal(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 26
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1146
    const-string/jumbo v22, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1145
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1147
    .local v14, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1148
    :cond_0
    return-void

    .line 1151
    :cond_1
    const/16 v17, 0x0

    .line 1152
    .local v17, "supportFormattedAddress":Z
    const/16 v18, 0x0

    .line 1153
    .local v18, "supportStreet":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 1154
    .local v12, "firstColumn":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "editField$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 1155
    .local v5, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v22, "data1"

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1156
    const/16 v17, 0x1

    .line 1158
    :cond_3
    const-string/jumbo v22, "data4"

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1159
    const/16 v18, 0x1

    goto :goto_0

    .line 1163
    .end local v5    # "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_4
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 1164
    .local v19, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1170
    :cond_5
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1171
    .local v10, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v21

    .line 1172
    .local v21, "values":Landroid/content/ContentValues;
    if-eqz v21, :cond_6

    .line 1175
    const-string/jumbo v22, "data2"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 1176
    .local v15, "oldType":Ljava/lang/Integer;
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1178
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1179
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data2"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1183
    .local v4, "defaultType":I
    :goto_2
    const-string/jumbo v22, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-nez v22, :cond_7

    .line 1185
    const-string/jumbo v22, "data3"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1189
    .end local v4    # "defaultType":I
    :cond_7
    const-string/jumbo v22, "data1"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1190
    .local v13, "formattedAddress":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 1191
    if-nez v17, :cond_8

    .line 1193
    const-string/jumbo v22, "data1"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1198
    if-eqz v18, :cond_b

    .line 1199
    const-string/jumbo v22, "data4"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_8
    :goto_3
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    .line 1165
    .end local v10    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "formattedAddress":Ljava/lang/String;
    .end local v15    # "oldType":Ljava/lang/Integer;
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "editType$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1166
    .local v7, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1181
    .end local v7    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v8    # "editType$iterator":Ljava/util/Iterator;
    .restart local v10    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v11    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "oldType":Ljava/lang/Integer;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    .restart local v4    # "defaultType":I
    goto :goto_2

    .line 1201
    .end local v4    # "defaultType":I
    .restart local v13    # "formattedAddress":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1205
    :cond_c
    if-eqz v17, :cond_8

    .line 1211
    sget-object v22, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1212
    .local v20, "useJapaneseOrder":Z
    if-eqz v20, :cond_e

    .line 1213
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1214
    const-string/jumbo v22, "data10"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v16, v23

    .line 1215
    const-string/jumbo v22, "data9"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v16, v23

    .line 1216
    const-string/jumbo v22, "data8"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    aput-object v22, v16, v23

    .line 1217
    const-string/jumbo v22, "data7"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v16, v23

    .line 1218
    const-string/jumbo v22, "data6"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x4

    aput-object v22, v16, v23

    .line 1219
    const-string/jumbo v22, "data4"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x5

    aput-object v22, v16, v23

    .line 1220
    const-string/jumbo v22, "data5"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6

    aput-object v22, v16, v23

    .line 1231
    .local v16, "structuredData":[Ljava/lang/String;
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1232
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    aget-object v9, v16, v22

    .line 1233
    .local v9, "elem":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 1234
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 1222
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "elem":Ljava/lang/String;
    .end local v16    # "structuredData":[Ljava/lang/String;
    :cond_e
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1223
    const-string/jumbo v22, "data5"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v16, v23

    .line 1224
    const-string/jumbo v22, "data4"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v16, v23

    .line 1225
    const-string/jumbo v22, "data6"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    aput-object v22, v16, v23

    .line 1226
    const-string/jumbo v22, "data7"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v16, v23

    .line 1227
    const-string/jumbo v22, "data8"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x4

    aput-object v22, v16, v23

    .line 1228
    const-string/jumbo v22, "data9"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x5

    aput-object v22, v16, v23

    .line 1229
    const-string/jumbo v22, "data10"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6

    aput-object v22, v16, v23

    .line 1222
    .restart local v16    # "structuredData":[Ljava/lang/String;
    goto :goto_5

    .line 1237
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_f
    const-string/jumbo v22, "data1"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string/jumbo v22, "data5"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1240
    const-string/jumbo v22, "data4"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1241
    const-string/jumbo v22, "data6"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1242
    const-string/jumbo v22, "data7"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1243
    const-string/jumbo v22, "data8"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1244
    const-string/jumbo v22, "data9"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1245
    const-string/jumbo v22, "data10"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1144
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v13    # "formattedAddress":Ljava/lang/String;
    .end local v15    # "oldType":Ljava/lang/Integer;
    .end local v16    # "structuredData":[Ljava/lang/String;
    .end local v20    # "useJapaneseOrder":Z
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_10
    return-void
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "oldAccountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p4, "newAccountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v8, 0x0

    .line 970
    if-ne p4, p3, :cond_3

    .line 973
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "kind$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 974
    .local v3, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 976
    .local v5, "mimeType":Ljava/lang/String;
    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 977
    invoke-static {p0, p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_0

    .line 979
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 980
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 981
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 982
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v6

    .line 983
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz v6, :cond_2

    .line 984
    invoke-static {v6}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    .line 993
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "kind$iterator":Ljava/util/Iterator;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "kind$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 994
    .restart local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v7, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v7, :cond_4

    .line 995
    iget-object v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 996
    .restart local v5    # "mimeType":Ljava/lang/String;
    const-string/jumbo v7, "#displayName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 997
    const-string/jumbo v7, "#phoneticName"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 996
    if-nez v7, :cond_4

    .line 1000
    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1001
    invoke-static {p0, p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1002
    :cond_5
    const-string/jumbo v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1003
    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migratePostal(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1004
    :cond_6
    const-string/jumbo v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1005
    invoke-static {p1, p2, v3, v8}, Lcom/android/contacts/common/model/RawContactModifier;->migrateEvent(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1006
    :cond_7
    sget-object v7, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1007
    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1008
    :cond_8
    sget-object v7, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1009
    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1011
    :cond_9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected editable mime-type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 969
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1043
    const-string/jumbo v13, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v12

    .line 1044
    .local v12, "values":Landroid/content/ContentValues;
    if-nez v12, :cond_0

    .line 1045
    return-void

    .line 1048
    :cond_0
    const/4 v6, 0x0

    .line 1049
    .local v6, "supportDisplayName":Z
    const/4 v8, 0x0

    .line 1050
    .local v8, "supportPhoneticFullName":Z
    const/4 v7, 0x0

    .line 1051
    .local v7, "supportPhoneticFamilyName":Z
    const/4 v10, 0x0

    .line 1052
    .local v10, "supportPhoneticMiddleName":Z
    const/4 v9, 0x0

    .line 1053
    .local v9, "supportPhoneticGivenName":Z
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "editField$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 1054
    .local v2, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v13, "data1"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1055
    const/4 v6, 0x1

    .line 1057
    :cond_2
    const-string/jumbo v13, "#phoneticName"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1058
    const/4 v8, 0x1

    .line 1060
    :cond_3
    const-string/jumbo v13, "data9"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1061
    const/4 v7, 0x1

    .line 1063
    :cond_4
    const-string/jumbo v13, "data8"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1064
    const/4 v10, 0x1

    .line 1066
    :cond_5
    const-string/jumbo v13, "data7"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1067
    const/4 v9, 0x1

    goto :goto_0

    .line 1072
    .end local v2    # "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_6
    const-string/jumbo v13, "data1"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1074
    if-nez v6, :cond_7

    .line 1076
    move-object/from16 v0, p0

    invoke-static {v0, v1, v12}, Lcom/android/contacts/common/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1079
    const-string/jumbo v13, "data1"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1093
    :cond_7
    const-string/jumbo v13, "#phoneticName"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1094
    .local v5, "phoneticFullName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1095
    if-nez v8, :cond_8

    .line 1098
    const/4 v13, 0x0

    invoke-static {v5, v13}, Lcom/android/contacts/common/util/NameConverter;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    move-result-object v11

    .line 1099
    .local v11, "tmpItem":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    const-string/jumbo v13, "#phoneticName"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1100
    if-eqz v7, :cond_a

    .line 1101
    const-string/jumbo v13, "data9"

    .line 1102
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v14

    .line 1101
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :goto_1
    if-eqz v10, :cond_b

    .line 1107
    const-string/jumbo v13, "data8"

    .line 1108
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v14

    .line 1107
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :goto_2
    if-eqz v9, :cond_c

    .line 1113
    const-string/jumbo v13, "data7"

    .line 1114
    invoke-virtual {v11}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v14

    .line 1113
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .end local v11    # "tmpItem":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    :cond_8
    :goto_3
    invoke-static {v12}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 1041
    return-void

    .line 1082
    .end local v5    # "phoneticFullName":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_7

    .line 1084
    const-string/jumbo v13, "data1"

    .line 1085
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/contacts/common/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v14

    .line 1084
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    sget-object v14, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_4
    if-ge v13, v15, :cond_7

    aget-object v4, v14, v13

    .line 1087
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v12, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1086
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1104
    .end local v4    # "field":Ljava/lang/String;
    .restart local v5    # "phoneticFullName":Ljava/lang/String;
    .restart local v11    # "tmpItem":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    :cond_a
    const-string/jumbo v13, "data9"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1110
    :cond_b
    const-string/jumbo v13, "data8"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 1116
    :cond_c
    const-string/jumbo v13, "data7"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1120
    .end local v11    # "tmpItem":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    :cond_d
    if-eqz v8, :cond_e

    .line 1122
    const-string/jumbo v13, "#phoneticName"

    .line 1124
    const-string/jumbo v14, "data9"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1125
    const-string/jumbo v15, "data8"

    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1126
    const-string/jumbo v16, "data7"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1123
    invoke-static/range {v14 .. v16}, Lcom/android/contacts/common/util/NameConverter;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1122
    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_e
    if-nez v7, :cond_f

    .line 1129
    const-string/jumbo v13, "data9"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1131
    :cond_f
    if-nez v10, :cond_10

    .line 1132
    const-string/jumbo v13, "data8"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1134
    :cond_10
    if-nez v9, :cond_8

    .line 1135
    const-string/jumbo v13, "data7"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "typeExtra"    # Ljava/lang/String;
    .param p4, "valueExtra"    # Ljava/lang/String;
    .param p5, "valueColumn"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 908
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 911
    .local v7, "value":Ljava/lang/CharSequence;
    if-nez p1, :cond_0

    return-object v9

    .line 914
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 915
    .local v0, "canInsert":Z
    if-eqz v7, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 916
    .local v6, "validValue":Z
    :goto_0
    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 919
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 920
    .local v4, "hasType":Z
    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 922
    .local v5, "typeValue":I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    .line 925
    .local v3, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 926
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    if-eqz v3, :cond_1

    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 930
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, "customType":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .end local v2    # "customType":Ljava/lang/String;
    :cond_1
    return-object v1

    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v4    # "hasType":Z
    .end local v5    # "typeValue":I
    .end local v6    # "validValue":Z
    :cond_2
    move v6, v8

    .line 915
    goto :goto_0

    .line 916
    .restart local v6    # "validValue":Z
    :cond_3
    return-object v9

    .line 921
    .restart local v4    # "hasType":Z
    :cond_4
    const/high16 v8, -0x80000000

    goto :goto_1
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 526
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 528
    :cond_0
    return-void

    .line 531
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 532
    invoke-static/range {p1 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 536
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 537
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v6, "phone_type"

    const-string/jumbo v7, "phone"

    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 538
    const-string/jumbo v6, "secondary_phone_type"

    const-string/jumbo v7, "secondary_phone"

    .line 539
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 538
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 540
    const-string/jumbo v6, "tertiary_phone_type"

    const-string/jumbo v7, "tertiary_phone"

    .line 541
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 540
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 546
    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 547
    const-string/jumbo v6, "email_type"

    const-string/jumbo v7, "email"

    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 548
    const-string/jumbo v6, "secondary_email_type"

    const-string/jumbo v7, "secondary_email"

    .line 549
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 548
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 550
    const-string/jumbo v6, "tertiary_email_type"

    const-string/jumbo v7, "tertiary_email"

    .line 551
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 550
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 556
    const-string/jumbo v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 557
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 558
    const-string/jumbo v6, "im_protocol"

    const-string/jumbo v7, "im_handle"

    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 562
    const-string/jumbo v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 563
    const-string/jumbo v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 564
    :goto_0
    const-string/jumbo v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 565
    .local v14, "kindOrg":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v12, :cond_3

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 568
    .local v9, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, "company":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    const-string/jumbo v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_2
    const-string/jumbo v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 574
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    const-string/jumbo v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v10    # "company":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 581
    .local v11, "hasNotes":Z
    const-string/jumbo v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 582
    .local v13, "kindNotes":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v11, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 583
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 585
    .restart local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 586
    .local v15, "notes":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 587
    const-string/jumbo v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .end local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v15    # "notes":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 593
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_5

    .line 594
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->parseValues(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V

    .line 525
    :cond_5
    return-void

    .line 562
    .end local v11    # "hasNotes":Z
    .end local v13    # "kindNotes":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v14    # "kindOrg":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    const/4 v12, 0x1

    .local v12, "hasOrg":Z
    goto/16 :goto_0
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 601
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 602
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    .line 604
    .local v8, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 605
    .local v14, "name":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 607
    .local v13, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/16 v16, 0x0

    .line 608
    .local v16, "supportsDisplayName":Z
    iget-object v2, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 609
    iget-object v2, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "field$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 610
    .local v11, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v2, "data1"

    iget-object v4, v11, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    const/16 v16, 0x1

    .line 617
    .end local v11    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v12    # "field$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz v16, :cond_4

    .line 618
    const-string/jumbo v2, "data1"

    invoke-virtual {v8, v2, v14}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v13    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v16    # "supportsDisplayName":Z
    :cond_2
    :goto_0
    const-string/jumbo v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 650
    .local v15, "phoneticName":Ljava/lang/String;
    invoke-static {v15}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    const/4 v2, 0x0

    invoke-static {v15, v2}, Lcom/android/contacts/common/util/NameConverter;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    move-result-object v10

    .line 652
    .local v10, "dataItem":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    const-string/jumbo v2, "data9"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v2, "data8"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string/jumbo v2, "data7"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .end local v10    # "dataItem":Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;
    :cond_3
    return-void

    .line 620
    .end local v15    # "phoneticName":Ljava/lang/String;
    .restart local v13    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .restart local v16    # "supportsDisplayName":Z
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 621
    const-string/jumbo v4, "complete_name"

    .line 620
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 622
    const-string/jumbo v4, "data1"

    .line 620
    invoke-virtual {v2, v4, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 624
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 625
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 626
    const-string/jumbo v5, "data4"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 627
    const-string/jumbo v5, "data2"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 628
    const-string/jumbo v5, "data5"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 629
    const-string/jumbo v5, "data3"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 630
    const-string/jumbo v5, "data6"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 631
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 624
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 633
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 635
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 636
    const-string/jumbo v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string/jumbo v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string/jumbo v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string/jumbo v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string/jumbo v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 642
    :catchall_0
    move-exception v2

    .line 643
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 642
    throw v2
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 661
    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 662
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v3, "postal_type"

    .line 663
    const-string/jumbo v4, "postal"

    const-string/jumbo v5, "data1"

    move-object v0, p1

    move-object v2, p2

    .line 662
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    .line 664
    .local v7, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v7, :cond_3

    .line 666
    .local v6, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 667
    const/4 v10, 0x0

    .line 668
    .local v10, "supportsFormatted":Z
    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 669
    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "field$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 670
    .local v8, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const/4 v10, 0x1

    .line 677
    .end local v8    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v9    # "field$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 678
    const-string/jumbo v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string/jumbo v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 659
    .end local v10    # "supportsFormatted":Z
    :cond_2
    return-void

    .line 665
    .end local v6    # "address":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static parseValues(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V
    .locals 14
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p2, "dataValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "values$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 688
    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "mimetype"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 690
    sget-object v11, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Mimetype is required. Ignoring: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_1
    const-string/jumbo v11, "vnd.android.cursor.item/name"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 697
    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 698
    const-string/jumbo v11, "formattedPhoneNumber"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 699
    const-string/jumbo v11, "data2"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 703
    .local v8, "type":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_2

    .line 704
    const-string/jumbo v11, "data3"

    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 703
    if-eqz v11, :cond_2

    .line 705
    const-string/jumbo v11, "data2"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    .end local v8    # "type":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {p1, v7}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 710
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-nez v6, :cond_3

    .line 711
    sget-object v11, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Mimetype not supported for account type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 712
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v13

    .line 711
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 712
    const-string/jumbo v13, ". Ignoring: "

    .line 711
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 716
    :cond_3
    invoke-static {v9}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 717
    .local v5, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v5, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 721
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 723
    .local v4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    iget v11, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const-string/jumbo v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 725
    :cond_4
    const/4 v0, 0x1

    .line 726
    .local v0, "addEntry":Z
    const/4 v1, 0x0

    .line 727
    .local v1, "count":I
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 728
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "delta$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 729
    .local v2, "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v11

    if-nez v11, :cond_5

    .line 730
    invoke-static {v2, v9, v6}, Lcom/android/contacts/common/model/RawContactModifier;->areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 731
    const/4 v0, 0x0

    .line 739
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_6
    iget v11, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    iget v11, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-lt v1, v11, :cond_7

    .line 740
    sget-object v11, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Mimetype allows at most "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 741
    const-string/jumbo v13, " entries. Ignoring: "

    .line 740
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    .line 745
    :cond_7
    if-eqz v0, :cond_8

    .line 746
    invoke-static {v5, v4, v6}, Lcom/android/contacts/common/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 749
    .end local v0    # "addEntry":Z
    :cond_8
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 734
    .restart local v0    # "addEntry":Z
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 754
    .end local v0    # "addEntry":Z
    .end local v1    # "count":I
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_a
    const/4 v0, 0x1

    .line 755
    .restart local v0    # "addEntry":Z
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_d

    .line 756
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 757
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {v2, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 758
    const/4 v0, 0x0

    .line 762
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_c
    if-eqz v0, :cond_d

    .line 763
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 764
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 769
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_d
    if-eqz v0, :cond_e

    .line 770
    invoke-static {v5, v4, v6}, Lcom/android/contacts/common/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 773
    .end local v0    # "addEntry":Z
    :cond_e
    if-eqz v0, :cond_f

    .line 774
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 775
    :cond_f
    const-string/jumbo v11, "vnd.android.cursor.item/note"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 778
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 779
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v2, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 780
    const-string/jumbo v11, "data1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data1"

    invoke-virtual {v2, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 781
    const-string/jumbo v13, "data1"

    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 780
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_11
    sget-object v11, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Will not override mimetype "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ". Ignoring: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    .end local v4    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v5    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_12
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 14
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 424
    .local v3, "hasValues":Z
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "kind$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 425
    .local v7, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v9, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 426
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 427
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 431
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v10

    .line 432
    .local v10, "touched":Z
    :goto_1
    if-nez v10, :cond_3

    .line 433
    const/4 v3, 0x1

    .line 434
    goto :goto_0

    .line 431
    .end local v10    # "touched":Z
    :cond_2
    const/4 v10, 0x1

    goto :goto_1

    .line 438
    .restart local v10    # "touched":Z
    :cond_3
    const-string/jumbo v11, "com.google"

    .line 439
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    const-string/jumbo v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 438
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 440
    .local v4, "isGoogleAccount":Z
    const-string/jumbo v11, "vnd.android.cursor.item/photo"

    iget-object v12, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 441
    .local v6, "isPhoto":Z
    if-eqz v6, :cond_5

    move v5, v4

    .line 443
    :goto_2
    invoke-static {v1, v7}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v5, :cond_6

    .line 448
    :cond_4
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isFromTemplate()Z

    move-result v11

    if-nez v11, :cond_1

    .line 449
    const/4 v3, 0x1

    goto :goto_0

    .line 441
    :cond_5
    const/4 v5, 0x0

    .local v5, "isGooglePhoto":Z
    goto :goto_2

    .line 447
    .end local v5    # "isGooglePhoto":Z
    :cond_6
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 453
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "isGoogleAccount":Z
    .end local v6    # "isPhoto":Z
    .end local v7    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "touched":Z
    :cond_7
    if-nez v3, :cond_8

    .line 455
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->markDeleted()V

    .line 420
    :cond_8
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 7
    .param p0, "set"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 383
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    .line 384
    .local v2, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 385
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 388
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v2, v4}, Lcom/android/contacts/common/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_0

    .line 382
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method
