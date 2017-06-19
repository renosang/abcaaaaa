.class public abstract Lcom/android/contacts/common/model/account/BaseAccountType;
.super Lcom/android/contacts/common/model/account/AccountType;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/account/BaseAccountType$1;,
        Lcom/android/contacts/common/model/account/BaseAccountType$Attr;,
        Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;,
        Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;,
        Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$Tag;,
        Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;,
        Lcom/android/contacts/common/model/account/BaseAccountType$Weight;
    }
.end annotation


# static fields
.field protected static final FLAGS_EMAIL:I = 0x21

.field protected static final FLAGS_EVENT:I = 0x1

.field protected static final FLAGS_GENERIC_NAME:I = 0x2001

.field protected static final FLAGS_NOTE:I = 0x24001

.field protected static final FLAGS_PERSON_NAME:I = 0x2061

.field protected static final FLAGS_PHONE:I = 0x3

.field protected static final FLAGS_PHONETIC:I = 0xc1

.field protected static final FLAGS_POSTAL:I = 0x22071

.field protected static final FLAGS_RELATION:I = 0x2061

.field protected static final FLAGS_SIP_ADDRESS:I = 0x21

.field protected static final FLAGS_WEBSITE:I = 0x11

.field protected static final MAX_LINES_FOR_GROUP:I = 0xa

.field protected static final MAX_LINES_FOR_NOTE:I = 0x64

.field protected static final MAX_LINES_FOR_POSTAL_ADDRESS:I = 0xa

.field public static final ORGANIZATION_BODY_INFLATER:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

.field private static final TAG:Ljava/lang/String; = "BaseAccountType"


# direct methods
.method static synthetic -wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 663
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType;->ORGANIZATION_BODY_INFLATER:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/AccountType;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->accountType:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->dataSet:Ljava/lang/String;

    .line 121
    const v0, 0x7f0d0130

    iput v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->titleRes:I

    .line 122
    const v0, 0x7f030001

    iput v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType;->iconRes:I

    .line 118
    return-void
.end method

