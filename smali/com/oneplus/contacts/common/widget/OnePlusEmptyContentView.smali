.class public Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;
.super Landroid/widget/LinearLayout;
.source "OnePlusEmptyContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;
    }
.end annotation


# instance fields
.field private mActionViewOne:Landroid/widget/TextView;

.field private mActionViewTwo:Landroid/widget/TextView;

.field private mActionViewZero:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mDisplayImage:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mOnActionButtonClickedListener:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput-boolean v6, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDisplayImage:Z

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, "minHeight":I
    sget-object v3, Lcom/android/contacts/common/R$styleable;->OnePlusEmptyContentView:[I

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/contacts/common/R$styleable;->OnePlusEmptyContentView:[I

    invoke-virtual {v3, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDisplayImage:Z

    .line 73
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setOrientation(I)V

    .line 78
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setGravity(I)V

    .line 79
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p0, v2}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setMinimumHeight(I)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 84
    const-string/jumbo v5, "layout_inflater"

    .line 83
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 85
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040086

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-virtual {p0, v6}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setClickable(Z)V

    .line 88
    const v3, 0x7f0e015d

    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mImageView:Landroid/widget/ImageView;

    .line 89
    iget-object v5, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mImageView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDisplayImage:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    const v3, 0x7f0e015e

    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f0e018e

    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewZero:Landroid/widget/TextView;

    .line 92
    iget-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewZero:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v3, 0x7f0e018f

    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewOne:Landroid/widget/TextView;

    .line 94
    iget-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewOne:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v3, 0x7f0e0190

    invoke-virtual {p0, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewTwo:Landroid/widget/TextView;

    .line 96
    iget-object v3, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewTwo:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void

    .line 89
    :cond_2
    const/16 v3, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    const/4 v0, -0x1

    .line 159
    .local v0, "actionButtonName":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mOnActionButtonClickedListener:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mOnActionButtonClickedListener:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;

    invoke-interface {v1, v0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;->onEmptyViewActionButtonClicked(I)V

    .line 157
    :cond_0
    return-void

    .line 161
    :pswitch_0
    const/4 v0, 0x0

    .line 162
    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v0, 0x1

    .line 165
    goto :goto_0

    .line 167
    :pswitch_2
    const/4 v0, 0x2

    .line 168
    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x7f0e018e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActionClickedListener(Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mOnActionButtonClickedListener:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;

    .line 152
    return-void
.end method

.method public setActionLabel(II)V
    .locals 3
    .param p1, "resourceId"    # I
    .param p2, "actionButtonName"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "actionText":Landroid/widget/TextView;
    packed-switch p2, :pswitch_data_0

    .line 134
    .end local v0    # "actionText":Landroid/widget/TextView;
    :goto_0
    if-nez v0, :cond_0

    .line 135
    return-void

    .line 125
    .restart local v0    # "actionText":Landroid/widget/TextView;
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewZero:Landroid/widget/TextView;

    .local v0, "actionText":Landroid/widget/TextView;
    goto :goto_0

    .line 128
    .local v0, "actionText":Landroid/widget/TextView;
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewOne:Landroid/widget/TextView;

    .local v0, "actionText":Landroid/widget/TextView;
    goto :goto_0

    .line 131
    .local v0, "actionText":Landroid/widget/TextView;
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mActionViewTwo:Landroid/widget/TextView;

    .local v0, "actionText":Landroid/widget/TextView;
    goto :goto_0

    .line 137
    .end local v0    # "actionText":Landroid/widget/TextView;
    :cond_0
    if-nez p1, :cond_1

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_1
    return-void

    .line 141
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mDisplayImage:Z

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    if-nez p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
