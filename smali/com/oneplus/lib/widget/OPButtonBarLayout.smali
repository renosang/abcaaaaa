.class public Lcom/oneplus/lib/widget/OPButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "OPButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    .line 44
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPButtonBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPButtonBarLayout_op_allowStacking:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method private isStacked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 4
    .param p1, "stacked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 106
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setOrientation(I)V

    .line 107
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    :goto_0
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setGravity(I)V

    .line 109
    sget v3, Lcom/oneplus/commonctrl/R$id;->spacer:I

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "spacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 111
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getChildCount()I

    move-result v0

    .line 117
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 118
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 117
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 107
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "spacer":Landroid/view/View;
    :cond_2
    const/16 v3, 0x50

    goto :goto_0

    .line 111
    .restart local v2    # "spacer":Landroid/view/View;
    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    .line 105
    .restart local v0    # "childCount":I
    .restart local v1    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 63
    .local v4, "widthSize":I
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_1

    .line 64
    iget v5, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 69
    :cond_0
    iput v4, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mLastWidthSize:I

    .line 72
    :cond_1
    const/4 v3, 0x0

    .line 78
    .local v3, "needsRemeasure":Z
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_4

    .line 79
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 82
    .local v0, "initialWidthMeasureSpec":I
    const/4 v3, 0x1

    .line 87
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 89
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/OPButtonBarLayout;->mAllowStacking:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->isStacked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 60
    :cond_3
    return-void

    .line 84
    .end local v0    # "initialWidthMeasureSpec":I
    :cond_4
    move v0, p1

    .restart local v0    # "initialWidthMeasureSpec":I
    goto :goto_0

    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v1

    .line 91
    .local v1, "measuredWidth":I
    const/high16 v5, -0x1000000

    and-int v2, v1, v5

    .line 92
    .local v2, "measuredWidthState":I
    const/high16 v5, 0x1000000

    if-ne v2, v5, :cond_2

    .line 93
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/oneplus/lib/widget/OPButtonBarLayout;->setStacked(Z)V

    .line 96
    const/4 v3, 0x1

    goto :goto_1
.end method
