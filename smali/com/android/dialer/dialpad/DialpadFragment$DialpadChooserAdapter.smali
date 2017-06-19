.class Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# instance fields
.field private mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1486
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1484
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1488
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1494
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1495
    const v2, 0x7f0d025b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1496
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1497
    const v4, 0x7f0200e6

    .line 1496
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1498
    const/16 v4, 0x65

    .line 1494
    invoke-direct {v1, v2, v3, v4}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1501
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1502
    const v2, 0x7f0d025c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1503
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1504
    const v4, 0x7f0200e5

    .line 1503
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1505
    const/16 v4, 0x66

    .line 1501
    invoke-direct {v1, v2, v3, v4}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1508
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1509
    const v2, 0x7f0d025d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1511
    const v4, 0x7f0200e4

    .line 1510
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1512
    const/16 v4, 0x67

    .line 1508
    invoke-direct {v1, v2, v3, v4}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1486
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1517
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1533
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 1543
    if-nez p2, :cond_0

    .line 1544
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040056

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1547
    :cond_0
    const v2, 0x7f0e013a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1548
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    const/high16 v2, 0x7f0e0000

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1551
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1553
    return-object p2
.end method