.method protected static buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 130
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I
    .param p1, "yearOptional"    # Z

    .prologue
    .line 142
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->setYearOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected static buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 138
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 126
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method protected static buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAttr(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v9, 0x7f0d0135

    const v8, 0x7f0d0134

    const v5, 0x7f0d0131

    const/16 v7, 0x2061

    const/4 v6, 0x1

    .line 180
    new-instance v2, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v3, "#displayName"

    .line 181
    const/4 v4, -0x1

    .line 180
    invoke-direct {v2, v3, v5, v4, v6}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 182
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v2, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v2, v5}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 183
    new-instance v2, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v3, "data1"

    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 184
    iput v6, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 186
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 187
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data1"

    .line 188
    const v5, 0x7f0d0133

    .line 187
    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 193
    .local v0, "displayOrderPrimary":Z
    if-nez v0, :cond_0

    .line 194
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data4"

    const v5, 0x7f0d0136

    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data3"

    invoke-direct {v3, v4, v9, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data5"

    const v5, 0x7f0d0137

    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data2"

    invoke-direct {v3, v4, v8, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data6"

    const v5, 0x7f0d0138

    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_0
    return-object v1

    .line 205
    :cond_0
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data4"

    const v5, 0x7f0d0136

    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data2"

    invoke-direct {v3, v4, v8, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data5"

    const v5, 0x7f0d0137

    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data3"

    invoke-direct {v3, v4, v9, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v4, "data6"

    const v5, 0x7f0d0138

    invoke-direct {v3, v4, v5, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0d013e

    const/4 v4, 0x1

    .line 296
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    .line 297
    const/16 v3, 0xf

    .line 296
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 298
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 299
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 300
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 302
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 307
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    const-string/jumbo v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 306
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 310
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-object v0
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v7, 0x7f0d00ba

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 453
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    .line 454
    const/16 v3, 0x78

    .line 453
    invoke-direct {v1, v2, v7, v3, v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 455
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 456
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 457
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 458
    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 459
    sget-object v1, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 461
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 462
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v6, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4, v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 467
    const-string/jumbo v3, "data3"

    .line 466
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 470
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 473
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v2, v3, v7, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    return-object v0
.end method

.method protected addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 436
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    .line 437
    const v3, 0x7f0d014b

    const/16 v4, 0x96

    .line 436
    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 439
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v6, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 440
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 441
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    invoke-direct {v2, v3, v5, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 445
    return-object v0
.end method

.method protected addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v6, 0x7f0d0140

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 339
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    .line 340
    const/16 v3, 0x8c

    .line 339
    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 341
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 342
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 347
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 348
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string/jumbo v1, "data5"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 352
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 361
    const-string/jumbo v3, "data6"

    .line 360
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 364
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v2, v3, v6, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-object v0
.end method

.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0d0132

    const/4 v4, 0x1

    .line 241
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    .line 242
    const/16 v3, 0x6f

    .line 241
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 243
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 244
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v5}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 245
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 246
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 247
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 250
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    .line 251
    const/16 v4, 0x2061

    .line 250
    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-object v0
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v5, 0x7f0d0148

    .line 394
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/note"

    .line 395
    const/16 v3, 0x82

    .line 394
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 396
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v4, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 397
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v5}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 398
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 399
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 400
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x24001

    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    const/16 v1, 0x64

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 404
    return-object v0
.end method

.method protected addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v6, 0x7f0d0141

    const/16 v5, 0x2001

    const/4 v4, 0x1

    .line 370
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    .line 371
    const/16 v3, 0x7d

    .line 370
    invoke-direct {v1, v2, v6, v3, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 372
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v6}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 373
    sget-object v1, Lcom/android/contacts/common/model/account/BaseAccountType;->ORGANIZATION_BODY_INFLATER:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 374
    iput v4, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 376
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 377
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f0d0146

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data4"

    const v4, 0x7f0d0147

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
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
    const v7, 0x7f0d013d

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 257
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {v1, v2, v7, v6, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 259
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v1, 0x7f020110

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 260
    const v1, 0x7f0d0144

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 261
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 262
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 263
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 264
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 266
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 274
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    const-string/jumbo v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 273
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v6}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 290
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    invoke-direct {v2, v3, v7, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-object v0
.end method

.method protected addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v4, 0x7f0d0139

    const/16 v6, 0xc1

    const/4 v5, 0x1

    .line 221
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "#phoneticName"

    .line 222
    const/4 v3, -0x1

    .line 221
    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 223
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v2, 0x7f0d0131

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 224
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 225
    iput v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 227
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 228
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "#phoneticName"

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data9"

    .line 231
    const v4, 0x7f0d013c

    .line 230
    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data8"

    .line 233
    const v4, 0x7f0d013b

    .line 232
    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data7"

    .line 235
    const v4, 0x7f0d013a

    .line 234
    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-object v0
.end method

.method protected addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 386
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 387
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput v3, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 388
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 389
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data15"

    invoke-direct {v2, v3, v4, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-object v0
.end method

.method protected addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f0d0149

    .line 422
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/sip_address"

    .line 423
    const/16 v3, 0x91

    .line 422
    invoke-direct {v1, v2, v5, v3, v6}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 425
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v5}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 426
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 427
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 428
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    .line 429
    const/16 v4, 0x21

    .line 428
    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iput v6, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 432
    return-object v0
.end method

.method protected addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v4, 0x7f0d0131

    const/16 v7, 0xc1

    const/16 v6, 0x2061

    const/4 v5, 0x1

    .line 150
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    .line 151
    const/4 v3, -0x1

    .line 150
    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 152
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v4}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 153
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 154
    iput v5, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 156
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 157
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    .line 158
    const v4, 0x7f0d0133

    .line 157
    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data4"

    const v4, 0x7f0d0136

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data3"

    const v4, 0x7f0d0135

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data5"

    const v4, 0x7f0d0137

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data2"

    const v4, 0x7f0d0134

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data6"

    const v4, 0x7f0d0138

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data9"

    .line 170
    const v4, 0x7f0d013c

    .line 169
    invoke-direct {v2, v3, v4, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data8"

    .line 172
    const v4, 0x7f0d013b

    .line 171
    invoke-direct {v2, v3, v4, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data7"

    .line 174
    const v4, 0x7f0d013a

    .line 173
    invoke-direct {v2, v3, v4, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-object v0
.end method

.method protected addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 316
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    .line 317
    const v3, 0x7f0d013f

    const/16 v4, 0x19

    .line 316
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 318
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 319
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 320
    const-string/jumbo v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 322
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v5}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 326
    const-string/jumbo v3, "data3"

    .line 325
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 329
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 330
    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f0d0145

    .line 331
    const v5, 0x22071

    .line 330
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 329
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 335
    return-object v0
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0d014a

    .line 408
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v2, "vnd.android.cursor.item/website"

    .line 409
    const/16 v3, 0xa0

    const/4 v4, 0x1

    .line 408
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 410
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v1, v5}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 411
    new-instance v1, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 412
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 413
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 416
    iget-object v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v5, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    return-object v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method protected final parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 694
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 695
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 696
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 697
    .local v0, "depth":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    add-int/lit8 v6, v3, 0x1

    if-ne v0, v6, :cond_0

    .line 701
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "DataKind"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 704
    sget-object v6, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "kind$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 705
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    goto :goto_1

    .line 708
    .end local v1    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v2    # "kind$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v6, "BaseAccountType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Skipping unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    .end local v0    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method
