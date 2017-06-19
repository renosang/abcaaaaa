.class Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ContactTileAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "itemViewType"    # I

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    .line 496
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 497
    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    .line 498
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    invoke-static {p1, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->-wrap0(Lcom/android/contacts/common/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    .line 501
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setImportantForAccessibility(I)V

    .line 495
    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V
    .locals 7
    .param p1, "entry"    # Lcom/android/contacts/common/list/ContactEntry;
    .param p2, "childIndex"    # I
    .param p3, "isLastRow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v4

    if-gt v4, p2, :cond_0

    .line 522
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    .line 525
    .local v0, "contactTile":Lcom/android/contacts/common/list/ContactTileView;
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 526
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 527
    const/4 v4, -0x1

    .line 528
    const/4 v5, -0x2

    .line 526
    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 530
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get3(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v4

    .line 532
    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get3(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v5

    .line 529
    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 534
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get2(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 536
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get0(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    .line 537
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    .line 541
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 543
    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v4, :pswitch_data_0

    .line 518
    :goto_1
    :pswitch_0
    return-void

    .line 539
    .end local v0    # "contactTile":Lcom/android/contacts/common/list/ContactTileView;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    .restart local v0    # "contactTile":Lcom/android/contacts/common/list/ContactTileView;
    goto :goto_0

    .line 548
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get1(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 549
    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get1(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 547
    invoke-virtual {v0, v4, v3, v5, v3}, Lcom/android/contacts/common/list/ContactTileView;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 554
    :pswitch_2
    if-eqz p3, :cond_1

    const/16 v3, 0x8

    .line 553
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto :goto_1

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onLayoutForTiles()V
    .locals 9

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    .line 577
    .local v3, "count":I
    iget-object v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v6}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get3(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v7}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get1(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 580
    .local v1, "childLeft":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 581
    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    sub-int v6, v3, v4

    add-int/lit8 v5, v6, -0x1

    .line 582
    .local v5, "rtlAdjustedIndex":I
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 586
    .local v2, "childWidth":I
    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 587
    add-int/2addr v1, v2

    .line 580
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childWidth":I
    .end local v5    # "rtlAdjustedIndex":I
    :cond_0
    move v5, v4

    .line 581
    goto :goto_1

    .line 573
    :cond_1
    return-void
.end method

.method private onMeasureForTiles(I)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 604
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 606
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    .line 607
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 609
    invoke-virtual {p0, v7, v9}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 610
    return-void

    .line 623
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v8, v8, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    add-int/lit8 v8, v8, -0x1

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v10}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get1(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v10

    mul-int/2addr v8, v10

    .line 624
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {v10}, Lcom/android/contacts/common/list/ContactTileAdapter;->-get3(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    .line 623
    add-int v6, v8, v10

    .line 628
    .local v6, "totalWhitespaceInPixels":I
    sub-int v8, v7, v6

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v10, v10, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int v4, v8, v10

    .line 629
    .local v4, "imageSize":I
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v8, v8, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int/2addr v8, v4

    sub-int v8, v7, v8

    sub-int v5, v8, v6

    .line 631
    .local v5, "remainder":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 632
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 633
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    .line 635
    if-ge v3, v5, :cond_1

    const/4 v8, 0x1

    .line 633
    :goto_1
    add-int v2, v10, v8

    .line 638
    .local v2, "childWidth":I
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 639
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 637
    invoke-virtual {v0, v8, v10}, Landroid/view/View;->measure(II)V

    .line 631
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2    # "childWidth":I
    :cond_1
    move v8, v9

    .line 635
    goto :goto_1

    .line 642
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    .line 603
    return-void
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2, "isLastRow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 511
    .local v0, "columnCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "columnCounter":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 513
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactEntry;

    move-object v2, v3

    .line 514
    .local v2, "entry":Lcom/android/contacts/common/list/ContactEntry;
    :goto_2
    invoke-direct {p0, v2, v1, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 508
    .end local v0    # "columnCount":I
    .end local v1    # "columnCounter":I
    .end local v2    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, v3, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    .restart local v0    # "columnCount":I
    goto :goto_0

    .line 513
    .restart local v1    # "columnCounter":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 507
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 563
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 568
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 569
    return-void

    .line 565
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles()V

    .line 566
    return-void

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 593
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    .line 598
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 599
    return-void

    .line 595
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(I)V

    .line 596
    return-void

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
