.class public Lcom/android/dialer/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# static fields
.field private static sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;


# instance fields
.field private mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mShowVideo:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    .line 56
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    .line 54
    :cond_0
    return-void
.end method

.method private getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 130
    :pswitch_0
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 114
    :pswitch_1
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 117
    :pswitch_2
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 120
    :pswitch_3
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 122
    :pswitch_4
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 124
    :pswitch_5
    sget-object v0, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->blocked:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "callType"    # I

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sget-object v3, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget v3, v3, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    .line 73
    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    .line 74
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    .line 68
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    .line 64
    iput v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    .line 65
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    .line 61
    return-void
.end method

.method public getCallType(I)I
    .locals 1
    .param p1, "index"    # I
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isVideoShown()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, "left":I
    iget-object v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    .local v0, "callType":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 144
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 145
    .local v4, "right":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    sget-object v5, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->iconMargin:I

    add-int v3, v4, v5

    goto :goto_0

    .line 151
    .end local v0    # "callType":Ljava/lang/Integer;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "right":I
    :cond_0
    iget-boolean v5, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    if-eqz v5, :cond_1

    .line 152
    sget-object v5, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v2, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    .line 153
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v4, v3, v5

    .line 154
    .restart local v4    # "right":I
    sget-object v5, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v5, v5, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "right":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->setMeasuredDimension(II)V

    .line 135
    return-void
.end method

.method public setShowVideo(Z)V
    .locals 2
    .param p1, "showVideo"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mShowVideo:Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    sget-object v1, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mWidth:I

    .line 86
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    sget-object v1, Lcom/android/dialer/calllog/CallTypeIconsView;->sResources:Lcom/android/dialer/calllog/CallTypeIconsView$Resources;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallTypeIconsView$Resources;->videoCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeIconsView;->mHeight:I

    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallTypeIconsView;->invalidate()V

    .line 82
    :cond_0
    return-void
.end method
