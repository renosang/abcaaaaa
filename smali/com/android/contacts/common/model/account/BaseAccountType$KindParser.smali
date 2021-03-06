.class Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindParser"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;


# instance fields
.field private final mBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 728
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->INSTANCE:Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;

    .line 727
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    .line 733
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 734
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$NicknameKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 735
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 736
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$EmailKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 737
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$StructuredPostalKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 738
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 739
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 740
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$PhotoKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 741
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$NoteKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 742
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 743
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$SipAddressKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 744
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$GroupMembershipKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 745
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 746
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    .line 732
    return-void
.end method

.method private addBuilder(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    return-void
.end method


# virtual methods
.method public parseDataKindTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 5
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
    .line 763
    const-string/jumbo v2, "kind"

    invoke-static {p3, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap2(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "kind":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/model/account/BaseAccountType$KindParser;->mBuilders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;

    .line 765
    .local v0, "builder":Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 768
    :cond_0
    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Undefined data kind \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
