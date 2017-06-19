.class public Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;
.super Ljava/lang/Object;
.source "OPLetterDrawableCreator.java"


# static fields
.field private static final CIRCLE_PHOTO_ID:[I

.field private static final COLOR_STYLES:[I

.field private static DEFAULT_PHOTO_REPRESENT:C

.field private static NUMBER_SIGN_REPRESENT:C

.field private static final SQUARE_PHOTO_ID:[I


# instance fields
.field private mAppPackageName:Ljava/lang/String;

.field private mDefaultThemeColor:I

.field private mResources:Landroid/content/res/Resources;

.field private mStyleThemes:[Landroid/content/res/Resources$Theme;

.field private mThemeColors:Landroid/content/res/TypedArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0x1c

    .line 37
    const/16 v0, 0x24

    sput-char v0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->DEFAULT_PHOTO_REPRESENT:C

    .line 38
    const/16 v0, 0x23

    sput-char v0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->NUMBER_SIGN_REPRESENT:C

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->CIRCLE_PHOTO_ID:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->SQUARE_PHOTO_ID:[I

    .line 103
    const v0, 0x7f080345

    .line 104
    const v1, 0x7f080346

    .line 105
    const v2, 0x7f080347

    .line 106
    const v3, 0x7f080348

    .line 107
    const v4, 0x7f080349

    .line 102
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->COLOR_STYLES:[I

    .line 30
    return-void

    .line 40
    :array_0
    .array-data 4
        0x7f0201b6
        0x7f0201b9
        0x7f0201bc
        0x7f0201bf
        0x7f0201c6
        0x7f0201c9
        0x7f0201cc
        0x7f0201cf
        0x7f0201d2
        0x7f0201d5
        0x7f0201d8
        0x7f0201db
        0x7f0201de
        0x7f0201e1
        0x7f0201e7
        0x7f0201ea
        0x7f0201ed
        0x7f0201f0
        0x7f0201f3
        0x7f0201f9
        0x7f0201fc
        0x7f0201ff
        0x7f020202
        0x7f020205
        0x7f020208
        0x7f02020b
        0x7f0201e4
        0x7f0201c3
    .end array-data

    .line 71
    :array_1
    .array-data 4
        0x7f0201b7
        0x7f0201ba
        0x7f0201bd
        0x7f0201c0
        0x7f0201c7
        0x7f0201ca
        0x7f0201cd
        0x7f0201d0
        0x7f0201d3
        0x7f0201d6
        0x7f0201d9
        0x7f0201dc
        0x7f0201df
        0x7f0201e2
        0x7f0201e8
        0x7f0201eb
        0x7f0201ee
        0x7f0201f1
        0x7f0201f4
        0x7f0201fa
        0x7f0201fd
        0x7f020200
        0x7f020203
        0x7f020206
        0x7f020209
        0x7f02020c
        0x7f0201e5
        0x7f0201c4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mAppPackageName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    .line 119
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mThemeColors:Landroid/content/res/TypedArray;

    .line 120
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a02da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mDefaultThemeColor:I

    .line 121
    invoke-direct {p0}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->initColorStyleThemes()V

    .line 116
    return-void
.end method

.method private generateColorIdentify(Ljava/lang/String;)I
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x0

    return v2

    .line 167
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 168
    .local v1, "hash":I
    sget-object v2, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->COLOR_STYLES:[I

    array-length v2, v2

    rem-int v0, v1, v2

    .line 170
    .local v0, "colorIdentify":I
    return v0
.end method

.method private getLetterColorStyleTheme(Ljava/lang/String;)Landroid/content/res/Resources$Theme;
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mStyleThemes:[Landroid/content/res/Resources$Theme;

    invoke-direct {p0, p1}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->generateColorIdentify(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getLetterIndex(C)I
    .locals 2
    .param p1, "letterChar"    # C

    .prologue
    .line 196
    sget-char v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->DEFAULT_PHOTO_REPRESENT:C

    if-ne v1, p1, :cond_2

    .line 197
    sget-object v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->CIRCLE_PHOTO_ID:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 203
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->CIRCLE_PHOTO_ID:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 206
    :cond_1
    return v0

    .line 198
    .end local v0    # "index":I
    :cond_2
    sget-char v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->NUMBER_SIGN_REPRESENT:C

    if-ne v1, p1, :cond_3

    .line 199
    sget-object v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->CIRCLE_PHOTO_ID:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x2

    .restart local v0    # "index":I
    goto :goto_0

    .line 201
    .end local v0    # "index":I
    :cond_3
    add-int/lit8 v0, p1, -0x61

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private getLetterVectorId(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)I
    .locals 6
    .param p1, "request"    # Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v0, p1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->letter:Ljava/lang/String;

    .line 175
    .local v0, "letter":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-char v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->DEFAULT_PHOTO_REPRESENT:C

    .line 178
    .local v1, "letterChar":C
    :goto_0
    sget-char v4, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->NUMBER_SIGN_REPRESENT:C

    if-eq v4, v1, :cond_1

    const/16 v4, 0x61

    if-lt v1, v4, :cond_0

    const/16 v4, 0x7a

    if-le v1, v4, :cond_1

    .line 179
    :cond_0
    sget-char v1, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->DEFAULT_PHOTO_REPRESENT:C

    .line 182
    :cond_1
    invoke-direct {p0, v1}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->getLetterIndex(C)I

    move-result v2

    .line 183
    .local v2, "letterIndex":I
    iget v3, p1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->shape:I

    .line 184
    .local v3, "shape":I
    if-nez v3, :cond_3

    .line 185
    sget-object v4, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->CIRCLE_PHOTO_ID:[I

    aget v4, v4, v2

    return v4

    .line 176
    .end local v1    # "letterChar":C
    .end local v2    # "letterIndex":I
    .end local v3    # "shape":I
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .restart local v1    # "letterChar":C
    goto :goto_0

    .line 186
    .restart local v2    # "letterIndex":I
    .restart local v3    # "shape":I
    :cond_3
    const/4 v4, 0x1

    if-ne v4, v3, :cond_4

    .line 187
    sget-object v4, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->SQUARE_PHOTO_ID:[I

    aget v4, v4, v2

    return v4

    .line 189
    :cond_4
    const v4, 0x7f0201c3

    return v4
.end method

.method private getStrangerPhoto(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "shape"    # I

    .prologue
    const v3, 0x7f0201f6

    const/4 v2, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mStyleThemes:[Landroid/content/res/Resources$Theme;

    aget-object v1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mStyleThemes:[Landroid/content/res/Resources$Theme;

    aget-object v1, v1, v2

    const v2, 0x7f0201f7

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mStyleThemes:[Landroid/content/res/Resources$Theme;

    aget-object v1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initColorStyleThemes()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 125
    sget-object v3, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->COLOR_STYLES:[I

    array-length v3, v3

    new-array v3, v3, [Landroid/content/res/Resources$Theme;

    iput-object v3, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mStyleThemes:[Landroid/content/res/Resources$Theme;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "index":I
    sget-object v5, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->COLOR_STYLES:[I

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget v1, v5, v3

    .line 128
    .local v1, "styleId":I
    iget-object v7, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 129
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 130
    iget-object v7, p0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->mStyleThemes:[Landroid/content/res/Resources$Theme;

    aput-object v2, v7, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "styleId":I
    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    :cond_0
    return-void
.end method


# virtual methods
.method public create(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "request"    # Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->letter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 144
    if-eqz v0, :cond_2

    .line 147
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->getStrangerPhoto(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->shape:I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p1, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->getLetterColorStyleTheme(Ljava/lang/String;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->getLetterVectorId(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
