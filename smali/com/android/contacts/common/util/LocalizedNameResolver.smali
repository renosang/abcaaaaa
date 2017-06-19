.class public Lcom/android/contacts/common/util/LocalizedNameResolver;
.super Ljava/lang/Object;
.source "LocalizedNameResolver.java"


# static fields
.field private static final CONTACTS_DATA_KIND:Ljava/lang/String; = "ContactsDataKind"

.field private static final TAG:Ljava/lang/String; = "LocalizedNameResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 56
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/util/LocalizedNameResolver;->resolveAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadAllContactsNameFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 91
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x2

    if-eq v12, v14, :cond_1

    .line 92
    const/4 v14, 0x1

    if-ne v12, v14, :cond_0

    .line 96
    :cond_1
    const/4 v14, 0x2

    if-eq v12, v14, :cond_2

    .line 97
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "No start tag found"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 140
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v12    # "type":I
    :catch_0
    move-exception v6

    .line 141
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "Problem reading XML"

    invoke-direct {v14, v15, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 100
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v12    # "type":I
    :cond_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 101
    .local v2, "depth":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x3

    if-ne v12, v14, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v2, :cond_7

    .line 102
    :cond_4
    const/4 v14, 0x1

    if-eq v12, v14, :cond_7

    .line 103
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "name":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v12, v14, :cond_3

    const-string/jumbo v14, "ContactsDataKind"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 106
    sget-object v14, Lcom/android/contacts/common/R$styleable;->ContactsDataKind:[I

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    .line 110
    .local v13, "typedArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x5

    .line 109
    :try_start_2
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 111
    .local v9, "nonResourceString":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 135
    :try_start_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 112
    return-object v9

    .line 118
    :cond_5
    const/4 v14, 0x5

    const/4 v15, 0x0

    .line 117
    :try_start_4
    invoke-virtual {v13, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    .line 119
    .local v7, "id":I
    if-nez v7, :cond_6

    const/4 v14, 0x0

    .line 135
    :try_start_5
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 119
    return-object v14

    .line 122
    :cond_6
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    .line 125
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_7
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 130
    .local v11, "resources":Landroid/content/res/Resources;
    :try_start_8
    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v14

    .line 135
    :try_start_9
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-object v14

    .line 126
    .end local v11    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v3

    .line 127
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x0

    .line 135
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-object v14

    .line 131
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :catch_2
    move-exception v4

    .line 132
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v14, 0x0

    .line 135
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-object v14

    .line 134
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v7    # "id":I
    .end local v9    # "nonResourceString":Ljava/lang/String;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v14

    .line 135
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    throw v14
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 142
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "depth":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "typedArray":Landroid/content/res/TypedArray;
    :catch_3
    move-exception v5

    .line 143
    .local v5, "e":Ljava/io/IOException;
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "Problem reading XML"

    invoke-direct {v14, v15, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "depth":I
    .restart local v12    # "type":I
    :cond_7
    const/4 v14, 0x0

    return-object v14
.end method

.method private static resolveAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 65
    .local v0, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 66
    .local v1, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/contacts/common/util/LocalizedNameResolver;->resolveAllContactsNameFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 65
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static resolveAllContactsNameFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 80
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, v0, p1}, Lcom/android/contacts/common/util/LocalizedNameResolver;->loadAllContactsNameFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :cond_0
    return-object v1
.end method
