.class Lcom/android/dialer/calllog/CallTypeIconsView$Resources;
.super Ljava/lang/Object;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallTypeIconsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resources"
.end annotation


# instance fields
.field public final blocked:Landroid/graphics/drawable/Drawable;

.field public final iconMargin:I

.field public final incoming:Landroid/graphics/drawable/Drawable;

.field public final missed:Landroid/graphics/drawable/Drawable;

.field public final outgoing:Landroid/graphics/drawable/Drawable;

.field public final videoCall:Landroid/graphics/drawable/Drawable;

.field public final voicemail:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0a0361

    const v4, 0x7f0200cd

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 194
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 195
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v4, v1}, Lcom/android/contacts/common/util/BitmapUtil;->getRotatedDrawable(Landroid/content/res/Resources;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 203
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0a0360

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    .line 208
    const v1, 0x7f0200c8

    invoke-direct {p0, p1, v1}, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->blocked:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->blocked:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0a0362

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 211
    const v1, 0x7f020144

    invoke-direct {p0, p1, v1}, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0a02ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 213
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 215
    const v1, 0x7f0b01eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    .line 191
    return-void
.end method

.method private getScaledBitmap(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0250

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 224
    .local v1, "scaledHeight":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 225
    int-to-float v5, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 224
    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 226
    .local v3, "scaledWidth":I
    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 227
    .local v2, "scaledIcon":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method
