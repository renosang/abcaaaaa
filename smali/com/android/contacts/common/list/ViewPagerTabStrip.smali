.class public Lcom/android/contacts/common/list/ViewPagerTabStrip;
.super Landroid/widget/LinearLayout;
.source "ViewPagerTabStrip.java"


# instance fields
.field private mIndexForSelection:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private mSelectedUnderlineThickness:I

.field private mSelectionOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b01b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 45
    iput v2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    .line 47
    const v2, 0x7f0a0321

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 50
    .local v1, "underlineColor":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    .line 51
    iget-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->setWillNotDraw(Z)V

    .line 40
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v7

    .line 73
    .local v7, "childCount":I
    if-lez v7, :cond_2

    .line 74
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 76
    .local v16, "selectedTitle":Landroid/view/View;
    if-nez v16, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 83
    .local v14, "selectedLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v15

    .line 84
    .local v15, "selectedRight":I
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->isRtl()Z

    move-result v10

    .line 85
    .local v10, "isRtl":Z
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-lez v1, :cond_3

    const/4 v8, 0x1

    .line 87
    .local v8, "hasNextTab":Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    if-eqz v8, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-eqz v10, :cond_6

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 90
    .local v13, "nextTitle":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 91
    .local v11, "nextLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v12

    .line 93
    .local v12, "nextRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v2, v11

    mul-float/2addr v1, v2

    .line 94
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    int-to-float v3, v14

    mul-float/2addr v2, v3

    .line 93
    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 95
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    .line 96
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    int-to-float v3, v15

    mul-float/2addr v2, v3

    .line 95
    add-float/2addr v1, v2

    float-to-int v15, v1

    .line 99
    .end local v11    # "nextLeft":I
    .end local v12    # "nextRight":I
    .end local v13    # "nextTitle":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getHeight()I

    move-result v9

    .line 100
    .local v9, "height":I
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    sub-int v1, v9, v1

    int-to-float v3, v1

    .line 101
    int-to-float v4, v15

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 100
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    .end local v8    # "hasNextTab":Z
    .end local v9    # "height":I
    .end local v10    # "isRtl":Z
    .end local v14    # "selectedLeft":I
    .end local v15    # "selectedRight":I
    .end local v16    # "selectedTitle":Landroid/view/View;
    :cond_2
    return-void

    .line 85
    .restart local v10    # "isRtl":Z
    .restart local v14    # "selectedLeft":I
    .restart local v15    # "selectedRight":I
    .restart local v16    # "selectedTitle":Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "hasNextTab":Z
    goto :goto_0

    .line 86
    .end local v8    # "hasNextTab":Z
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    const/4 v8, 0x1

    .restart local v8    # "hasNextTab":Z
    goto :goto_0

    .end local v8    # "hasNextTab":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "hasNextTab":Z
    goto :goto_0

    .line 89
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    .line 64
    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->invalidate()V

    .line 62
    return-void
.end method
