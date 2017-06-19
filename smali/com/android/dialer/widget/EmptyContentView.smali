.class public Lcom/android/dialer/widget/EmptyContentView;
.super Landroid/widget/LinearLayout;
.source "EmptyContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
    }
.end annotation


# instance fields
.field private mActionView:Landroid/widget/TextView;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dialer/widget/EmptyContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/EmptyContentView;->setOrientation(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/dialer/widget/EmptyContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    const-string/jumbo v2, "layout_inflater"

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040061

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/EmptyContentView;->setClickable(Z)V

    .line 66
    const v1, 0x7f0e015d

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/EmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    .line 67
    const v1, 0x7f0e015e

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/EmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0e015f

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/EmptyContentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public isShowingContent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;

    invoke-interface {v0}, Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;->onEmptyViewActionButtonClicked()V

    .line 118
    :cond_0
    return-void
.end method

.method public setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/dialer/widget/EmptyContentView;->mOnActionButtonClickedListener:Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;

    .line 113
    return-void
.end method

.method public setActionLabel(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mActionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDescription(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_0
    return-void

    .line 77
    :cond_0
    const v0, 0x7f0d0316

    if-ne p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/android/dialer/widget/EmptyContentView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
