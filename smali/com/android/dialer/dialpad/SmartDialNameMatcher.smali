.class public Lcom/android/dialer/dialpad/SmartDialNameMatcher;
.super Ljava/lang/Object;
.source "SmartDialNameMatcher.java"


# static fields
.field public static final LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMap:Lcom/android/dialer/dialpad/SmartDialMap;

.field private final mMatchPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiMatchMethod:Ljava/lang/reflect/Method;

.field private mMultiMatchObject:Ljava/lang/Object;

.field private mNameMatchMask:Ljava/lang/String;

.field private mPhoneNumberMatchMask:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mSchar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/LatinSmartDialMap;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;Landroid/content/Context;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "map"    # Lcom/android/dialer/dialpad/SmartDialMap;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "+*#-.(,)/ "

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mSchar:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 75
    iput-object p3, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getMultiMatchObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMultiMatchObject:Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getMultiMatchMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMultiMatchMethod:Ljava/lang/reflect/Method;

    .line 72
    return-void
.end method

.method private constructEmptyMask(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "length"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 90
    const-string/jumbo v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method private matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 11
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .prologue
    const/4 v10, 0x0

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 200
    :cond_0
    return-object v10

    .line 203
    :cond_1
    const-string/jumbo v8, "[\\+\\*\\#\\-\\.\\(\\,\\)\\/ ]"

    const-string/jumbo v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "phoneNum":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 206
    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 207
    .local v7, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 208
    .local v3, "length":I
    move v2, v7

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 209
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    .local v0, "ch":C
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v0, v8, :cond_3

    .line 208
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "[\\+\\*\\#\\-\\.\\(\\,\\)\\/ ]"

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 215
    move v7, v2

    .line 220
    .end local v0    # "ch":C
    :cond_4
    const/4 v6, 0x0

    .line 221
    .local v6, "specialCount":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 222
    .local v5, "queryLength":I
    add-int v1, v7, v5

    .line 223
    .local v1, "end":I
    move v2, v7

    :goto_1
    if-ge v2, v3, :cond_7

    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 225
    .restart local v0    # "ch":C
    iget-object v8, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mSchar:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 226
    add-int/lit8 v6, v6, 0x1

    .line 223
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_6
    sub-int v8, v2, v7

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v8, v6

    if-ne v8, v5, :cond_5

    .line 231
    add-int/lit8 v1, v2, 0x1

    .line 235
    .end local v0    # "ch":C
    :cond_7
    new-instance v8, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    invoke-direct {v8, v7, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    return-object v8

    .line 237
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "queryLength":I
    .end local v6    # "specialCount":I
    .end local v7    # "start":I
    :cond_8
    return-object v10
.end method

.method public static normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "map"    # Lcom/android/dialer/dialpad/SmartDialMap;

    .prologue
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v2, "s":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    .local v0, "ch":C
    invoke-interface {p2, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "map"    # Lcom/android/dialer/dialpad/SmartDialMap;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "matchPos"    # Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .prologue
    .line 100
    iget v0, p2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    if-ge v0, v1, :cond_0

    .line 101
    add-int/lit8 v1, v0, 0x1

    const-string/jumbo v2, "1"

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public getMatchPositions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 422
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMultiMatchObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMultiMatchMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesMultiLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 19
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 271
    .local p3, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 275
    .local v7, "nameLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 277
    .local v11, "queryLength":I
    if-ge v7, v11, :cond_0

    .line 278
    const/16 v16, 0x0

    return v16

    .line 281
    :cond_0
    if-nez v11, :cond_1

    .line 282
    const/16 v16, 0x0

    return v16

    .line 287
    :cond_1
    const/4 v8, 0x0

    .line 290
    .local v8, "nameStart":I
    const/4 v12, 0x0

    .line 293
    .local v12, "queryStart":I
    const/4 v15, 0x0

    .line 299
    .local v15, "tokenStart":I
    const/4 v14, 0x0

    .line 301
    .local v14, "seperatorCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v9, "partial":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    :goto_0
    if-ge v8, v7, :cond_e

    if-ge v12, v11, :cond_e

    .line 304
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 306
    .local v3, "ch":C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v3

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadAlphabeticChar(C)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lcom/android/dialer/dialpad/SmartDialMap;->getDialpadNumericCharacter(C)C

    move-result v3

    .line 311
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    if-eq v3, v0, :cond_6

    .line 328
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    .line 329
    add-int/lit8 v18, v8, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 328
    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 331
    :cond_3
    :goto_1
    if-ge v8, v7, :cond_4

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 332
    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    .line 331
    if-eqz v16, :cond_4

    .line 334
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 336
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 340
    :cond_5
    const/4 v12, 0x0

    .line 341
    const/4 v14, 0x0

    .line 342
    move v15, v8

    goto/16 :goto_0

    .line 344
    :cond_6
    add-int/lit8 v16, v11, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    .line 348
    new-instance v16, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 349
    add-int v17, v11, v15

    add-int v17, v17, v14

    .line 348
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "match$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 351
    .local v5, "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_2

    .line 353
    .end local v5    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 354
    const/16 v16, 0x1

    return v16

    .line 355
    .end local v6    # "match$iterator":Ljava/util/Iterator;
    :cond_8
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 361
    move v4, v8

    .local v4, "j":I
    :goto_3
    if-ge v4, v7, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    move-object/from16 v17, v0

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 362
    invoke-interface/range {v17 .. v18}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v16

    if-nez v16, :cond_b

    .line 368
    :cond_9
    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    if-ge v4, v0, :cond_a

    .line 369
    add-int/lit8 v16, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 371
    .local v13, "remainder":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 373
    .local v10, "partialTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    add-int/lit8 v16, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1, v10}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 376
    add-int/lit8 v16, v4, 0x1

    move/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->advanceMatchPositions(Ljava/util/ArrayList;I)V

    .line 378
    new-instance v16, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    .line 377
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 382
    move-object v9, v10

    .line 386
    .end local v4    # "j":I
    .end local v10    # "partialTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    .end local v13    # "remainder":Ljava/lang/String;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 387
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 361
    .restart local v4    # "j":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 393
    .end local v4    # "j":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 394
    if-nez v12, :cond_d

    .line 398
    move v15, v8

    goto/16 :goto_0

    .line 402
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 409
    .end local v3    # "ch":C
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_10

    .line 410
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 411
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "match$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 412
    .restart local v5    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_4

    .line 414
    .end local v5    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 415
    const/16 v16, 0x1

    return v16

    .line 417
    .end local v6    # "match$iterator":Ljava/util/Iterator;
    :cond_10
    const/16 v16, 0x0

    return v16
.end method

.method matchesMultiLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 16
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 453
    .local p3, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 456
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 457
    .local v8, "nameLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 459
    .local v9, "queryLength":I
    if-nez v9, :cond_0

    .line 460
    const/4 v11, 0x0

    return v11

    .line 463
    :cond_0
    const/4 v5, 0x0

    .line 465
    .local v5, "indexs":[I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMultiMatchMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMultiMatchObject:Ljava/lang/Object;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 466
    const/4 v14, 0x0

    aput-object p2, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 465
    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "indexs":[I
    check-cast v5, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .local v5, "indexs":[I
    if-nez v5, :cond_1

    .line 469
    const/4 v11, 0x0

    return v11

    .line 471
    .end local v5    # "indexs":[I
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "SmartDialNameMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v11, 0x0

    return v11

    .line 476
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "indexs":[I
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v5

    if-ge v4, v11, :cond_3

    .line 477
    aget v10, v5, v4

    .line 478
    .local v10, "start":I
    add-int/lit8 v11, v4, 0x1

    aget v3, v5, v11

    .line 479
    .local v3, "end":I
    if-ltz v10, :cond_2

    if-ltz v3, :cond_2

    .line 480
    new-instance v11, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v12, v3, 0x1

    invoke-direct {v11, v10, v12}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 482
    :cond_2
    const-string/jumbo v11, "SmartDialNameMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid index, start is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " end is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 483
    const-string/jumbo v13, " for name:"

    .line 482
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 487
    .end local v3    # "end":I
    .end local v10    # "start":I
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "match$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 488
    .local v6, "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    goto :goto_2

    .line 490
    .end local v6    # "match":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 491
    const/4 v11, 0x1

    return v11
.end method

.method public matchesNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v0

    return-object v0
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v0

    return-object v0
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "useNanp"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    return-object v3

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    .line 153
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v1

    .line 154
    .local v1, "matchPos":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    if-eqz v1, :cond_1

    .line 155
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    .line 158
    :cond_1
    return-object v1
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    .line 435
    return-void
.end method
