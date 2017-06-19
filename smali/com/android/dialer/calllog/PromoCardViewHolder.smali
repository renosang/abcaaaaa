.class public Lcom/android/dialer/calllog/PromoCardViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PromoCardViewHolder.java"


# instance fields
.field private mPrimaryActionView:Landroid/view/View;

.field private mSecondaryActionView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    const v0, 0x7f0e021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/PromoCardViewHolder;->mPrimaryActionView:Landroid/view/View;

    .line 55
    const v0, 0x7f0e021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/PromoCardViewHolder;->mSecondaryActionView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public static create(Landroid/view/View;)Lcom/android/dialer/calllog/PromoCardViewHolder;
    .locals 1
    .param p0, "rootView"    # Landroid/view/View;

    .prologue
    .line 32
    new-instance v0, Lcom/android/dialer/calllog/PromoCardViewHolder;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/PromoCardViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/calllog/PromoCardViewHolder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/android/dialer/calllog/PromoCardViewHolder;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/PromoCardViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    .local v0, "viewHolder":Lcom/android/dialer/calllog/PromoCardViewHolder;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/PromoCardViewHolder;->mPrimaryActionView:Landroid/view/View;

    .line 80
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/dialer/calllog/PromoCardViewHolder;->mSecondaryActionView:Landroid/view/View;

    .line 81
    return-object v0
.end method


# virtual methods
.method public getPrimaryActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/dialer/calllog/PromoCardViewHolder;->mPrimaryActionView:Landroid/view/View;

    return-object v0
.end method

.method public getSecondaryActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/dialer/calllog/PromoCardViewHolder;->mSecondaryActionView:Landroid/view/View;

    return-object v0
.end method
