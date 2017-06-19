.class public Lcom/android/dialer/list/RemoveView;
.super Landroid/widget/FrameLayout;
.source "RemoveView.java"


# instance fields
.field mDragDropController:Lcom/android/dialer/list/DragDropController;

.field mHighlightedColor:I

.field mRemoveDrawable:Landroid/graphics/drawable/Drawable;

.field mRemoveIcon:Landroid/widget/ImageView;

.field mRemoveText:Landroid/widget/TextView;

.field mUnhighlightedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/list/RemoveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private setAppearanceHighlighted()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mHighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mHighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/dialer/list/RemoveView;->invalidate()V

    .line 89
    return-void
.end method

.method private setAppearanceNormal()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mUnhighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/android/dialer/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/RemoveView;->mUnhighlightedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/dialer/list/RemoveView;->invalidate()V

    .line 83
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/16 v1, 0x4000

    const/4 v4, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 55
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 59
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/RemoveView;->sendAccessibilityEvent(I)V

    .line 60
    invoke-direct {p0}, Lcom/android/dialer/list/RemoveView;->setAppearanceHighlighted()V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-direct {p0}, Lcom/android/dialer/list/RemoveView;->setAppearanceNormal()V

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 68
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 67
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/dialer/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    goto :goto_0

    .line 72
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/RemoveView;->sendAccessibilityEvent(I)V

    .line 73
    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dialer/list/DragDropController;->handleDragFinished(IIZ)V

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/list/RemoveView;->setAppearanceNormal()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 40
    const v1, 0x7f0e016d

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/RemoveView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/list/RemoveView;->mRemoveText:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0e016c

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/RemoveView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/dialer/list/RemoveView;->mRemoveIcon:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/android/dialer/list/RemoveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a035c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/RemoveView;->mUnhighlightedColor:I

    .line 44
    const v1, 0x7f0a035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/RemoveView;->mHighlightedColor:I

    .line 45
    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/RemoveView;->mRemoveDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method

.method public setDragDropController(Lcom/android/dialer/list/DragDropController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/dialer/list/DragDropController;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/dialer/list/RemoveView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    .line 48
    return-void
.end method
