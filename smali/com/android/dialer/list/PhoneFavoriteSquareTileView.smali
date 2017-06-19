.class public Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
.super Lcom/android/dialer/list/PhoneFavoriteTileView;
.source "PhoneFavoriteSquareTileView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private final mHeightToWidthRatio:F

.field private mSecondaryButton:Landroid/widget/ImageButton;


# direct methods
.method static synthetic -wrap0(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->launchQuickContact()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/PhoneFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    const v1, 0x7f0b0208

    .line 46
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mHeightToWidthRatio:F

    .line 43
    return-void
.end method

.method private launchQuickContact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    .line 68
    invoke-static {v0, p0, v1, v3, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    .line 71
    invoke-static {v0, p0, v1, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getApproximateImageSize()I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContactEntry()Lcom/android/contacts/common/list/ContactEntry;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

    return-object v0
.end method

.method protected getNameForView(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "contactEntry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactEntry;->getPreferredDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteSquareTileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mContactEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 77
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0}, Lcom/android/dialer/list/PhoneFavoriteTileView;->onFinishInflate()V

    .line 53
    const v2, 0x7f0e0111

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "nameView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 55
    const v2, 0x7f0e0115

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, "phoneTypeView":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 57
    const v2, 0x7f0e01d8

    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mSecondaryButton:Landroid/widget/ImageButton;

    .line 51
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 93
    .local v3, "width":I
    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->mHeightToWidthRatio:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 94
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getChildCount()I

    move-result v0

    .line 95
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 97
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 98
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 96
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method
