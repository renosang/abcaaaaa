.class public Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;
.super Landroid/widget/RelativeLayout;
.source "OneplusContactListPinnedHeaderView.java"


# instance fields
.field private mSectionHeaderIcon:Landroid/widget/ImageView;

.field private mSectionHeaderTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x11

    const/4 v9, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    invoke-virtual {v7, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0xf

    const/4 v8, -0x1

    .line 42
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 45
    .local v1, "backgroundColor":I
    const/16 v7, 0x17

    .line 44
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 47
    .local v4, "textOffsetTop":I
    const/4 v7, 0x7

    .line 46
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 48
    .local v2, "paddingStartOffset":I
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 49
    const v8, 0x7f0b01d9

    .line 48
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 50
    .local v5, "textWidth":I
    add-int v6, v2, v5

    .line 51
    .local v6, "widthIncludingPadding":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    const/4 v7, -0x2

    .line 53
    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {p0, v11}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setGravity(I)V

    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setLayoutDirection(I)V

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->getPaddingStart()I

    move-result v7

    add-int/2addr v7, v2

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->getPaddingTop()I

    move-result v8

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->getPaddingEnd()I

    move-result v9

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->getPaddingBottom()I

    move-result v10

    .line 59
    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setPaddingRelative(IIII)V

    .line 65
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    .line 66
    iget-object v7, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    const v8, 0x7f08035a

    invoke-virtual {v7, p1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 67
    iget-object v7, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderIcon:Landroid/widget/ImageView;

    .line 71
    iget-object v7, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->addView(Landroid/view/View;)V

    .line 72
    iget-object v7, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->addView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method private setViewVisibilty(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public setSectionHeaderTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    .line 76
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setViewVisibilty(Landroid/view/View;I)V

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setViewVisibilty(Landroid/view/View;I)V

    .line 75
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->mSectionHeaderTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setViewVisibilty(Landroid/view/View;I)V

    goto :goto_0
.end method
