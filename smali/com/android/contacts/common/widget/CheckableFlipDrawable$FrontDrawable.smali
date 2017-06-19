.class Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckableFlipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/CheckableFlipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrontDrawable"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    return-void
.end method

.method private assignDrawableBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 169
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 170
    .local v0, "h":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 180
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    :cond_0
    return-void

    .line 184
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 185
    .local v4, "w":I
    iget-object v6, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 187
    .local v1, "h":I
    if-lez v4, :cond_2

    if-gtz v1, :cond_3

    .line 188
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    :goto_0
    return-void

    .line 190
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float v5, v6, v7

    .line 191
    .local v5, "widthScale":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v2, v6, v7

    .line 192
    .local v2, "heightScale":F
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 193
    .local v3, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 195
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    iget-object v6, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getInnerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->invalidateSelf()V

    .line 217
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->assignDrawableBounds(Landroid/graphics/Rect;)V

    .line 162
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 223
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 222
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 207
    return-void
.end method

.method public setInnerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 140
    iput-object p1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->assignDrawableBounds(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->invalidateSelf()V

    .line 138
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 152
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 147
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 228
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method
