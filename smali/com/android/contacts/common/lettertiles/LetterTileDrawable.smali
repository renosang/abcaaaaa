.class public Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_CUSTOMIZE_SIM_PERSON_AVATAR:[Landroid/graphics/Bitmap; = null

.field private static DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_SIM_PERSON_AVATAR:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap; = null

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static sColors:Landroid/content/res/TypedArray;

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sRect:Landroid/graphics/Rect;

.field private static sTileFontColor:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field private mColor:I

.field private mContactType:I

.field private mContext:Landroid/content/Context;

.field private mIsCircle:Z

.field private mLetter:Ljava/lang/Character;

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/contacts/common/MoreContactUtils;->IC_SIM_PICTURE:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 60
    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_CUSTOMIZE_SIM_PERSON_AVATAR:[Landroid/graphics/Bitmap;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/accounts/Account;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    const-class v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->TAG:Ljava/lang/String;

    .line 74
    iput v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    .line 75
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    .line 79
    iput-boolean v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    .line 82
    iput-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 89
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    if-nez v1, :cond_1

    .line 90
    const v1, 0x7f0f0001

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    .line 91
    const v1, 0x7f0a0307

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    .line 92
    const v1, 0x7f0a0308

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sTileFontColor:I

    .line 93
    const v1, 0x7f0b01b6

    invoke-virtual {p1, v1, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    sput v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    .line 95
    const v1, 0x7f02011c

    .line 94
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    .line 97
    const v1, 0x7f0200c9

    .line 96
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    .line 99
    const v1, 0x7f02014a

    .line 98
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    .line 101
    const v1, 0x7f0200db

    .line 100
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_SIM_PERSON_AVATAR:Landroid/graphics/Bitmap;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/contacts/common/MoreContactUtils;->IC_SIM_PICTURE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_CUSTOMIZE_SIM_PERSON_AVATAR:[Landroid/graphics/Bitmap;

    .line 104
    sget-object v2, Lcom/android/contacts/common/MoreContactUtils;->IC_SIM_PICTURE:[I

    aget v2, v2, v0

    .line 103
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 108
    const v2, 0x7f0d01da

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 110
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 115
    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    iput v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    .line 116
    iput-object p3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mAccount:Landroid/accounts/Account;

    .line 117
    iput-object p2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 140
    .local v0, "destRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 142
    .local v1, "halfLength":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 142
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 150
    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 134
    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 159
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 161
    .local v9, "minDimension":I
    iget-boolean v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    div-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 170
    const-string/jumbo v1, "com.android.sim"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    .line 188
    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContext:Landroid/content/Context;

    .line 187
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBitmapForContactType(ILandroid/accounts/Account;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 189
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v7, v0, v1, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    .line 153
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 164
    :cond_1
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, v0, v2

    .line 175
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    sget v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    mul-float/2addr v1, v4

    int-to-float v4, v9

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 178
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    .line 183
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float v5, v0, v5

    .line 184
    sget-object v6, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 182
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private static getBitmapForContactType(ILandroid/accounts/Account;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "contactType"    # I
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    if-eqz p2, :cond_2

    .line 216
    const-string/jumbo v3, "phone"

    .line 215
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 217
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz p1, :cond_2

    .line 218
    const-string/jumbo v3, "com.android.sim"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 217
    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 221
    const-string/jumbo v3, "com.android.sim"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 220
    invoke-static {v3, v4}, Lcom/android/contacts/common/MoreContactUtils;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 222
    .local v1, "sub":I
    invoke-static {p2, v1}, Lcom/android/contacts/common/MoreContactUtils;->getCurrentSimIconIndex(Landroid/content/Context;I)I

    move-result v0

    .line 224
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 225
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    return-object v3

    .line 227
    :cond_0
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_CUSTOMIZE_SIM_PERSON_AVATAR:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    return-object v3

    .line 229
    .end local v0    # "index":I
    .end local v1    # "sub":I
    :cond_1
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_SIM_PERSON_AVATAR:Landroid/graphics/Bitmap;

    return-object v3

    .line 233
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 241
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    return-object v3

    .line 235
    :pswitch_0
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    return-object v3

    .line 237
    :pswitch_1
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    return-object v3

    .line 239
    :pswitch_2
    sget-object v3, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    return-object v3

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isEnglishLetter(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    const/16 v2, 0x41

    if-gt v2, p0, :cond_1

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x61

    if-gt v2, p0, :cond_2

    const/16 v2, 0x7a

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 203
    :cond_0
    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    return v1

    .line 208
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int v0, v1, v2

    .line 209
    .local v0, "color":I
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    sget v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 123
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    .line 121
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 250
    return-void
.end method

.method public setColor(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 299
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    .line 300
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 255
    return-void
.end method

.method public setContactType(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "contactType"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    .line 317
    return-object p0
.end method

.method public setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "isCircle"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    .line 322
    return-object p0
.end method

.method public setLetter(Ljava/lang/Character;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "letter"    # Ljava/lang/Character;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 295
    return-object p0
.end method

.method public setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 305
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 311
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    .line 312
    return-object p0

    .line 309
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    goto :goto_0
.end method

.method public setOffset(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 2
    .param p1, "offset"    # F

    .prologue
    const/4 v0, 0x0

    .line 288
    const/high16 v1, -0x41000000    # -0.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 289
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    .line 290
    return-object p0
.end method

.method public setScale(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 271
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 272
    return-object p0
.end method
