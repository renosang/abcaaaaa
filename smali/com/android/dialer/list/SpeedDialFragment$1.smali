.class Lcom/android/dialer/list/SpeedDialFragment$1;
.super Ljava/lang/Object;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SpeedDialFragment;->animateGridView([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SpeedDialFragment;

.field final synthetic val$idsInPlace:[J

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SpeedDialFragment;Landroid/view/ViewTreeObserver;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SpeedDialFragment;
    .param p2, "val$observer"    # Landroid/view/ViewTreeObserver;
    .param p3, "val$idsInPlace"    # [J

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    iput-object p2, p0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$idsInPlace:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 20

    .prologue
    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get5(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/dialer/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v7

    .line 392
    .local v7, "firstVisiblePosition":I
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 393
    .local v2, "animSet":Landroid/animation/AnimatorSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v3, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get5(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get5(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 396
    .local v4, "child":Landroid/view/View;
    add-int v12, v7, v8

    .line 401
    .local v12, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get2(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 394
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 405
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get2(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v10

    .line 407
    .local v10, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->val$idsInPlace:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10, v11}, Lcom/android/dialer/list/SpeedDialFragment;->-wrap0(Lcom/android/dialer/list/SpeedDialFragment;[JJ)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 409
    const-string/jumbo v16, "alpha"

    .line 408
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "itemId":J
    .end local v12    # "position":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get1(Lcom/android/dialer/list/SpeedDialFragment;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 445
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 448
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get4(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get3(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 450
    const/16 v16, 0x1

    return v16

    .line 412
    .restart local v4    # "child":Landroid/view/View;
    .restart local v10    # "itemId":J
    .restart local v12    # "position":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get4(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 413
    .local v14, "startTop":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SpeedDialFragment$1;->this$0:Lcom/android/dialer/list/SpeedDialFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/dialer/list/SpeedDialFragment;->-get3(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;

    move-result-object v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 414
    .local v13, "startLeft":Ljava/lang/Integer;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v15

    .line 415
    .local v15, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 416
    .local v9, "left":I
    const/4 v5, 0x0

    .line 417
    .local v5, "deltaX":I
    const/4 v6, 0x0

    .line 419
    .local v6, "deltaY":I
    if-eqz v13, :cond_5

    .line 420
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v9, :cond_5

    .line 421
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v5, v16, v9

    .line 423
    const-string/jumbo v16, "translationX"

    .line 422
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 423
    int-to-float v0, v5

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v18, v17, v19

    .line 422
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_5
    if-eqz v14, :cond_0

    .line 428
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v15, :cond_0

    .line 429
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v6, v16, v15

    .line 431
    const-string/jumbo v16, "translationY"

    .line 430
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 431
    int-to-float v0, v6

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v18, v17, v19

    .line 430
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 408
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
