.class Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static checkAttributeTrue(ZLjava/lang/String;)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 906
    if-nez p0, :cond_0

    .line 907
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    const-string/jumbo v0, "name"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 924
    .local v13, "displayOrderPrimary":Z
    const-string/jumbo v2, "supportsDisplayName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v18

    .line 925
    .local v18, "supportsDisplayName":Z
    const-string/jumbo v2, "supportsPrefix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v23

    .line 926
    .local v23, "supportsPrefix":Z
    const-string/jumbo v2, "supportsMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v19

    .line 927
    .local v19, "supportsMiddleName":Z
    const-string/jumbo v2, "supportsSuffix"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v24

    .line 929
    .local v24, "supportsSuffix":Z
    const-string/jumbo v2, "supportsPhoneticFamilyName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v20

    .line 931
    .local v20, "supportsPhoneticFamilyName":Z
    const-string/jumbo v2, "supportsPhoneticMiddleName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v22

    .line 933
    .local v22, "supportsPhoneticMiddleName":Z
    const-string/jumbo v2, "supportsPhoneticGivenName"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v21

    .line 936
    .local v21, "supportsPhoneticGivenName":Z
    const-string/jumbo v2, "supportsDisplayName"

    move/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 937
    const-string/jumbo v2, "supportsPrefix"

    move/from16 v0, v23

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 938
    const-string/jumbo v2, "supportsMiddleName"

    move/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 939
    const-string/jumbo v2, "supportsSuffix"

    move/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 940
    const-string/jumbo v2, "supportsPhoneticFamilyName"

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 941
    const-string/jumbo v2, "supportsPhoneticMiddleName"

    move/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 942
    const-string/jumbo v2, "supportsPhoneticGivenName"

    move/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 948
    .local v15, "kinds":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataKind;>;"
    const-string/jumbo v7, "vnd.android.cursor.item/name"

    .line 949
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0d0131

    invoke-direct {v11, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    .line 950
    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v12, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 947
    const/4 v6, 0x0

    .line 948
    const/4 v8, 0x0

    const v9, 0x7f0d0131

    const/4 v10, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 947
    invoke-virtual/range {v2 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v17

    .line 952
    .local v17, "ks":Lcom/android/contacts/common/model/dataitem/DataKind;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->throwIfList(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 953
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data1"

    const v5, 0x7f0d0133

    .line 961
    const/16 v6, 0x2061

    .line 960
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data4"

    const v5, 0x7f0d0136

    .line 963
    const/16 v6, 0x2061

    .line 962
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 963
    const/4 v4, 0x1

    .line 962
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data3"

    const v5, 0x7f0d0135

    .line 965
    const/16 v6, 0x2061

    .line 964
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 965
    const/4 v4, 0x1

    .line 964
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data5"

    const v5, 0x7f0d0137

    .line 967
    const/16 v6, 0x2061

    .line 966
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 967
    const/4 v4, 0x1

    .line 966
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data2"

    const v5, 0x7f0d0134

    .line 969
    const/16 v6, 0x2061

    .line 968
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 969
    const/4 v4, 0x1

    .line 968
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data6"

    const v5, 0x7f0d0138

    .line 971
    const/16 v6, 0x2061

    .line 970
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 971
    const/4 v4, 0x1

    .line 970
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data9"

    .line 973
    const v5, 0x7f0d013c

    const/16 v6, 0xc1

    .line 972
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data8"

    .line 975
    const v5, 0x7f0d013b

    const/16 v6, 0xc1

    .line 974
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data7"

    .line 977
    const v5, 0x7f0d013a

    const/16 v6, 0xc1

    .line 976
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const-string/jumbo v7, "#displayName"

    .line 983
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0d0131

    invoke-direct {v11, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    .line 984
    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v12, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 980
    const/4 v6, 0x1

    .line 981
    const/4 v8, 0x0

    .line 982
    const v9, 0x7f0d0131

    const/4 v10, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 980
    invoke-virtual/range {v2 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 985
    .local v14, "kd":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v2, 0x1

    iput v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 986
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data1"

    .line 989
    const v5, 0x7f0d0133

    const/16 v6, 0x2061

    .line 988
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 989
    const/4 v4, 0x1

    .line 988
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    if-nez v13, :cond_0

    .line 992
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data4"

    const v5, 0x7f0d0136

    .line 993
    const/16 v6, 0x2061

    .line 992
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 993
    const/4 v4, 0x1

    .line 992
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data3"

    const v5, 0x7f0d0135

    .line 995
    const/16 v6, 0x2061

    .line 994
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 995
    const/4 v4, 0x1

    .line 994
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data5"

    const v5, 0x7f0d0137

    .line 997
    const/16 v6, 0x2061

    .line 996
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 997
    const/4 v4, 0x1

    .line 996
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data2"

    const v5, 0x7f0d0134

    .line 999
    const/16 v6, 0x2061

    .line 998
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 999
    const/4 v4, 0x1

    .line 998
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data6"

    const v5, 0x7f0d0138

    .line 1001
    const/16 v6, 0x2061

    .line 1000
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1001
    const/4 v4, 0x1

    .line 1000
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :goto_0
    const-string/jumbo v7, "#phoneticName"

    .line 1019
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0d0131

    invoke-direct {v11, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    .line 1020
    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v12, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1016
    const/4 v6, 0x1

    .line 1017
    const/4 v8, 0x0

    .line 1018
    const v9, 0x7f0d0139

    const/4 v10, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1016
    invoke-virtual/range {v2 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v16

    .line 1021
    .local v16, "kp":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 1022
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "#phoneticName"

    .line 1026
    const v5, 0x7f0d0139

    const/16 v6, 0xc1

    .line 1025
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1026
    const/4 v4, 0x1

    .line 1025
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data9"

    .line 1028
    const v5, 0x7f0d013c

    const/16 v6, 0xc1

    .line 1027
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1028
    const/4 v4, 0x1

    .line 1027
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data8"

    .line 1030
    const v5, 0x7f0d013b

    const/16 v6, 0xc1

    .line 1029
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1030
    const/4 v4, 0x1

    .line 1029
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data7"

    .line 1032
    const v5, 0x7f0d013a

    const/16 v6, 0xc1

    .line 1031
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1032
    const/4 v4, 0x1

    .line 1031
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    return-object v15

    .line 1003
    .end local v16    # "kp":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_0
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data4"

    const v5, 0x7f0d0136

    .line 1004
    const/16 v6, 0x2061

    .line 1003
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1004
    const/4 v4, 0x1

    .line 1003
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data2"

    const v5, 0x7f0d0134

    .line 1006
    const/16 v6, 0x2061

    .line 1005
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1006
    const/4 v4, 0x1

    .line 1005
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data5"

    const v5, 0x7f0d0137

    .line 1008
    const/16 v6, 0x2061

    .line 1007
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1008
    const/4 v4, 0x1

    .line 1007
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data3"

    const v5, 0x7f0d0135

    .line 1010
    const/16 v6, 0x2061

    .line 1009
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1010
    const/4 v4, 0x1

    .line 1009
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v2, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data6"

    const v5, 0x7f0d0138

    .line 1012
    const/16 v6, 0x2061

    .line 1011
    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1012
    const/4 v4, 0x1

    .line 1011
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
