.class Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckableFlipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/CheckableFlipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckmarkDrawable"
.end annotation


# static fields
.field private static sCheckMark:Landroid/graphics/Bitmap;

.field private static final sMatrix:Landroid/graphics/Matrix;


# instance fields
.field private mAlphaFraction:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mScaleFraction:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sMatrix:Landroid/graphics/Matrix;

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "backgroundColor"    # I

    .prologue
    const/4 v1, 0x1

    .line 242
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 243
    sget-object v0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 244
    const v0, 0x7f0200d8

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    .line 246
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    .line 247
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 259
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 266
    sget-object v2, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 267
    sget-object v2, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mScaleFraction:F

    iget v4, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mScaleFraction:F

    sget-object v5, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 268
    sget-object v6, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 267
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 269
    sget-object v2, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sget-object v4, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sget-object v5, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 269
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 273
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 275
    .local v1, "oldAlpha":I
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v1

    iget v4, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mAlphaFraction:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 276
    sget-object v2, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sCheckMark:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->sMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 278
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    return-void
.end method

.method public setAlphaAnimatorValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 312
    iget v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mAlphaFraction:F

    .line 313
    .local v0, "old":F
    iput p1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mAlphaFraction:F

    .line 314
    iget v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mAlphaFraction:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->invalidateSelf()V

    .line 311
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    return-void
.end method

.method public setScaleAnimatorValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 301
    iget v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mScaleFraction:F

    .line 302
    .local v0, "old":F
    iput p1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mScaleFraction:F

    .line 303
    iget v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->mScaleFraction:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->invalidateSelf()V

    .line 300
    :cond_0
    return-void
.end method
