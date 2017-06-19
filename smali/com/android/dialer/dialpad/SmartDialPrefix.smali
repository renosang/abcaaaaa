.class public Lcom/android/dialer/dialpad/SmartDialPrefix;
.super Ljava/lang/Object;
.source "SmartDialPrefix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
    }
.end annotation


# static fields
.field private static final PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

.field private static final mMap:Lcom/android/dialer/dialpad/SmartDialMap;

.field private static sCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNanpCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNanpInitialized:Z

.field private static sUserInNanpRegion:Z

.field private static sUserSimCountryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserSimCountryCode:Ljava/lang/String;

    .line 59
    sput-boolean v1, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserInNanpRegion:Z

    .line 62
    sput-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sNanpCountries:Ljava/util/Set;

    .line 65
    sput-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sCountryCodes:Ljava/util/Set;

    .line 68
    new-instance v0, Lcom/android/dialer/dialpad/LatinSmartDialMap;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/LatinSmartDialMap;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 70
    sput-boolean v1, Lcom/android/dialer/dialpad/SmartDialPrefix;->sNanpInitialized:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNamePrefixes(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "index"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 167
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 170
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parseToIndexTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 172
    .local v4, "indexTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v1, "fullNameToken":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 180
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v12, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 191
    .local v2, "fullNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 193
    .local v8, "recursiveNameStart":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 194
    .local v7, "recursiveNameEnd":I
    const-string/jumbo v5, ""

    .line 195
    .local v5, "initial":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x2

    :goto_1
    if-ltz v3, :cond_5

    .line 196
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    if-ge v3, v10, :cond_1

    .line 197
    const/4 v10, 0x2

    if-ge v3, v10, :cond_4

    .line 198
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 201
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_2

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 204
    :cond_2
    move v6, v8

    :goto_3
    if-ge v6, v7, :cond_3

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 207
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "currentFullName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v0    # "currentFullName":Ljava/lang/String;
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 214
    .end local v1    # "fullNameToken":Ljava/lang/StringBuilder;
    .end local v2    # "fullNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "initial":Ljava/lang/String;
    .end local v7    # "recursiveNameEnd":I
    .end local v8    # "recursiveNameStart":I
    :cond_5
    return-object v9
.end method

.method public static getMap()Lcom/android/dialer/dialpad/SmartDialMap;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    return-object v0
.end method

.method private static initCountryCodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    const-string/jumbo v1, "20"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    const-string/jumbo v1, "27"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    const-string/jumbo v1, "30"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    const-string/jumbo v1, "31"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    const-string/jumbo v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    const-string/jumbo v1, "33"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v1, "34"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 339
    const-string/jumbo v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    const-string/jumbo v1, "39"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    const-string/jumbo v1, "40"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    const-string/jumbo v1, "41"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v1, "43"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    const-string/jumbo v1, "44"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    const-string/jumbo v1, "45"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    const-string/jumbo v1, "46"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    const-string/jumbo v1, "47"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    const-string/jumbo v1, "48"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    const-string/jumbo v1, "49"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    const-string/jumbo v1, "51"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    const-string/jumbo v1, "52"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    const-string/jumbo v1, "53"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    const-string/jumbo v1, "54"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    const-string/jumbo v1, "55"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 355
    const-string/jumbo v1, "56"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    const-string/jumbo v1, "57"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    const-string/jumbo v1, "58"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    const-string/jumbo v1, "60"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    const-string/jumbo v1, "61"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    const-string/jumbo v1, "62"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    const-string/jumbo v1, "63"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    const-string/jumbo v1, "64"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    const-string/jumbo v1, "65"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    const-string/jumbo v1, "66"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    const-string/jumbo v1, "81"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    const-string/jumbo v1, "82"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    const-string/jumbo v1, "84"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    const-string/jumbo v1, "86"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    const-string/jumbo v1, "90"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    const-string/jumbo v1, "91"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    const-string/jumbo v1, "92"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    const-string/jumbo v1, "93"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    const-string/jumbo v1, "94"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    const-string/jumbo v1, "95"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 375
    const-string/jumbo v1, "98"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    const-string/jumbo v1, "211"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 377
    const-string/jumbo v1, "212"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    const-string/jumbo v1, "213"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    const-string/jumbo v1, "216"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    const-string/jumbo v1, "218"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    const-string/jumbo v1, "220"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    const-string/jumbo v1, "221"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 383
    const-string/jumbo v1, "222"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 384
    const-string/jumbo v1, "223"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 385
    const-string/jumbo v1, "224"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 386
    const-string/jumbo v1, "225"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 387
    const-string/jumbo v1, "226"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    const-string/jumbo v1, "227"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 389
    const-string/jumbo v1, "228"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    const-string/jumbo v1, "229"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    const-string/jumbo v1, "230"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    const-string/jumbo v1, "231"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    const-string/jumbo v1, "232"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    const-string/jumbo v1, "233"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 395
    const-string/jumbo v1, "234"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    const-string/jumbo v1, "235"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 397
    const-string/jumbo v1, "236"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 398
    const-string/jumbo v1, "237"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    const-string/jumbo v1, "238"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 400
    const-string/jumbo v1, "239"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 401
    const-string/jumbo v1, "240"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    const-string/jumbo v1, "241"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 403
    const-string/jumbo v1, "242"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    const-string/jumbo v1, "243"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 405
    const-string/jumbo v1, "244"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 406
    const-string/jumbo v1, "245"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    const-string/jumbo v1, "246"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    const-string/jumbo v1, "247"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    const-string/jumbo v1, "248"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    const-string/jumbo v1, "249"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    const-string/jumbo v1, "250"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 412
    const-string/jumbo v1, "251"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    const-string/jumbo v1, "252"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    const-string/jumbo v1, "253"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 415
    const-string/jumbo v1, "254"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    const-string/jumbo v1, "255"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    const-string/jumbo v1, "256"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    const-string/jumbo v1, "257"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 419
    const-string/jumbo v1, "258"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    const-string/jumbo v1, "260"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    const-string/jumbo v1, "261"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 422
    const-string/jumbo v1, "262"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    const-string/jumbo v1, "263"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    const-string/jumbo v1, "264"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    const-string/jumbo v1, "265"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    const-string/jumbo v1, "266"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    const-string/jumbo v1, "267"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 428
    const-string/jumbo v1, "268"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    const-string/jumbo v1, "269"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    const-string/jumbo v1, "290"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    const-string/jumbo v1, "291"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    const-string/jumbo v1, "297"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 433
    const-string/jumbo v1, "298"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 434
    const-string/jumbo v1, "299"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    const-string/jumbo v1, "350"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    const-string/jumbo v1, "351"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    const-string/jumbo v1, "352"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    const-string/jumbo v1, "353"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    const-string/jumbo v1, "354"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    const-string/jumbo v1, "355"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    const-string/jumbo v1, "356"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    const-string/jumbo v1, "357"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    const-string/jumbo v1, "358"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    const-string/jumbo v1, "359"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    const-string/jumbo v1, "370"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    const-string/jumbo v1, "371"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 447
    const-string/jumbo v1, "372"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 448
    const-string/jumbo v1, "373"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    const-string/jumbo v1, "374"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    const-string/jumbo v1, "375"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    const-string/jumbo v1, "376"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    const-string/jumbo v1, "377"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    const-string/jumbo v1, "378"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    const-string/jumbo v1, "379"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    const-string/jumbo v1, "380"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    const-string/jumbo v1, "381"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    const-string/jumbo v1, "382"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    const-string/jumbo v1, "385"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    const-string/jumbo v1, "386"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    const-string/jumbo v1, "387"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    const-string/jumbo v1, "389"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    const-string/jumbo v1, "420"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    const-string/jumbo v1, "421"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    const-string/jumbo v1, "423"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 465
    const-string/jumbo v1, "500"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    const-string/jumbo v1, "501"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 467
    const-string/jumbo v1, "502"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    const-string/jumbo v1, "503"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    const-string/jumbo v1, "504"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    const-string/jumbo v1, "505"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    const-string/jumbo v1, "506"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    const-string/jumbo v1, "507"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 473
    const-string/jumbo v1, "508"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 474
    const-string/jumbo v1, "509"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    const-string/jumbo v1, "590"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    const-string/jumbo v1, "591"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 477
    const-string/jumbo v1, "592"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    const-string/jumbo v1, "593"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 479
    const-string/jumbo v1, "594"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 480
    const-string/jumbo v1, "595"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    const-string/jumbo v1, "596"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 482
    const-string/jumbo v1, "597"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 483
    const-string/jumbo v1, "598"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 484
    const-string/jumbo v1, "599"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    const-string/jumbo v1, "670"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 486
    const-string/jumbo v1, "672"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 487
    const-string/jumbo v1, "673"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    const-string/jumbo v1, "674"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 489
    const-string/jumbo v1, "675"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 490
    const-string/jumbo v1, "676"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 491
    const-string/jumbo v1, "677"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 492
    const-string/jumbo v1, "678"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    const-string/jumbo v1, "679"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    const-string/jumbo v1, "680"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    const-string/jumbo v1, "681"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    const-string/jumbo v1, "682"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    const-string/jumbo v1, "683"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    const-string/jumbo v1, "685"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 499
    const-string/jumbo v1, "686"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    const-string/jumbo v1, "687"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    const-string/jumbo v1, "688"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    const-string/jumbo v1, "689"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    const-string/jumbo v1, "690"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    const-string/jumbo v1, "691"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    const-string/jumbo v1, "692"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    const-string/jumbo v1, "800"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    const-string/jumbo v1, "808"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    const-string/jumbo v1, "850"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    const-string/jumbo v1, "852"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 510
    const-string/jumbo v1, "853"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    const-string/jumbo v1, "855"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    const-string/jumbo v1, "856"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    const-string/jumbo v1, "870"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    const-string/jumbo v1, "878"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 515
    const-string/jumbo v1, "880"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    const-string/jumbo v1, "881"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    const-string/jumbo v1, "882"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    const-string/jumbo v1, "883"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    const-string/jumbo v1, "886"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    const-string/jumbo v1, "888"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    const-string/jumbo v1, "960"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    const-string/jumbo v1, "961"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    const-string/jumbo v1, "962"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    const-string/jumbo v1, "963"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 525
    const-string/jumbo v1, "964"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    const-string/jumbo v1, "965"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    const-string/jumbo v1, "966"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    const-string/jumbo v1, "967"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    const-string/jumbo v1, "968"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    const-string/jumbo v1, "970"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    const-string/jumbo v1, "971"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    const-string/jumbo v1, "972"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    const-string/jumbo v1, "973"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    const-string/jumbo v1, "974"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 535
    const-string/jumbo v1, "975"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    const-string/jumbo v1, "976"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    const-string/jumbo v1, "977"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 538
    const-string/jumbo v1, "979"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    const-string/jumbo v1, "992"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    const-string/jumbo v1, "993"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 541
    const-string/jumbo v1, "994"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 542
    const-string/jumbo v1, "995"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 543
    const-string/jumbo v1, "996"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    const-string/jumbo v1, "998"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 545
    return-object v0
.end method

.method private static initNanpCountries()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 573
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "US"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 574
    const-string/jumbo v1, "CA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 575
    const-string/jumbo v1, "AS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    const-string/jumbo v1, "AI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    const-string/jumbo v1, "AG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 578
    const-string/jumbo v1, "BS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    const-string/jumbo v1, "BB"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    const-string/jumbo v1, "BM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    const-string/jumbo v1, "VG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 582
    const-string/jumbo v1, "KY"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    const-string/jumbo v1, "DM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    const-string/jumbo v1, "DO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 585
    const-string/jumbo v1, "GD"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    const-string/jumbo v1, "GU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 587
    const-string/jumbo v1, "JM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    const-string/jumbo v1, "PR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    const-string/jumbo v1, "MS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    const-string/jumbo v1, "MP"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 591
    const-string/jumbo v1, "KN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    const-string/jumbo v1, "LC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    const-string/jumbo v1, "VC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 594
    const-string/jumbo v1, "TT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 595
    const-string/jumbo v1, "TC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    const-string/jumbo v1, "VI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 597
    return-object v0
.end method

.method public static initializeNanpSettings(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string/jumbo v2, "phone"

    .line 74
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 76
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserSimCountryCode:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserSimCountryCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "DialtactsActivity_user_sim_country_code"

    sget-object v4, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserSimCountryCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    :goto_0
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserSimCountryCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/dialpad/SmartDialPrefix;->isCountryNanp(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserInNanpRegion:Z

    .line 92
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sNanpInitialized:Z

    .line 73
    return-void

    .line 87
    :cond_1
    const-string/jumbo v2, "DialtactsActivity_user_sim_country_code"

    .line 88
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialPrefix;->PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

    .line 87
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserSimCountryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isCountryNanp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "country"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    return v0

    .line 565
    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sNanpCountries:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 566
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->initNanpCountries()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sNanpCountries:Ljava/util/Set;

    .line 568
    :cond_1
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sNanpCountries:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sCountryCodes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->initCountryCodes()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sCountryCodes:Ljava/util/Set;

    .line 325
    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sCountryCodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parsePhoneNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
    .locals 14
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 261
    const-string/jumbo v2, ""

    .line 262
    .local v2, "countryCode":Ljava/lang/String;
    const/4 v3, 0x0

    .line 263
    .local v3, "countryCodeOffset":I
    const/4 v5, 0x0

    .line 265
    .local v5, "nanpNumberOffset":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 266
    sget-object v7, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-static {p0, v7}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_5

    .line 269
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v12, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v4, :cond_3

    .line 294
    .end local v4    # "i":I
    :cond_0
    :goto_1
    sget-boolean v7, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserInNanpRegion:Z

    if-eqz v7, :cond_2

    .line 295
    const-string/jumbo v0, ""

    .line 296
    .local v0, "areaCode":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_6

    .line 300
    const/4 v7, 0x3

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_1
    :goto_2
    const-string/jumbo v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, "areaCodeIndex":I
    if-eq v1, v11, :cond_2

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v5, v7, 0x3

    .line 315
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v1    # "areaCodeIndex":I
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;

    invoke-direct {v7, v2, v3, v5}, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;-><init>(Ljava/lang/String;II)V

    return-object v7

    .line 273
    .restart local v4    # "i":I
    .restart local v6    # "normalizedNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Lcom/android/dialer/dialpad/SmartDialPrefix;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    move v3, v4

    .line 276
    goto :goto_1

    .line 269
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v13, :cond_0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_0

    .line 284
    sget-boolean v7, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserInNanpRegion:Z

    .line 283
    if-eqz v7, :cond_0

    .line 285
    const-string/jumbo v2, "1"

    .line 286
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 287
    if-ne v3, v11, :cond_0

    .line 288
    const/4 v3, 0x0

    goto :goto_1

    .line 301
    .restart local v0    # "areaCode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v13, :cond_1

    .line 305
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static parseToIndexTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "contactName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 131
    .local v3, "length":I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 133
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, "currentIndexToken":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 140
    sget-object v5, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/dialer/dialpad/SmartDialMap;->normalizeCharacter(C)C

    move-result v0

    .line 141
    .local v0, "c":C
    sget-object v5, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-interface {v5, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    sget-object v5, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-interface {v5, v0}, Lcom/android/dialer/dialpad/SmartDialMap;->getDialpadIndex(C)B

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    return-object v4
.end method

.method public static parseToNumberTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    invoke-static {p0, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parsePhoneNumber(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;

    move-result-object v0

    .line 237
    .local v0, "phoneNumberTokens":Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
    if-nez v0, :cond_0

    .line 238
    return-object v1

    .line 241
    :cond_0
    iget v2, v0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    if-eqz v2, :cond_1

    .line 243
    iget v2, v0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    sget-object v3, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 242
    invoke-static {p0, v2, v3}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    iget v2, v0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    if-eqz v2, :cond_2

    .line 248
    iget v2, v0, Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    sget-object v3, Lcom/android/dialer/dialpad/SmartDialPrefix;->mMap:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 247
    invoke-static {p0, v2, v3}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;ILcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0    # "phoneNumberTokens":Lcom/android/dialer/dialpad/SmartDialPrefix$PhoneNumberTokens;
    :cond_2
    return-object v1
.end method

.method public static setUserInNanpRegion(Z)V
    .locals 0
    .param p0, "userInNanpRegion"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/dialer/dialpad/SmartDialPrefix;->sUserInNanpRegion:Z

    .line 99
    return-void
.end method
