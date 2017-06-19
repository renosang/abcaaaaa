.class public Lcom/android/incallui/oneplus/OPCircleImageView;
.super Landroid/widget/ImageView;
.source "OPCircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/android/incallui/oneplus/OPCircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/incallui/oneplus/OPCircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 49
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderColor:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    .line 68
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/oneplus/OPCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 49
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderColor:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    .line 77
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->init()V

    .line 75
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 194
    if-nez p1, :cond_0

    .line 195
    return-object v7

    .line 198
    :cond_0
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 199
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 205
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v3, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 206
    sget-object v3, Lcom/android/incallui/oneplus/OPCircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    return-object v0

    .line 208
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Lcom/android/incallui/oneplus/OPCircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 215
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    return-object v7
.end method

.method private init()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/incallui/oneplus/OPCircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mReady:Z

    .line 84
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->setup()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mSetupPending:Z

    .line 80
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 221
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mReady:Z

    if-nez v0, :cond_0

    .line 222
    iput-boolean v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mSetupPending:Z

    .line 223
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 227
    return-void

    .line 230
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 232
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 235
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapHeight:I

    .line 241
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapWidth:I

    .line 243
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 244
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRadius:F

    .line 246
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 247
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRadius:F

    .line 249
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->updateShaderMatrix()V

    .line 250
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->invalidate()V

    .line 220
    return-void
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 258
    .local v1, "dy":F
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 260
    iget v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 262
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 268
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 269
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    iget v5, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v5, v1, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 271
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 253
    return-void

    .line 264
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 265
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/incallui/oneplus/OPCircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    iget v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderWidth:I

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 124
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->setup()V

    .line 122
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 189
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->invalidate()V

    .line 183
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 158
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->setup()V

    .line 155
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPCircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 165
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->setup()V

    .line 162
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->setup()V

    .line 169
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPCircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPCircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 179
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPCircleImageView;->setup()V

    .line 176
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 97
    sget-object v0, Lcom/android/incallui/oneplus/OPCircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method
