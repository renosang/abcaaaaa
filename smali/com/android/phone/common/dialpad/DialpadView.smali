.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIds:[I

.field private mCanDigitsBeEdited:Z

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mIldCountry:Landroid/widget/TextView;

.field private mIldRate:Landroid/widget/TextView;

.field private final mIsLandscape:Z

.field private final mIsRtl:Z

.field private mOverflowMenuButton:Landroid/view/View;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mRippleColor:Landroid/content/res/ColorStateList;

.field private mTranslateDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    .line 100
    sget-object v1, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    const v4, 0x7f0b017f

    .line 104
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    .line 107
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 108
    const/4 v4, 0x2

    .line 107
    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    .line 97
    return-void

    :cond_0
    move v1, v3

    .line 107
    goto :goto_0

    :cond_1
    move v2, v3

    .line 109
    goto :goto_1

    .line 80
    nop

    :array_0
    .array-data 4
        0x7f0e0145
        0x7f0e0141
        0x7f0e0132
        0x7f0e0133
        0x7f0e0134
        0x7f0e0135
        0x7f0e0136
        0x7f0e0137
        0x7f0e0138
        0x7f0e0139
        0x7f0e0144
        0x7f0e0143
    .end array-data
.end method

.method private getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getKeyButtonAnimationDelay(I)I
    .locals 6
    .param p1, "buttonId"    # I

    .prologue
    const/16 v5, 0xa5

    const/16 v4, 0x84

    const/16 v3, 0x63

    const/16 v2, 0x42

    const/16 v1, 0x21

    .line 327
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v0, :cond_17

    .line 328
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v0, :cond_b

    .line 329
    const v0, 0x7f0e0133

    if-ne p1, v0, :cond_0

    .line 330
    return v1

    .line 331
    :cond_0
    const v0, 0x7f0e0136

    if-ne p1, v0, :cond_1

    .line 332
    return v2

    .line 333
    :cond_1
    const v0, 0x7f0e0139

    if-ne p1, v0, :cond_2

    .line 334
    return v3

    .line 335
    :cond_2
    const v0, 0x7f0e0143

    if-ne p1, v0, :cond_3

    .line 336
    return v4

    .line 337
    :cond_3
    const v0, 0x7f0e0132

    if-ne p1, v0, :cond_4

    .line 338
    return v5

    .line 339
    :cond_4
    const v0, 0x7f0e0135

    if-ne p1, v0, :cond_5

    .line 340
    const/16 v0, 0xc6

    return v0

    .line 341
    :cond_5
    const v0, 0x7f0e0138

    if-ne p1, v0, :cond_6

    .line 342
    const/16 v0, 0xe7

    return v0

    .line 343
    :cond_6
    const v0, 0x7f0e0145

    if-ne p1, v0, :cond_7

    .line 344
    const/16 v0, 0x108

    return v0

    .line 345
    :cond_7
    const v0, 0x7f0e0141

    if-ne p1, v0, :cond_8

    .line 346
    const/16 v0, 0x129

    return v0

    .line 347
    :cond_8
    const v0, 0x7f0e0134

    if-ne p1, v0, :cond_9

    .line 348
    const/16 v0, 0x14a

    return v0

    .line 349
    :cond_9
    const v0, 0x7f0e0137

    if-eq p1, v0, :cond_a

    const v0, 0x7f0e0144

    if-ne p1, v0, :cond_23

    .line 350
    :cond_a
    const/16 v0, 0x16b

    return v0

    .line 353
    :cond_b
    const v0, 0x7f0e0141

    if-ne p1, v0, :cond_c

    .line 354
    return v1

    .line 355
    :cond_c
    const v0, 0x7f0e0134

    if-ne p1, v0, :cond_d

    .line 356
    return v2

    .line 357
    :cond_d
    const v0, 0x7f0e0137

    if-ne p1, v0, :cond_e

    .line 358
    return v3

    .line 359
    :cond_e
    const v0, 0x7f0e0144

    if-ne p1, v0, :cond_f

    .line 360
    return v4

    .line 361
    :cond_f
    const v0, 0x7f0e0132

    if-ne p1, v0, :cond_10

    .line 362
    return v5

    .line 363
    :cond_10
    const v0, 0x7f0e0135

    if-ne p1, v0, :cond_11

    .line 364
    const/16 v0, 0xc6

    return v0

    .line 365
    :cond_11
    const v0, 0x7f0e0138

    if-ne p1, v0, :cond_12

    .line 366
    const/16 v0, 0xe7

    return v0

    .line 367
    :cond_12
    const v0, 0x7f0e0145

    if-ne p1, v0, :cond_13

    .line 368
    const/16 v0, 0x108

    return v0

    .line 369
    :cond_13
    const v0, 0x7f0e0133

    if-ne p1, v0, :cond_14

    .line 370
    const/16 v0, 0x129

    return v0

    .line 371
    :cond_14
    const v0, 0x7f0e0136

    if-ne p1, v0, :cond_15

    .line 372
    const/16 v0, 0x14a

    return v0

    .line 373
    :cond_15
    const v0, 0x7f0e0139

    if-eq p1, v0, :cond_16

    const v0, 0x7f0e0143

    if-ne p1, v0, :cond_23

    .line 374
    :cond_16
    const/16 v0, 0x16b

    return v0

    .line 378
    :cond_17
    const v0, 0x7f0e0141

    if-ne p1, v0, :cond_18

    .line 379
    return v1

    .line 380
    :cond_18
    const v0, 0x7f0e0132

    if-ne p1, v0, :cond_19

    .line 381
    return v2

    .line 382
    :cond_19
    const v0, 0x7f0e0133

    if-ne p1, v0, :cond_1a

    .line 383
    return v3

    .line 384
    :cond_1a
    const v0, 0x7f0e0134

    if-ne p1, v0, :cond_1b

    .line 385
    return v4

    .line 386
    :cond_1b
    const v0, 0x7f0e0135

    if-ne p1, v0, :cond_1c

    .line 387
    return v5

    .line 388
    :cond_1c
    const v0, 0x7f0e0136

    if-ne p1, v0, :cond_1d

    .line 389
    const/16 v0, 0xc6

    return v0

    .line 390
    :cond_1d
    const v0, 0x7f0e0137

    if-ne p1, v0, :cond_1e

    .line 391
    const/16 v0, 0xe7

    return v0

    .line 392
    :cond_1e
    const v0, 0x7f0e0138

    if-ne p1, v0, :cond_1f

    .line 393
    const/16 v0, 0x108

    return v0

    .line 394
    :cond_1f
    const v0, 0x7f0e0139

    if-ne p1, v0, :cond_20

    .line 395
    const/16 v0, 0x129

    return v0

    .line 396
    :cond_20
    const v0, 0x7f0e0144

    if-ne p1, v0, :cond_21

    .line 397
    const/16 v0, 0x14a

    return v0

    .line 398
    :cond_21
    const v0, 0x7f0e0145

    if-eq p1, v0, :cond_22

    const v0, 0x7f0e0143

    if-ne p1, v0, :cond_23

    .line 399
    :cond_22
    const/16 v0, 0x16b

    return v0

    .line 403
    :cond_23
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Attempted to get animation delay for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method private getKeyButtonAnimationDuration(I)I
    .locals 6
    .param p1, "buttonId"    # I

    .prologue
    const v5, 0x7f0e0133

    const v4, 0x7f0e0132

    const/16 v3, 0x14a

    const/16 v2, 0x129

    const/16 v1, 0x108

    .line 415
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v0, :cond_e

    .line 416
    iget-boolean v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v0, :cond_7

    .line 417
    const v0, 0x7f0e0141

    if-eq p1, v0, :cond_0

    const v0, 0x7f0e0134

    if-ne p1, v0, :cond_1

    .line 419
    :cond_0
    return v1

    .line 417
    :cond_1
    const v0, 0x7f0e0137

    if-eq p1, v0, :cond_0

    .line 418
    const v0, 0x7f0e0144

    if-eq p1, v0, :cond_0

    .line 420
    if-eq p1, v4, :cond_2

    const v0, 0x7f0e0135

    if-ne p1, v0, :cond_3

    .line 422
    :cond_2
    return v2

    .line 420
    :cond_3
    const v0, 0x7f0e0138

    if-eq p1, v0, :cond_2

    .line 421
    const v0, 0x7f0e0145

    if-eq p1, v0, :cond_2

    .line 423
    if-eq p1, v5, :cond_4

    const v0, 0x7f0e0136

    if-ne p1, v0, :cond_5

    .line 425
    :cond_4
    return v3

    .line 423
    :cond_5
    const v0, 0x7f0e0139

    if-eq p1, v0, :cond_4

    .line 424
    const v0, 0x7f0e0143

    if-eq p1, v0, :cond_4

    .line 450
    :cond_6
    sget-object v0, Lcom/android/phone/common/dialpad/DialpadView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Attempted to get animation duration for invalid key button id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    return v0

    .line 428
    :cond_7
    const v0, 0x7f0e0141

    if-eq p1, v0, :cond_8

    const v0, 0x7f0e0134

    if-ne p1, v0, :cond_9

    .line 430
    :cond_8
    return v3

    .line 428
    :cond_9
    const v0, 0x7f0e0137

    if-eq p1, v0, :cond_8

    .line 429
    const v0, 0x7f0e0144

    if-eq p1, v0, :cond_8

    .line 431
    if-eq p1, v4, :cond_a

    const v0, 0x7f0e0135

    if-ne p1, v0, :cond_b

    .line 433
    :cond_a
    return v2

    .line 431
    :cond_b
    const v0, 0x7f0e0138

    if-eq p1, v0, :cond_a

    .line 432
    const v0, 0x7f0e0145

    if-eq p1, v0, :cond_a

    .line 434
    if-eq p1, v5, :cond_c

    const v0, 0x7f0e0136

    if-ne p1, v0, :cond_d

    .line 436
    :cond_c
    :goto_0
    return v1

    .line 434
    :cond_d
    const v0, 0x7f0e0139

    if-eq p1, v0, :cond_c

    .line 435
    const v0, 0x7f0e0143

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 440
    :cond_e
    const v0, 0x7f0e0141

    if-eq p1, v0, :cond_f

    if-ne p1, v4, :cond_10

    .line 442
    :cond_f
    return v3

    .line 440
    :cond_10
    if-eq p1, v5, :cond_f

    .line 441
    const v0, 0x7f0e0134

    if-eq p1, v0, :cond_f

    const v0, 0x7f0e0135

    if-eq p1, v0, :cond_f

    const v0, 0x7f0e0136

    if-eq p1, v0, :cond_f

    .line 443
    const v0, 0x7f0e0137

    if-eq p1, v0, :cond_11

    const v0, 0x7f0e0138

    if-ne p1, v0, :cond_12

    .line 444
    :cond_11
    return v2

    .line 443
    :cond_12
    const v0, 0x7f0e0139

    if-eq p1, v0, :cond_11

    .line 445
    const v0, 0x7f0e0144

    if-eq p1, v0, :cond_13

    const v0, 0x7f0e0145

    if-ne p1, v0, :cond_14

    .line 446
    :cond_13
    :goto_1
    return v1

    .line 445
    :cond_14
    const v0, 0x7f0e0143

    if-ne p1, v0, :cond_6

    goto :goto_1
.end method

.method private setupKeypad()V
    .locals 25

    .prologue
    .line 132
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v9, v0, [I

    .local v9, "letterIds":[I
    fill-array-data v9, :array_0

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 153
    .local v17, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 157
    .local v6, "currentLocale":Ljava/util/Locale;
    const-string/jumbo v21, "fa"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 158
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    .line 163
    .local v12, "nf":Ljava/text/NumberFormat;
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_5

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 165
    .local v7, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v21, 0x7f0e013f

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 166
    .local v15, "numberView":Landroid/widget/TextView;
    const v21, 0x7f0e0140

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 170
    .local v11, "lettersView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    const v22, 0x7f0e0143

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 171
    const v21, 0x7f0d0061

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, "numberString":Ljava/lang/String;
    move-object v13, v14

    .line 193
    .local v13, "numberContentDescription":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f020068

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 192
    check-cast v18, Landroid/graphics/drawable/RippleDrawable;

    .line 194
    .local v18, "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 198
    :cond_0
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 200
    invoke-virtual {v7, v13}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    if-eqz v11, :cond_1

    .line 204
    aget v21, v9, v8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 160
    .end local v7    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v8    # "i":I
    .end local v11    # "lettersView":Landroid/widget/TextView;
    .end local v12    # "nf":Ljava/text/NumberFormat;
    .end local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    .end local v14    # "numberString":Ljava/lang/String;
    .end local v15    # "numberView":Landroid/widget/TextView;
    .end local v18    # "rippleBackground":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static/range {v21 .. v21}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v12

    .restart local v12    # "nf":Ljava/text/NumberFormat;
    goto/16 :goto_0

    .line 173
    .restart local v7    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .restart local v8    # "i":I
    .restart local v11    # "lettersView":Landroid/widget/TextView;
    .restart local v15    # "numberView":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    const v22, 0x7f0e0144

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 174
    const v21, 0x7f0d0060

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 175
    .restart local v14    # "numberString":Ljava/lang/String;
    move-object v13, v14

    .restart local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    goto :goto_2

    .line 177
    .end local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    .end local v14    # "numberString":Ljava/lang/String;
    :cond_4
    int-to-long v0, v8

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    .line 181
    .restart local v14    # "numberString":Ljava/lang/String;
    aget v21, v9, v8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "letters":Ljava/lang/String;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    .line 185
    .local v19, "spannable":Landroid/text/Spannable;
    new-instance v21, Landroid/text/style/TtsSpan$VerbatimBuilder;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v21

    .line 186
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    .line 187
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    .line 188
    const/16 v24, 0x21

    .line 184
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 189
    move-object/from16 v13, v19

    .restart local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 208
    .end local v7    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v10    # "letters":Ljava/lang/String;
    .end local v11    # "lettersView":Landroid/widget/TextView;
    .end local v13    # "numberContentDescription":Ljava/lang/CharSequence;
    .end local v14    # "numberString":Ljava/lang/String;
    .end local v15    # "numberView":Landroid/widget/TextView;
    .end local v19    # "spannable":Landroid/text/Spannable;
    :cond_5
    const v21, 0x7f0e0141

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 210
    .local v16, "one":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v21, 0x7f0d0072

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 209
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    const v21, 0x7f0e0145

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 214
    .local v20, "zero":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    const v21, 0x7f0d0071

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 213
    invoke-virtual/range {v20 .. v21}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    return-void

    .line 132
    :array_0
    .array-data 4
        0x7f0d0062
        0x7f0d0063
        0x7f0d0064
        0x7f0d0065
        0x7f0d0066
        0x7f0d0067
        0x7f0d0068
        0x7f0d0069
        0x7f0d006a
        0x7f0d006b
        0x7f0d006c
        0x7f0d006d
    .end array-data
.end method


# virtual methods
.method public animateShow()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 280
    new-instance v5, Lcom/android/phone/common/dialpad/DialpadView$1;

    invoke-direct {v5, p0}, Lcom/android/phone/common/dialpad/DialpadView$1;-><init>(Lcom/android/phone/common/dialpad/DialpadView;)V

    .line 282
    .local v5, "showListener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 283
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDelay(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 285
    .local v1, "delay":I
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-direct {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->getKeyButtonAnimationDuration(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 286
    .local v3, "duration":I
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v6, v6, v4

    invoke-virtual {p0, v6}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 288
    .local v2, "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    invoke-virtual {v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 289
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsLandscape:Z

    if-eqz v6, :cond_1

    .line 292
    iget-boolean v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIsRtl:Z

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    :goto_1
    iget v7, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationX(F)V

    .line 293
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 299
    :goto_2
    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 300
    int-to-long v8, v1

    .line 299
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 301
    int-to-long v8, v3

    .line 299
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    .line 296
    :cond_1
    iget v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mTranslateDistance:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setTranslationY(F)V

    .line 297
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 277
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "delay":I
    .end local v2    # "dialpadKey":Lcom/android/phone/common/dialpad/DialpadKeyButton;
    .end local v3    # "duration":I
    :cond_2
    return-void
.end method

.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    .line 116
    const v1, 0x7f0e014e

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    .line 117
    const v1, 0x7f0e014f

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDelete:Landroid/widget/ImageButton;

    .line 118
    const v1, 0x7f0e014d

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    .line 119
    const v1, 0x7f0e0147

    invoke-virtual {p0, v1}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    .line 120
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e0149

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldCountry:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0e014a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mIldRate:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/android/phone/common/dialpad/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 125
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public setCanDigitsBeEdited(Z)V
    .locals 6
    .param p1, "canBeEdited"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 240
    const v3, 0x7f0e014f

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "deleteButton":Landroid/view/View;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 242
    const v3, 0x7f0e014d

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 243
    .local v2, "overflowMenuButton":Landroid/view/View;
    if-eqz p1, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v3, 0x7f0e014e

    invoke-virtual {p0, v3}, Lcom/android/phone/common/dialpad/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 246
    .local v1, "digits":Landroid/widget/EditText;
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 247
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 248
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 249
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 251
    iput-boolean p1, p0, Lcom/android/phone/common/dialpad/DialpadView;->mCanDigitsBeEdited:Z

    .line 239
    return-void

    .end local v1    # "digits":Landroid/widget/EditText;
    .end local v2    # "overflowMenuButton":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 241
    goto :goto_0
.end method
