.class abstract Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>()V

    return-void
.end method

.method private parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 866
    const-string/jumbo v2, "type"

    invoke-static {p2, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap2(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {p0, p2, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 869
    .local v0, "et":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-nez v0, :cond_0

    .line 870
    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Undefined type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' for data kind \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 870
    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 873
    :cond_0
    const-string/jumbo v2, "maxOccurs"

    const/4 v3, -0x1

    invoke-static {p2, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap1(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 875
    return-object v0
.end method

.method private parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p5, "canHaveTypes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 837
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 838
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 839
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 840
    .local v0, "depth":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    if-ne v0, v4, :cond_0

    .line 844
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v4, "Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 846
    if-eqz p5, :cond_2

    .line 847
    iget-object v4, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    :cond_2
    new-instance v4, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Kind "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " can\'t have types"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 849
    invoke-direct {v4, v5}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 853
    :cond_3
    new-instance v4, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 834
    .end local v0    # "depth":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 884
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method protected final newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "isPseudo"    # Z
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "typeColumn"    # Ljava/lang/String;
    .param p7, "titleRes"    # I
    .param p8, "weight"    # I
    .param p9, "actionHeader"    # Lcom/android/contacts/common/model/account/AccountType$StringInflater;
    .param p10, "actionBody"    # Lcom/android/contacts/common/model/account/AccountType$StringInflater;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    const-string/jumbo v1, "BaseAccountType"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    const-string/jumbo v1, "BaseAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding DataKind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    new-instance v5, Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x1

    invoke-direct {v5, p5, p7, p8, v1}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    .line 797
    .local v5, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput-object p6, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 798
    move-object/from16 v0, p9

    iput-object v0, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 799
    move-object/from16 v0, p10

    iput-object v0, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 800
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 804
    if-nez p4, :cond_2

    .line 805
    const-string/jumbo v1, "maxOccurs"

    const/4 v2, -0x1

    invoke-static {p3, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap1(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v1

    iput v1, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 810
    iget-object v1, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 812
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 813
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;Z)V

    .line 814
    iget-object v1, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 815
    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must have at least one type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;Z)V

    .line 824
    :cond_2
    return-object v5
.end method

.method public abstract parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
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
.end method

.method protected final throwIfList(Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 888
    iget v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 889
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have \'overallMax=\"1\"\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    return-void
.end method
