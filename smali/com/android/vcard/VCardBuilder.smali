.class public Lcom/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    .line 77
    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    .line 78
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 993
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 994
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "vcardType"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    .line 137
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "vCard"

    const-string/jumbo v2, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 143
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 144
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 145
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 147
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 148
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 149
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 150
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 151
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 158
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 157
    :cond_1
    iput-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    const-string/jumbo v0, "SHIFT_JIS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const-string/jumbo v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 173
    :goto_1
    const-string/jumbo v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 186
    :goto_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardBuilder;->clear()V

    .line 134
    return-void

    :cond_2
    move v0, v1

    .line 142
    goto :goto_0

    .line 168
    :cond_3
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 171
    :cond_4
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 175
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    const-string/jumbo v0, "vCard"

    .line 177
    const-string/jumbo v1, "Use the charset \"UTF-8\" for export."

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2

    .line 182
    :cond_6
    iput-object p2, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v2, :cond_1

    .line 277
    :cond_0
    const-string/jumbo v2, "vCard"

    const-string/jumbo v21, "Invalid flag is used in vCard 4.0 construction. Ignored."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    :cond_2
    const-string/jumbo v2, "FN"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-object p0

    .line 291
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 292
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "familyName":Ljava/lang/String;
    const-string/jumbo v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "middleName":Ljava/lang/String;
    const-string/jumbo v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "givenName":Ljava/lang/String;
    const-string/jumbo v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "suffix":Ljava/lang/String;
    const-string/jumbo v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 298
    .local v16, "formattedName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 298
    if-eqz v2, :cond_5

    .line 300
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 298
    if-eqz v2, :cond_5

    .line 301
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 298
    if-eqz v2, :cond_5

    .line 302
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 298
    if-eqz v2, :cond_5

    .line 303
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    const-string/jumbo v2, "FN"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-object p0

    .line 307
    :cond_4
    move-object/from16 v3, v16

    .line 311
    :cond_5
    const-string/jumbo v2, "data9"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 313
    .local v17, "phoneticFamilyName":Ljava/lang/String;
    const-string/jumbo v2, "data8"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 315
    .local v19, "phoneticMiddleName":Ljava/lang/String;
    const-string/jumbo v2, "data7"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 316
    .local v18, "phoneticGivenName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, "escapedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 318
    .local v12, "escapedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "escapedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 320
    .local v14, "escapedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 322
    .local v15, "escapedSuffix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 325
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 324
    if-eqz v2, :cond_7

    .line 326
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 324
    :goto_0
    if-nez v2, :cond_6

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 329
    const/16 v21, 0x3b

    .line 328
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 329
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 328
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    const/16 v21, 0x3b

    .line 328
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 328
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 331
    .local v20, "sortAs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "SORT-AS="

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 331
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .end local v20    # "sortAs":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 352
    const-string/jumbo v2, "vCard"

    const-string/jumbo v21, "DISPLAY_NAME is empty."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    .line 354
    invoke-static/range {v2 .. v7}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "escaped":Ljava/lang/String;
    const-string/jumbo v2, "FN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v9    # "escaped":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    .line 368
    return-object p0

    .line 324
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 359
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, "escapedFormatted":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 14
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 565
    const-string/jumbo v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, "tmpPhoneticFamilyName":Ljava/lang/String;
    const-string/jumbo v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 569
    .local v11, "tmpPhoneticMiddleName":Ljava/lang/String;
    const-string/jumbo v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 570
    .local v10, "tmpPhoneticGivenName":Ljava/lang/String;
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_1

    .line 571
    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "phoneticFamilyName":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 573
    .local v6, "phoneticMiddleName":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "phoneticGivenName":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 582
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 581
    if-eqz v12, :cond_2

    .line 583
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 581
    if-eqz v12, :cond_2

    .line 584
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 585
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_0
    return-void

    .line 575
    .end local v4    # "phoneticFamilyName":Ljava/lang/String;
    .end local v5    # "phoneticGivenName":Ljava/lang/String;
    .end local v6    # "phoneticMiddleName":Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 576
    .restart local v4    # "phoneticFamilyName":Ljava/lang/String;
    move-object v6, v11

    .line 577
    .restart local v6    # "phoneticMiddleName":Ljava/lang/String;
    move-object v5, v10

    .restart local v5    # "phoneticGivenName":Ljava/lang/String;
    goto :goto_0

    .line 598
    :cond_2
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 690
    :cond_3
    :goto_1
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_c

    .line 691
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 693
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1a

    .line 694
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    const/4 v7, 0x0

    .line 696
    .local v7, "reallyUseQuotedPrintable":Z
    :goto_2
    if-eqz v7, :cond_1b

    .line 697
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "encodedPhoneticGivenName":Ljava/lang/String;
    :goto_3
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 703
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_4
    if-eqz v7, :cond_5

    .line 707
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_5
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 716
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1d

    .line 717
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/4 v7, 0x0

    .line 719
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_4
    if-eqz v7, :cond_1e

    .line 720
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "encodedPhoneticMiddleName":Ljava/lang/String;
    :goto_5
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 726
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_7
    if-eqz v7, :cond_8

    .line 730
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_8
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 739
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_20

    .line 740
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    const/4 v7, 0x0

    .line 742
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_6
    if-eqz v7, :cond_21

    .line 743
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "encodedPhoneticFamilyName":Ljava/lang/String;
    :goto_7
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 749
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_a
    if-eqz v7, :cond_b

    .line 753
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_b
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_c
    return-void

    .line 600
    :cond_d
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 602
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 604
    .local v8, "sortString":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget v12, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 610
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_e
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 616
    .end local v8    # "sortString":Ljava/lang/String;
    :cond_f
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_3

    .line 630
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-boolean v12, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_16

    .line 636
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    .line 637
    const/4 v13, 0x0

    aput-object v4, v12, v13

    .line 636
    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 638
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    .line 639
    const/4 v13, 0x0

    aput-object v6, v12, v13

    .line 638
    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    .line 636
    if-eqz v12, :cond_15

    .line 640
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    .line 641
    const/4 v13, 0x0

    aput-object v5, v12, v13

    .line 640
    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    .line 636
    if-eqz v12, :cond_15

    const/4 v7, 0x0

    .line 646
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_8
    if-eqz v7, :cond_17

    .line 647
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    :goto_9
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    .line 657
    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    .line 656
    invoke-direct {p0, v12}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 658
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_10
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const/4 v3, 0x1

    .line 664
    .local v3, "first":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 665
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const/4 v3, 0x0

    .line 668
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 669
    if-eqz v3, :cond_18

    .line 670
    const/4 v3, 0x0

    .line 674
    :goto_a
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 677
    if-nez v3, :cond_13

    .line 678
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    :cond_13
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_14
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 636
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 635
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 651
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_17
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 653
    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    goto/16 :goto_9

    .line 672
    .restart local v3    # "first":Z
    :cond_18
    iget-object v12, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 694
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 693
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 699
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_1b
    invoke-direct {p0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    goto/16 :goto_3

    .line 717
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_1c
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 716
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 722
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_1e
    invoke-direct {p0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    goto/16 :goto_5

    .line 740
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_1f
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 739
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 745
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_21
    invoke-direct {p0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    goto/16 :goto_7
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 1005
    const v8, 0x7fffffff

    .line 1006
    .local v8, "currentPriority":I
    const v1, 0x7fffffff

    .line 1007
    .local v1, "currentType":I
    const/4 v3, 0x0

    .line 1008
    .local v3, "currentContentValues":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v3    # "currentContentValues":Landroid/content/ContentValues;
    .local v7, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1009
    .local v6, "contentValues":Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    .line 1012
    const-string/jumbo v0, "data2"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1013
    .local v11, "typeAsInteger":Ljava/lang/Integer;
    sget-object v0, Lcom/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1015
    .local v10, "priorityAsInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1016
    .local v9, "priority":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 1017
    move v8, v9

    .line 1018
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1019
    move-object v3, v6

    .line 1020
    .local v3, "currentContentValues":Landroid/content/ContentValues;
    if-nez v9, :cond_0

    .line 1026
    .end local v3    # "currentContentValues":Landroid/content/ContentValues;
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "priority":I
    .end local v10    # "priorityAsInteger":Ljava/lang/Integer;
    .end local v11    # "typeAsInteger":Ljava/lang/Integer;
    :cond_1
    if-nez v3, :cond_3

    .line 1027
    const-string/jumbo v0, "vCard"

    const-string/jumbo v4, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void

    .line 1015
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    .restart local v10    # "priorityAsInteger":Ljava/lang/Integer;
    .restart local v11    # "typeAsInteger":Ljava/lang/Integer;
    :cond_2
    const v9, 0x7fffffff

    goto :goto_0

    .line 1031
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v10    # "priorityAsInteger":Ljava/lang/Integer;
    .end local v11    # "typeAsInteger":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, "label":Ljava/lang/String;
    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    .line 1004
    return-void
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 1036
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1037
    .local v3, "contentValues":Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1040
    const-string/jumbo v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1041
    .local v8, "typeAsInteger":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    .line 1042
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1043
    .local v1, "type":I
    :goto_1
    const-string/jumbo v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "label":Ljava/lang/String;
    const-string/jumbo v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1046
    .local v7, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v7, :cond_2

    .line 1047
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v4, 0x1

    .local v4, "isPrimary":Z
    :goto_2
    move-object v0, p0

    .line 1048
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .line 1042
    .end local v1    # "type":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "isPrimary":Z
    .end local v7    # "isPrimaryAsInteger":Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_1

    .restart local v2    # "label":Ljava/lang/String;
    .restart local v7    # "isPrimaryAsInteger":Ljava/lang/Integer;
    :cond_2
    move v4, v5

    .line 1047
    goto :goto_2

    .line 1035
    .end local v1    # "type":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v8    # "typeAsInteger":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2047
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2056
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2057
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_2

    .line 2060
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    return-void

    .line 2058
    :cond_2
    const-string/jumbo v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2014
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2015
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "typeValue$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2016
    .local v2, "typeValue":Ljava/lang/String;
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2017
    :cond_1
    iget v4, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2018
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, "encoded":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2024
    if-eqz v1, :cond_3

    .line 2025
    const/4 v1, 0x0

    .line 2029
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2019
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2027
    .restart local v0    # "encoded":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2031
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2034
    if-eqz v1, :cond_5

    .line 2035
    const/4 v1, 0x0

    .line 2039
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2037
    :cond_5
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2011
    .end local v2    # "typeValue":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/Integer;

    .prologue
    .line 1722
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1725
    const-string/jumbo v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    :goto_0
    return-void

    .line 1727
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "phoneType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1729
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1731
    :cond_1
    const-string/jumbo v1, "vCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v4, :cond_3

    .line 534
    new-array v4, v3, [Ljava/lang/String;

    aput-object p2, v4, v2

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 535
    .local v1, "reallyUseQuotedPrintable":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 536
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "encodedPart":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_0
    if-eqz v1, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    return-void

    .end local v0    # "encodedPart":Ljava/lang/String;
    .end local v1    # "reallyUseQuotedPrintable":Z
    :cond_2
    move v1, v3

    .line 534
    goto :goto_0

    :cond_3
    move v1, v2

    .line 533
    goto :goto_0

    .line 537
    .restart local v1    # "reallyUseQuotedPrintable":Z
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedPart":Ljava/lang/String;
    goto :goto_1
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 206
    const-string/jumbo v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "familyName":Ljava/lang/String;
    const-string/jumbo v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "middleName":Ljava/lang/String;
    const-string/jumbo v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "givenName":Ljava/lang/String;
    const-string/jumbo v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "prefix":Ljava/lang/String;
    const-string/jumbo v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "suffix":Ljava/lang/String;
    const-string/jumbo v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "phoneticFamilyName":Ljava/lang/String;
    const-string/jumbo v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "phoneticMiddleName":Ljava/lang/String;
    const-string/jumbo v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "phoneticGivenName":Ljava/lang/String;
    const-string/jumbo v9, "data1"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 219
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    .line 219
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    .line 220
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    .line 220
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    .line 221
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    .line 221
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 218
    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x1

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2089
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2090
    const-string/jumbo v5, ""

    return-object v5

    .line 2093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2094
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2095
    .local v2, "index":I
    const/4 v3, 0x0

    .line 2096
    .local v3, "lineCount":I
    const/4 v4, 0x0

    .line 2099
    .local v4, "strArray":[B
    :try_start_0
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2105
    .local v4, "strArray":[B
    :cond_1
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 2106
    const-string/jumbo v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v4, v2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    add-int/lit8 v2, v2, 0x1

    .line 2108
    add-int/lit8 v3, v3, 0x3

    .line 2110
    const/16 v5, 0x43

    if-lt v3, v5, :cond_1

    .line 2118
    const-string/jumbo v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    const/4 v3, 0x0

    goto :goto_0

    .line 2100
    .local v4, "strArray":[B
    :catch_0
    move-exception v1

    .line 2101
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2102
    const-string/jumbo v7, "Try default charset"

    .line 2101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, "strArray":[B
    goto :goto_0

    .line 2123
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "unescaped"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 2134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2135
    const-string/jumbo v5, ""

    return-object v5

    .line 2138
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2139
    .local v4, "tmpBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2140
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2141
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2142
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 2193
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2140
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2144
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2145
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2149
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 2150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2151
    .local v3, "nextChar":C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 2163
    .end local v3    # "nextChar":C
    :cond_2
    :sswitch_2
    const-string/jumbo v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2167
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_3

    .line 2168
    const-string/jumbo v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2176
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 2177
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2180
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2185
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_5

    .line 2186
    const-string/jumbo v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2188
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2198
    .end local v0    # "ch":C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2142
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 228
    .local v4, "primaryContentValues":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 229
    .local v5, "subprimaryContentValues":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "primaryContentValues":Landroid/content/ContentValues;
    .end local v5    # "subprimaryContentValues":Landroid/content/ContentValues;
    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 230
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 233
    const-string/jumbo v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 234
    .local v3, "isSuperPrimary":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 236
    move-object v4, v0

    .line 254
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_1
    if-nez v4, :cond_2

    .line 255
    if-eqz v5, :cond_5

    .line 257
    move-object v4, v5

    .line 264
    :cond_2
    :goto_1
    return-object v4

    .line 238
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_0

    .line 241
    const-string/jumbo v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 242
    .local v2, "isPrimary":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    .line 243
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    .line 242
    if-eqz v6, :cond_4

    .line 244
    move-object v4, v0

    .local v4, "primaryContentValues":Landroid/content/ContentValues;
    goto :goto_0

    .line 247
    .end local v4    # "primaryContentValues":Landroid/content/ContentValues;
    :cond_4
    if-nez v5, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    .line 247
    if-eqz v6, :cond_0

    .line 249
    move-object v5, v0

    .local v5, "subprimaryContentValues":Landroid/content/ContentValues;
    goto :goto_0

    .line 260
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "isPrimary":Ljava/lang/Integer;
    .end local v3    # "isSuperPrimary":Ljava/lang/Integer;
    .end local v5    # "subprimaryContentValues":Landroid/content/ContentValues;
    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "primaryContentValues":Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 6
    .param p1, "propertyValueList"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2077
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v1, :cond_0

    .line 2078
    return v2

    .line 2080
    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    .line 2081
    .local v0, "propertyValue":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2082
    return v5

    .line 2080
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2085
    .end local v0    # "propertyValue":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v4, "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 921
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 922
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 923
    .local v1, "ch":C
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 930
    .end local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_2
    return-object v4
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;
    .locals 26
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1071
    const-string/jumbo v24, "data5"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1072
    .local v19, "rawPoBox":Ljava/lang/String;
    const-string/jumbo v24, "data6"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1073
    .local v18, "rawNeighborhood":Ljava/lang/String;
    const-string/jumbo v24, "data4"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1074
    .local v22, "rawStreet":Ljava/lang/String;
    const-string/jumbo v24, "data7"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1075
    .local v16, "rawLocality":Ljava/lang/String;
    const-string/jumbo v24, "data8"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1076
    .local v21, "rawRegion":Ljava/lang/String;
    const-string/jumbo v24, "data9"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1077
    .local v20, "rawPostalCode":Ljava/lang/String;
    const-string/jumbo v24, "data10"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1078
    .local v14, "rawCountry":Ljava/lang/String;
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v13, v0, [Ljava/lang/String;

    .line 1079
    const/16 v24, 0x0

    aput-object v19, v13, v24

    const/16 v24, 0x1

    aput-object v18, v13, v24

    const/16 v24, 0x2

    aput-object v22, v13, v24

    const/16 v24, 0x3

    aput-object v16, v13, v24

    .line 1080
    const/16 v24, 0x4

    aput-object v21, v13, v24

    const/16 v24, 0x5

    aput-object v20, v13, v24

    const/16 v24, 0x6

    aput-object v14, v13, v24

    .line 1081
    .local v13, "rawAddressArray":[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 1083
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 1084
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v23, 0x0

    .line 1086
    .local v23, "reallyUseQuotedPrintable":Z
    :goto_0
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/4 v4, 0x0

    .line 1105
    .local v4, "appendCharset":Z
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1106
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1107
    const-string/jumbo v17, ""

    .line 1118
    .local v17, "rawLocality2":Ljava/lang/String;
    :goto_2
    if-eqz v23, :cond_6

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1120
    .local v9, "encodedPoBox":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1121
    .local v12, "encodedStreet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1122
    .local v7, "encodedLocality":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1123
    .local v11, "encodedRegion":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1124
    .local v10, "encodedPostalCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1134
    .local v5, "encodedCountry":Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    .local v3, "addressBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    new-instance v24, Lcom/android/vcard/VCardBuilder$PostalStruct;

    .line 1148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1147
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v4, v2}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    return-object v24

    .line 1084
    .end local v3    # "addressBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "appendCharset":Z
    .end local v5    # "encodedCountry":Ljava/lang/String;
    .end local v7    # "encodedLocality":Ljava/lang/String;
    .end local v9    # "encodedPoBox":Ljava/lang/String;
    .end local v10    # "encodedPostalCode":Ljava/lang/String;
    .end local v11    # "encodedRegion":Ljava/lang/String;
    .end local v12    # "encodedStreet":Ljava/lang/String;
    .end local v17    # "rawLocality2":Ljava/lang/String;
    .end local v23    # "reallyUseQuotedPrintable":Z
    :cond_0
    const/16 v23, 0x1

    .restart local v23    # "reallyUseQuotedPrintable":Z
    goto/16 :goto_0

    .line 1083
    .end local v23    # "reallyUseQuotedPrintable":Z
    :cond_1
    const/16 v23, 0x0

    .restart local v23    # "reallyUseQuotedPrintable":Z
    goto/16 :goto_0

    .line 1086
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "appendCharset":Z
    goto/16 :goto_1

    .line 1109
    :cond_3
    move-object/from16 v17, v18

    .restart local v17    # "rawLocality2":Ljava/lang/String;
    goto/16 :goto_2

    .line 1112
    .end local v17    # "rawLocality2":Ljava/lang/String;
    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1113
    move-object/from16 v17, v16

    .restart local v17    # "rawLocality2":Ljava/lang/String;
    goto/16 :goto_2

    .line 1115
    .end local v17    # "rawLocality2":Ljava/lang/String;
    :cond_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "rawLocality2":Ljava/lang/String;
    goto/16 :goto_2

    .line 1126
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1127
    .restart local v9    # "encodedPoBox":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1128
    .restart local v12    # "encodedStreet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1129
    .restart local v7    # "encodedLocality":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1130
    .restart local v11    # "encodedRegion":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1131
    .restart local v10    # "encodedPostalCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1132
    .restart local v5    # "encodedCountry":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "encodedNeighborhood":Ljava/lang/String;
    goto/16 :goto_3

    .line 1152
    .end local v4    # "appendCharset":Z
    .end local v5    # "encodedCountry":Ljava/lang/String;
    .end local v7    # "encodedLocality":Ljava/lang/String;
    .end local v8    # "encodedNeighborhood":Ljava/lang/String;
    .end local v9    # "encodedPoBox":Ljava/lang/String;
    .end local v10    # "encodedPostalCode":Ljava/lang/String;
    .end local v11    # "encodedRegion":Ljava/lang/String;
    .end local v12    # "encodedStreet":Ljava/lang/String;
    .end local v17    # "rawLocality2":Ljava/lang/String;
    .end local v23    # "reallyUseQuotedPrintable":Z
    :cond_7
    const-string/jumbo v24, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1153
    .local v15, "rawFormattedAddress":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1154
    const/16 v24, 0x0

    return-object v24

    .line 1157
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 1158
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v23, 0x0

    .line 1160
    .restart local v23    # "reallyUseQuotedPrintable":Z
    :goto_4
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/4 v4, 0x0

    .line 1162
    .restart local v4    # "appendCharset":Z
    :goto_5
    if-eqz v23, :cond_c

    .line 1163
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1171
    .local v6, "encodedFormattedAddress":Ljava/lang/String;
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .restart local v3    # "addressBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string/jumbo v24, ";"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    new-instance v24, Lcom/android/vcard/VCardBuilder$PostalStruct;

    .line 1180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1179
    move-object/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v4, v2}, Lcom/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    return-object v24

    .line 1158
    .end local v3    # "addressBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "appendCharset":Z
    .end local v6    # "encodedFormattedAddress":Ljava/lang/String;
    .end local v23    # "reallyUseQuotedPrintable":Z
    :cond_9
    const/16 v23, 0x1

    .restart local v23    # "reallyUseQuotedPrintable":Z
    goto :goto_4

    .line 1157
    .end local v23    # "reallyUseQuotedPrintable":Z
    :cond_a
    const/16 v23, 0x0

    .restart local v23    # "reallyUseQuotedPrintable":Z
    goto :goto_4

    .line 1160
    :cond_b
    const/4 v4, 0x1

    .restart local v4    # "appendCharset":Z
    goto :goto_5

    .line 1165
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "encodedFormattedAddress":Ljava/lang/String;
    goto :goto_6
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1832
    sget-object v8, Lcom/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1833
    return-void

    .line 1835
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    .local v5, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v8, 0xf

    if-gt v1, v8, :cond_2

    .line 1837
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1838
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1839
    const-string/jumbo v7, ""

    .line 1841
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1845
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v8, :cond_6

    .line 1846
    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x0

    .line 1848
    .local v2, "needCharset":Z
    :goto_1
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_8

    .line 1849
    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v6, 0x0

    .line 1850
    .local v6, "reallyUseQuotedPrintable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "X-ANDROID-CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    if-eqz v2, :cond_3

    .line 1852
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_3
    if-eqz v6, :cond_4

    .line 1856
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    :cond_4
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rawValue$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1863
    .local v3, "rawValue":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 1864
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, "encodedValue":Ljava/lang/String;
    :goto_4
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1846
    .end local v0    # "encodedValue":Ljava/lang/String;
    .end local v2    # "needCharset":Z
    .end local v3    # "rawValue":Ljava/lang/String;
    .end local v4    # "rawValue$iterator":Ljava/util/Iterator;
    .end local v6    # "reallyUseQuotedPrintable":Z
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "needCharset":Z
    goto :goto_1

    .line 1845
    .end local v2    # "needCharset":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "needCharset":Z
    goto :goto_1

    .line 1849
    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "reallyUseQuotedPrintable":Z
    goto :goto_2

    .line 1848
    .end local v6    # "reallyUseQuotedPrintable":Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "reallyUseQuotedPrintable":Z
    goto :goto_2

    .line 1870
    .restart local v3    # "rawValue":Ljava/lang/String;
    .restart local v4    # "rawValue$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedValue":Ljava/lang/String;
    goto :goto_4

    .line 1875
    .end local v0    # "encodedValue":Ljava/lang/String;
    .end local v3    # "rawValue":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    return-void
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 1531
    packed-switch p1, :pswitch_data_0

    .line 1560
    const-string/jumbo v2, "vCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v1, 0x0

    .line 1566
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    .local v0, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1568
    const-string/jumbo v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1571
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    :cond_1
    const-string/jumbo v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1529
    return-void

    .line 1533
    .end local v0    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1534
    const-string/jumbo v1, "CELL"

    .local v1, "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1535
    .end local v1    # "typeAsString":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1536
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    .line 1535
    if-eqz v2, :cond_3

    .line 1537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1539
    .end local v1    # "typeAsString":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .local v1, "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1544
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "HOME"

    .local v1, "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1548
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "WORK"

    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1552
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 1553
    .local v1, "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1556
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v1, "CELL"

    .local v1, "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 937
    const/4 v4, 0x0

    .line 938
    .local v4, "emailAddressExists":Z
    if-eqz p1, :cond_4

    .line 939
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 940
    .local v0, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 941
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v10, "data1"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "emailAddress":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 943
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 945
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 948
    const-string/jumbo v10, "data2"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 949
    .local v9, "typeAsObject":Ljava/lang/Integer;
    if-eqz v9, :cond_2

    .line 950
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 951
    .local v8, "type":I
    :goto_1
    const-string/jumbo v10, "data3"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 952
    .local v7, "label":Ljava/lang/String;
    const-string/jumbo v10, "is_primary"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 953
    .local v6, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    .line 954
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v5, 0x1

    .line 955
    .local v5, "isPrimary":Z
    :goto_2
    const/4 v4, 0x1

    .line 956
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 957
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    invoke-virtual {p0, v8, v7, v3, v5}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 950
    .end local v5    # "isPrimary":Z
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_2
    const/4 v8, 0x3

    .restart local v8    # "type":I
    goto :goto_1

    .line 954
    .restart local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .restart local v7    # "label":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "isPrimary":Z
    goto :goto_2

    .line 963
    .end local v0    # "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v3    # "emailAddress":Ljava/lang/String;
    .end local v5    # "isPrimary":Z
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "typeAsObject":Ljava/lang/Integer;
    :cond_4
    if-nez v4, :cond_5

    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v10, :cond_5

    .line 964
    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x1

    invoke-virtual {p0, v12, v10, v11, v13}, Lcom/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 967
    :cond_5
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1380
    if-eqz p1, :cond_2

    .line 1381
    const/4 v9, 0x0

    .line 1382
    .local v9, "primaryBirthday":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1383
    .local v10, "secondaryBirthday":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v9    # "primaryBirthday":Ljava/lang/String;
    .end local v10    # "secondaryBirthday":Ljava/lang/String;
    .local v2, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1384
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1387
    const-string/jumbo v13, "data2"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1389
    .local v4, "eventTypeAsInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    .line 1390
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1394
    .local v3, "eventType":I
    :goto_1
    const/4 v13, 0x3

    if-ne v3, v13, :cond_8

    .line 1395
    const-string/jumbo v13, "data1"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, "birthdayCandidate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1400
    const-string/jumbo v13, "is_super_primary"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1401
    .local v8, "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v8, :cond_4

    .line 1402
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_4

    move v7, v11

    .line 1403
    .local v7, "isSuperPrimary":Z
    :goto_2
    if-eqz v7, :cond_5

    .line 1405
    move-object v9, v0

    .line 1424
    .end local v0    # "birthdayCandidate":Ljava/lang/String;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "eventType":I
    .end local v4    # "eventTypeAsInteger":Ljava/lang/Integer;
    .end local v7    # "isSuperPrimary":Z
    .end local v8    # "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    :cond_1
    if-eqz v9, :cond_9

    .line 1425
    const-string/jumbo v11, "BDAY"

    .line 1426
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1425
    invoke-virtual {p0, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    .end local v2    # "contentValues$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_3
    return-object p0

    .line 1392
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    .restart local v2    # "contentValues$iterator":Ljava/util/Iterator;
    .restart local v4    # "eventTypeAsInteger":Ljava/lang/Integer;
    :cond_3
    const/4 v3, 0x2

    .restart local v3    # "eventType":I
    goto :goto_1

    .restart local v0    # "birthdayCandidate":Ljava/lang/String;
    .restart local v8    # "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    :cond_4
    move v7, v12

    .line 1402
    goto :goto_2

    .line 1409
    .restart local v7    # "isSuperPrimary":Z
    :cond_5
    const-string/jumbo v13, "is_primary"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1410
    .local v6, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_6

    .line 1411
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_6

    move v5, v11

    .line 1412
    .local v5, "isPrimary":Z
    :goto_4
    if-eqz v5, :cond_7

    .line 1414
    move-object v9, v0

    .local v9, "primaryBirthday":Ljava/lang/String;
    goto :goto_0

    .end local v5    # "isPrimary":Z
    .end local v9    # "primaryBirthday":Ljava/lang/String;
    :cond_6
    move v5, v12

    .line 1411
    goto :goto_4

    .line 1415
    .restart local v5    # "isPrimary":Z
    :cond_7
    if-nez v10, :cond_0

    .line 1417
    move-object v10, v0

    .local v10, "secondaryBirthday":Ljava/lang/String;
    goto :goto_0

    .line 1419
    .end local v0    # "birthdayCandidate":Ljava/lang/String;
    .end local v5    # "isPrimary":Z
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "isSuperPrimary":Z
    .end local v8    # "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    .end local v10    # "secondaryBirthday":Ljava/lang/String;
    :cond_8
    iget-boolean v13, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v13, :cond_0

    .line 1421
    const-string/jumbo v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v13, v1}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1427
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "eventType":I
    .end local v4    # "eventTypeAsInteger":Ljava/lang/Integer;
    :cond_9
    if-eqz v10, :cond_2

    .line 1428
    const-string/jumbo v11, "BDAY"

    .line 1429
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1428
    invoke-virtual {p0, v11, v12}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x0

    .line 1185
    if-eqz p1, :cond_7

    .line 1186
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1187
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v12, "data5"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1188
    .local v8, "protocolAsObject":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1191
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v7

    .line 1192
    .local v7, "propertyName":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1195
    const-string/jumbo v12, "data1"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1197
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1199
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1204
    const-string/jumbo v12, "data2"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1205
    .local v9, "typeAsInteger":Ljava/lang/Integer;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 1221
    const/4 v10, 0x0

    .line 1227
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v6, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1229
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    :cond_2
    const-string/jumbo v12, "is_primary"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1232
    .local v4, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_6

    .line 1233
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_6

    const/4 v3, 0x1

    .line 1234
    .local v3, "isPrimary":Z
    :goto_3
    if-eqz v3, :cond_3

    .line 1235
    const-string/jumbo v12, "PREF"

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_3
    invoke-virtual {p0, v7, v6, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    .end local v3    # "isPrimary":Z
    .end local v4    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v6    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v12, 0x3

    goto :goto_1

    .line 1207
    :pswitch_0
    const-string/jumbo v10, "HOME"

    .local v10, "typeAsString":Ljava/lang/String;
    goto :goto_2

    .line 1211
    .end local v10    # "typeAsString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v10, "WORK"

    .restart local v10    # "typeAsString":Ljava/lang/String;
    goto :goto_2

    .line 1215
    .end local v10    # "typeAsString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v12, "data3"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1216
    .local v5, "label":Ljava/lang/String;
    if-eqz v5, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "X-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "typeAsString":Ljava/lang/String;
    goto :goto_2

    .end local v10    # "typeAsString":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    .local v10, "typeAsString":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "label":Ljava/lang/String;
    .end local v10    # "typeAsString":Ljava/lang/String;
    .restart local v4    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .restart local v6    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move v3, v11

    .line 1233
    goto :goto_3

    .line 1241
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v6    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v8    # "protocolAsObject":Ljava/lang/Integer;
    .end local v9    # "typeAsInteger":Ljava/lang/Integer;
    :cond_7
    return-object p0

    .line 1205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1915
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1914
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;
    .param p3, "needCharset"    # Z
    .param p4, "reallyUseQuotedPrintable"    # Z

    .prologue
    .line 1925
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1924
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .param p4, "needCharset"    # Z
    .param p5, "reallyUseQuotedPrintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1936
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1938
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1941
    :cond_0
    if-eqz p4, :cond_1

    .line 1942
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    :cond_1
    if-eqz p5, :cond_2

    .line 1948
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1957
    .local v0, "encodedValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1958
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    iget-object v1, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    return-void

    .line 1954
    .end local v0    # "encodedValue":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 1880
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1879
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1891
    new-array v1, v0, [Ljava/lang/String;

    aput-object p3, v1, v5

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    .line 1893
    .local v4, "needCharset":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v1, :cond_0

    .line 1894
    new-array v1, v0, [Ljava/lang/String;

    aput-object p3, v1, v5

    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .local v5, "reallyUseQuotedPrintable":Z
    :cond_0
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1895
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1889
    return-void

    .line 1891
    .end local v4    # "needCharset":Z
    .end local v5    # "reallyUseQuotedPrintable":Z
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "needCharset":Z
    goto :goto_0

    :cond_2
    move v5, v0

    .line 1894
    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;Z)Lcom/android/vcard/VCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNameProperties(Ljava/util/List;Z)Lcom/android/vcard/VCardBuilder;
    .locals 22
    .param p2, "splitName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;Z)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    return-object v2

    .line 384
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    const-string/jumbo v2, "N"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string/jumbo v2, "FN"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_2
    :goto_0
    return-object p0

    .line 391
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_2

    .line 392
    const-string/jumbo v2, "N"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 399
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "familyName":Ljava/lang/String;
    const-string/jumbo v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "middleName":Ljava/lang/String;
    const-string/jumbo v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "givenName":Ljava/lang/String;
    const-string/jumbo v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "prefix":Ljava/lang/String;
    const-string/jumbo v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "suffix":Ljava/lang/String;
    const-string/jumbo v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, "displayName":Ljava/lang/String;
    if-eqz p2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 506
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 509
    const-string/jumbo v2, "N"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string/jumbo v2, "FN"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    .line 528
    return-object p0

    .line 408
    :cond_7
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v2, v21

    const/16 v21, 0x1

    aput-object v5, v2, v21

    const/16 v21, 0x2

    aput-object v4, v2, v21

    const/16 v21, 0x3

    aput-object v6, v2, v21

    const/16 v21, 0x4

    aput-object v7, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v18

    .line 410
    .local v18, "reallyAppendCharsetParameterToName":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_d

    .line 411
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v3, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 412
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v5, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    .line 411
    if-eqz v2, :cond_c

    .line 413
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v4, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    .line 411
    if-eqz v2, :cond_c

    .line 414
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v6, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    .line 411
    if-eqz v2, :cond_c

    .line 415
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v7, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    .line 411
    if-eqz v2, :cond_c

    const/16 v20, 0x0

    .line 418
    .local v20, "reallyUseQuotedPrintableToName":Z
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 419
    move-object/from16 v16, v9

    .line 426
    .local v16, "formattedName":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v16, v2, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v17

    .line 428
    .local v17, "reallyAppendCharsetParameterToFN":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_10

    .line 429
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v16, v2, v21

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v19, 0x0

    .line 436
    .local v19, "reallyUseQuotedPrintableToFN":Z
    :goto_4
    if-eqz v20, :cond_11

    .line 437
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 438
    .local v10, "encodedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 439
    .local v12, "encodedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 440
    .local v13, "encodedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 441
    .local v14, "encodedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 451
    .local v15, "encodedSuffix":Ljava/lang/String;
    :goto_5
    if-eqz v19, :cond_12

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 454
    .local v11, "encodedFormattedname":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_13

    .line 456
    if-eqz v18, :cond_8

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_8
    if-eqz v20, :cond_9

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    if-eqz v17, :cond_a

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_a
    if-eqz v19, :cond_b

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 411
    .end local v10    # "encodedFamily":Ljava/lang/String;
    .end local v11    # "encodedFormattedname":Ljava/lang/String;
    .end local v12    # "encodedGiven":Ljava/lang/String;
    .end local v13    # "encodedMiddle":Ljava/lang/String;
    .end local v14    # "encodedPrefix":Ljava/lang/String;
    .end local v15    # "encodedSuffix":Ljava/lang/String;
    .end local v16    # "formattedName":Ljava/lang/String;
    .end local v17    # "reallyAppendCharsetParameterToFN":Z
    .end local v19    # "reallyUseQuotedPrintableToFN":Z
    .end local v20    # "reallyUseQuotedPrintableToName":Z
    :cond_c
    const/16 v20, 0x1

    .restart local v20    # "reallyUseQuotedPrintableToName":Z
    goto/16 :goto_2

    .line 410
    .end local v20    # "reallyUseQuotedPrintableToName":Z
    :cond_d
    const/16 v20, 0x0

    .restart local v20    # "reallyUseQuotedPrintableToName":Z
    goto/16 :goto_2

    .line 422
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    .line 421
    invoke-static/range {v2 .. v7}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "formattedName":Ljava/lang/String;
    goto/16 :goto_3

    .line 429
    .restart local v17    # "reallyAppendCharsetParameterToFN":Z
    :cond_f
    const/16 v19, 0x1

    .restart local v19    # "reallyUseQuotedPrintableToFN":Z
    goto/16 :goto_4

    .line 428
    .end local v19    # "reallyUseQuotedPrintableToFN":Z
    :cond_10
    const/16 v19, 0x0

    .restart local v19    # "reallyUseQuotedPrintableToFN":Z
    goto/16 :goto_4

    .line 443
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 444
    .restart local v10    # "encodedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 445
    .restart local v12    # "encodedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 446
    .restart local v13    # "encodedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 447
    .restart local v14    # "encodedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "encodedSuffix":Ljava/lang/String;
    goto/16 :goto_5

    .line 452
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "encodedFormattedname":Ljava/lang/String;
    goto/16 :goto_6

    .line 472
    :cond_13
    if-eqz v18, :cond_14

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :cond_14
    if-eqz v20, :cond_15

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 520
    .end local v10    # "encodedFamily":Ljava/lang/String;
    .end local v11    # "encodedFormattedname":Ljava/lang/String;
    .end local v12    # "encodedGiven":Ljava/lang/String;
    .end local v13    # "encodedMiddle":Ljava/lang/String;
    .end local v14    # "encodedPrefix":Ljava/lang/String;
    .end local v15    # "encodedSuffix":Ljava/lang/String;
    .end local v16    # "formattedName":Ljava/lang/String;
    .end local v17    # "reallyAppendCharsetParameterToFN":Z
    .end local v18    # "reallyAppendCharsetParameterToName":Z
    .end local v19    # "reallyUseQuotedPrintableToFN":Z
    .end local v20    # "reallyUseQuotedPrintableToName":Z
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 521
    const-string/jumbo v2, "N"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v2, "FN"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 523
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_6

    .line 524
    const-string/jumbo v2, "N"

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_1

    .line 766
    const/4 v3, 0x0

    .line 773
    .local v3, "useAndroidProperty":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 774
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 775
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "nickname":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 779
    if-eqz v3, :cond_3

    .line 780
    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v4, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 767
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "nickname":Ljava/lang/String;
    .end local v3    # "useAndroidProperty":Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v4, :cond_2

    .line 768
    const/4 v3, 0x1

    .restart local v3    # "useAndroidProperty":Z
    goto :goto_0

    .line 771
    .end local v3    # "useAndroidProperty":Z
    :cond_2
    return-object p0

    .line 782
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .restart local v2    # "nickname":Ljava/lang/String;
    .restart local v3    # "useAndroidProperty":Z
    :cond_3
    const-string/jumbo v4, "NICKNAME"

    invoke-virtual {p0, v4, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 786
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "nickname":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1331
    if-eqz p1, :cond_4

    .line 1332
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v8, :cond_8

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1334
    .local v4, "noteBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1335
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1336
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "data1"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1337
    .local v3, "note":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1338
    const-string/jumbo v3, ""

    .line 1340
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1341
    if-eqz v2, :cond_2

    .line 1342
    const/4 v2, 0x0

    .line 1346
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1344
    :cond_2
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1349
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "note":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1353
    .local v5, "noteStr":Ljava/lang/String;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    .line 1355
    .local v7, "shouldAppendCharsetInfo":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_7

    .line 1356
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v6, 0x0

    .line 1357
    .local v6, "reallyUseQuotedPrintable":Z
    :goto_3
    const-string/jumbo v8, "NOTE"

    invoke-virtual {p0, v8, v5, v7, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1374
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "first":Z
    .end local v4    # "noteBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "noteStr":Ljava/lang/String;
    .end local v6    # "reallyUseQuotedPrintable":Z
    .end local v7    # "shouldAppendCharsetInfo":Z
    :cond_4
    return-object p0

    .line 1353
    .restart local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .restart local v2    # "first":Z
    .restart local v4    # "noteBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "noteStr":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    .restart local v7    # "shouldAppendCharsetInfo":Z
    goto :goto_2

    .line 1356
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "reallyUseQuotedPrintable":Z
    goto :goto_3

    .line 1355
    .end local v6    # "reallyUseQuotedPrintable":Z
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "reallyUseQuotedPrintable":Z
    goto :goto_3

    .line 1360
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "first":Z
    .end local v4    # "noteBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "noteStr":Ljava/lang/String;
    .end local v6    # "reallyUseQuotedPrintable":Z
    .end local v7    # "shouldAppendCharsetInfo":Z
    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "contentValues$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1361
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "data1"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1362
    .restart local v5    # "noteStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1364
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v7, 0x0

    .line 1366
    .restart local v7    # "shouldAppendCharsetInfo":Z
    :goto_5
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_c

    .line 1367
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v6, 0x0

    .line 1368
    .restart local v6    # "reallyUseQuotedPrintable":Z
    :goto_6
    const-string/jumbo v8, "NOTE"

    invoke-virtual {p0, v8, v5, v7, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1364
    .end local v6    # "reallyUseQuotedPrintable":Z
    .end local v7    # "shouldAppendCharsetInfo":Z
    :cond_a
    const/4 v7, 0x1

    .restart local v7    # "shouldAppendCharsetInfo":Z
    goto :goto_5

    .line 1367
    :cond_b
    const/4 v6, 0x1

    .restart local v6    # "reallyUseQuotedPrintable":Z
    goto :goto_6

    .line 1366
    .end local v6    # "reallyUseQuotedPrintable":Z
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "reallyUseQuotedPrintable":Z
    goto :goto_6
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1263
    if-eqz p1, :cond_d

    .line 1264
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1265
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "company":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1267
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1269
    :cond_1
    const-string/jumbo v7, "data5"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1270
    .local v3, "department":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1271
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1273
    :cond_2
    const-string/jumbo v7, "data4"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1274
    .local v6, "title":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1275
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1278
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1279
    .local v4, "orgBuilder":Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1280
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1284
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1286
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1289
    .local v5, "orgline":Ljava/lang/String;
    const-string/jumbo v11, "ORG"

    .line 1290
    new-array v7, v9, [Ljava/lang/String;

    aput-object v5, v7, v8

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    .line 1291
    :goto_1
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_9

    .line 1292
    new-array v10, v9, [Ljava/lang/String;

    aput-object v5, v10, v8

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v8

    .line 1289
    :goto_2
    invoke-virtual {p0, v11, v5, v7, v10}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1294
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1295
    const-string/jumbo v11, "TITLE"

    .line 1296
    new-array v7, v9, [Ljava/lang/String;

    aput-object v6, v7, v8

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    .line 1297
    :goto_3
    iget-boolean v10, p0, Lcom/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_c

    .line 1298
    new-array v10, v9, [Ljava/lang/String;

    aput-object v6, v10, v8

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v8

    .line 1295
    :goto_4
    invoke-virtual {p0, v11, v6, v7, v10}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 1290
    goto :goto_1

    :cond_8
    move v10, v9

    .line 1292
    goto :goto_2

    :cond_9
    move v10, v8

    .line 1291
    goto :goto_2

    :cond_a
    move v7, v9

    .line 1296
    goto :goto_3

    :cond_b
    move v10, v9

    .line 1298
    goto :goto_4

    :cond_c
    move v10, v8

    .line 1297
    goto :goto_4

    .line 1302
    .end local v0    # "company":Ljava/lang/String;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v3    # "department":Ljava/lang/String;
    .end local v4    # "orgBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "orgline":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_d
    return-object p0
.end method

.method public appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;
    .locals 24
    .param p2, "translationCallback"    # Lcom/android/vcard/VCardPhoneNumberTranslationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 791
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 792
    .local v14, "phoneLineExists":Z
    if-eqz p1, :cond_a

    .line 793
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 794
    .local v17, "phoneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 795
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v20, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 796
    .local v19, "typeAsObject":Ljava/lang/Integer;
    const-string/jumbo v20, "data3"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 797
    .local v12, "label":Ljava/lang/String;
    const-string/jumbo v20, "is_primary"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 798
    .local v11, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v11, :cond_2

    .line 799
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_2

    const/4 v10, 0x1

    .line 800
    .local v10, "isPrimary":Z
    :goto_1
    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 801
    .local v15, "phoneNumber":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 802
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 804
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 808
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 812
    .local v18, "type":I
    :goto_2
    if-eqz p2, :cond_4

    .line 813
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v15, v1, v12, v10}, Lcom/android/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 815
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 816
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v15, v10}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 799
    .end local v10    # "isPrimary":Z
    .end local v15    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isPrimary":Z
    goto :goto_1

    .line 808
    .restart local v15    # "phoneNumber":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x1

    .restart local v18    # "type":I
    goto :goto_2

    .line 819
    :cond_4
    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v20

    .line 819
    if-eqz v20, :cond_6

    .line 822
    :cond_5
    const/4 v14, 0x1

    .line 823
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 824
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v15, v10}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 828
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/vcard/VCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 829
    .local v16, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 832
    const/4 v14, 0x1

    .line 833
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "actualPhoneNumber$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 834
    .local v5, "actualPhoneNumber":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 839
    const/16 v20, 0x2c

    const/16 v21, 0x70

    .line 838
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    .line 840
    const/16 v21, 0x3b

    const/16 v22, 0x77

    .line 838
    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 862
    .local v13, "numberWithControlSequence":Ljava/lang/String;
    move-object v9, v13

    .line 867
    .local v9, "formatted":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 868
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 874
    :cond_8
    :goto_4
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v9, v10}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 869
    :cond_9
    const-string/jumbo v20, "tel:"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 870
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "tel:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 884
    .end local v5    # "actualPhoneNumber":Ljava/lang/String;
    .end local v6    # "actualPhoneNumber$iterator":Ljava/util/Iterator;
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    .end local v8    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v9    # "formatted":Ljava/lang/String;
    .end local v10    # "isPrimary":Z
    .end local v11    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v12    # "label":Ljava/lang/String;
    .end local v13    # "numberWithControlSequence":Ljava/lang/String;
    .end local v15    # "phoneNumber":Ljava/lang/String;
    .end local v16    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "phoneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "type":I
    .end local v19    # "typeAsObject":Ljava/lang/Integer;
    :cond_a
    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 885
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string/jumbo v21, ""

    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 888
    :cond_b
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "encodedValue"    # Ljava/lang/String;
    .param p2, "photoType"    # Ljava/lang/String;

    .prologue
    .line 1741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1742
    .local v6, "tmpBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "PHOTO"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    const-string/jumbo v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    iget-boolean v8, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v8, :cond_1

    .line 1745
    const-string/jumbo v8, "ENCODING=B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    :goto_0
    const-string/jumbo v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-direct {p0, v6, p2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1751
    const-string/jumbo v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1752
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1755
    .local v7, "tmpStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "tmpBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1756
    .restart local v6    # "tmpBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1757
    .local v2, "lineCount":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 1759
    .local v1, "length":I
    const-string/jumbo v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 1758
    rsub-int/lit8 v4, v8, 0x4b

    .line 1760
    .local v4, "maxNumForFirstLine":I
    const-string/jumbo v8, " "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v4, v8

    .line 1761
    .local v5, "maxNumInGeneral":I
    move v3, v4

    .line 1762
    .local v3, "maxNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1763
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1764
    add-int/lit8 v2, v2, 0x1

    .line 1765
    if-le v2, v3, :cond_0

    .line 1766
    const-string/jumbo v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    move v3, v5

    .line 1769
    const/4 v2, 0x0

    .line 1762
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1747
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "lineCount":I
    .end local v3    # "maxNum":I
    .end local v4    # "maxNumForFirstLine":I
    .end local v5    # "maxNumInGeneral":I
    .end local v7    # "tmpStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "ENCODING=BASE64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1772
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "lineCount":I
    .restart local v3    # "maxNum":I
    .restart local v4    # "maxNumForFirstLine":I
    .restart local v5    # "maxNumInGeneral":I
    .restart local v7    # "tmpStr":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    iget-object v8, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1306
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1307
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1308
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1311
    const-string/jumbo v5, "data15"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1312
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 1315
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, "photoType":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1317
    const-string/jumbo v5, "vCard"

    const-string/jumbo v6, "Unknown photo type. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1321
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1322
    .local v3, "photoString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1323
    invoke-virtual {p0, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "data":[B
    .end local v3    # "photoString":Ljava/lang/String;
    .end local v4    # "photoType":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "isPrimary"    # Z
    .param p5, "emitEveryTime"    # Z

    .prologue
    .line 1457
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/vcard/VCardBuilder$PostalStruct;

    move-result-object v3

    .line 1458
    .local v3, "postalStruct":Lcom/android/vcard/VCardBuilder$PostalStruct;
    if-nez v3, :cond_6

    .line 1459
    if-eqz p5, :cond_5

    .line 1460
    const/4 v4, 0x0

    .line 1461
    .local v4, "reallyUseQuotedPrintable":Z
    const/4 v1, 0x0

    .line 1462
    .local v1, "appendCharset":Z
    const-string/jumbo v0, ""

    .line 1473
    .end local v1    # "appendCharset":Z
    .end local v4    # "reallyUseQuotedPrintable":Z
    .local v0, "addressValue":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .local v2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1475
    const-string/jumbo v5, "PREF"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1501
    const-string/jumbo v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown StructuredPostal type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1508
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    invoke-direct {p0, v2}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1511
    :cond_2
    if-eqz v1, :cond_3

    .line 1516
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    :cond_3
    if-eqz v4, :cond_4

    .line 1520
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :cond_4
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    iget-object v5, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    return-void

    .line 1464
    .end local v0    # "addressValue":Ljava/lang/String;
    .end local v2    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 1467
    :cond_6
    iget-boolean v4, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1468
    .local v4, "reallyUseQuotedPrintable":Z
    iget-boolean v1, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1469
    .local v1, "appendCharset":Z
    iget-object v0, v3, Lcom/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .restart local v0    # "addressValue":Ljava/lang/String;
    goto/16 :goto_0

    .line 1479
    .end local v1    # "appendCharset":Z
    .end local v4    # "reallyUseQuotedPrintable":Z
    .restart local v2    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    const-string/jumbo v5, "HOME"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1483
    :pswitch_2
    const-string/jumbo v5, "WORK"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1487
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1488
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v5

    .line 1487
    if-eqz v5, :cond_1

    .line 1493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 971
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 972
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    :cond_1
    :goto_0
    return-object p0

    .line 980
    :cond_2
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_3

    .line 981
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_0

    .line 983
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v2, p0, Lcom/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1437
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1438
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1441
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Lcom/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1444
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v7, 0x4

    .line 1786
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_2

    .line 1787
    const/4 v4, 0x0

    .line 1794
    .local v4, "useXProperty":Z
    :goto_0
    if-eqz p1, :cond_7

    .line 1795
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1796
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1797
    .local v3, "sipAddress":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1800
    if-eqz v4, :cond_4

    .line 1802
    const-string/jumbo v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1803
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1806
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1809
    :cond_1
    const-string/jumbo v5, "X-SIP"

    invoke-virtual {p0, v5, v3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1788
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v3    # "sipAddress":Ljava/lang/String;
    .end local v4    # "useXProperty":Z
    :cond_2
    iget-boolean v5, p0, Lcom/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v5, :cond_3

    .line 1789
    const/4 v4, 0x1

    .restart local v4    # "useXProperty":Z
    goto :goto_0

    .line 1791
    .end local v4    # "useXProperty":Z
    :cond_3
    return-object p0

    .line 1811
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .restart local v3    # "sipAddress":Ljava/lang/String;
    .restart local v4    # "useXProperty":Z
    :cond_4
    const-string/jumbo v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1815
    :cond_5
    iget v5, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1818
    const-string/jumbo v2, "TEL"

    .line 1823
    .local v2, "propertyName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1821
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "IMPP"

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_2

    .line 1827
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "sipAddress":Ljava/lang/String;
    :cond_7
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "typeAsInteger"    # Ljava/lang/Integer;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "encodedValue"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1580
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    if-nez p1, :cond_2

    .line 1585
    const/4 v1, 0x7

    .line 1590
    .local v1, "type":I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v0, "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_0

    .line 1703
    .end local p4    # "isPrimary":Z
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1704
    const-string/jumbo v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1708
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1713
    :goto_2
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    iget-object v3, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    return-void

    .line 1587
    .end local v0    # "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "type":I
    .restart local p4    # "isPrimary":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "type":I
    goto :goto_0

    .line 1594
    .restart local v0    # "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "HOME"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1593
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1599
    :pswitch_2
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "WORK"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1598
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1604
    :pswitch_3
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "HOME"

    aput-object v4, v3, v5

    const-string/jumbo v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1603
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1609
    :pswitch_4
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "WORK"

    aput-object v4, v3, v5

    const-string/jumbo v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1608
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1613
    :pswitch_5
    const-string/jumbo v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1617
    :pswitch_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_3

    .line 1620
    const-string/jumbo v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1622
    :cond_3
    const-string/jumbo v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1627
    :pswitch_7
    const-string/jumbo v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1631
    :pswitch_8
    const-string/jumbo v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1636
    :pswitch_9
    const-string/jumbo v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    const/4 p4, 0x1

    .line 1638
    .local p4, "isPrimary":Z
    goto/16 :goto_1

    .line 1641
    .local p4, "isPrimary":Z
    :pswitch_a
    const-string/jumbo v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1645
    :pswitch_b
    const/4 p4, 0x1

    .line 1646
    .local p4, "isPrimary":Z
    goto/16 :goto_1

    .line 1649
    .local p4, "isPrimary":Z
    :pswitch_c
    const-string/jumbo v3, "FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1653
    :pswitch_d
    const-string/jumbo v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1658
    :pswitch_e
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "WORK"

    aput-object v4, v3, v5

    const-string/jumbo v4, "CELL"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1657
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1662
    :pswitch_f
    const-string/jumbo v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_4

    .line 1665
    const-string/jumbo v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1667
    :cond_4
    const-string/jumbo v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1672
    :pswitch_10
    const-string/jumbo v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1676
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1678
    const-string/jumbo v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1679
    :cond_5
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1680
    const-string/jumbo v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1681
    :cond_6
    iget-boolean v3, p0, Lcom/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v3, :cond_7

    .line 1683
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1685
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1686
    .local v2, "upperLabel":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1687
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1688
    :cond_8
    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1710
    .end local v2    # "upperLabel":Ljava/lang/String;
    .end local p4    # "isPrimary":Z
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1246
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "contentValues$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1247
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, "website":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1249
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1254
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1255
    const-string/jumbo v3, "URL"

    invoke-virtual {p0, v3, v2}, Lcom/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1259
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "contentValues$iterator":Ljava/util/Iterator;
    .end local v2    # "website":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 192
    const-string/jumbo v0, "BEGIN"

    const-string/jumbo v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "4.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2203
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2204
    iget-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 2205
    const-string/jumbo v0, "X-CLASS"

    const-string/jumbo v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    const-string/jumbo v0, "X-REDUCTION"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string/jumbo v0, "X-NO"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const-string/jumbo v0, "X-DCM-HMN-MODE"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_0
    const-string/jumbo v0, "END"

    const-string/jumbo v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardBuilder;->mEndAppended:Z

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
