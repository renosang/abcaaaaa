.class public Lcom/android/contacts/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/ViewUtil$1;,
        Lcom/android/contacts/common/util/ViewUtil$2;
    }
.end annotation


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 76
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$2;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$2;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 32
    :goto_1
    return-void

    .line 70
    :cond_0
    sput-object v1, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    .line 84
    :cond_1
    sput-object v1, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V
    .locals 5
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 122
    const v1, 0x7f0b0188

    .line 121
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 123
    .local v0, "fabPadding":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    .line 124
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v0

    .line 123
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 120
    return-void
.end method

.method public static addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 95
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static getConstantPreLayoutWidth(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Expecting view\'s width to be a constant rather than a result of the layout pass"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v1
.end method

.method public static isViewLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 106
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 109
    const v0, 0x7f0b0187

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 105
    :cond_0
    return-void
.end method
