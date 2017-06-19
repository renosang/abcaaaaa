.class Lcom/android/contacts/common/widget/FlipDrawable$1;
.super Ljava/lang/Object;
.source "FlipDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/widget/FlipDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/widget/FlipDrawable;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/widget/FlipDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/widget/FlipDrawable;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/contacts/common/widget/FlipDrawable$1;->this$0:Lcom/android/contacts/common/widget/FlipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/contacts/common/widget/FlipDrawable$1;->this$0:Lcom/android/contacts/common/widget/FlipDrawable;

    invoke-static {v1}, Lcom/android/contacts/common/widget/FlipDrawable;->-get0(Lcom/android/contacts/common/widget/FlipDrawable;)F

    move-result v0

    .line 109
    .local v0, "old":F
    iget-object v2, p0, Lcom/android/contacts/common/widget/FlipDrawable$1;->this$0:Lcom/android/contacts/common/widget/FlipDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/contacts/common/widget/FlipDrawable;->-set0(Lcom/android/contacts/common/widget/FlipDrawable;F)F

    .line 110
    iget-object v1, p0, Lcom/android/contacts/common/widget/FlipDrawable$1;->this$0:Lcom/android/contacts/common/widget/FlipDrawable;

    invoke-static {v1}, Lcom/android/contacts/common/widget/FlipDrawable;->-get0(Lcom/android/contacts/common/widget/FlipDrawable;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/contacts/common/widget/FlipDrawable$1;->this$0:Lcom/android/contacts/common/widget/FlipDrawable;

    invoke-virtual {v1}, Lcom/android/contacts/common/widget/FlipDrawable;->invalidateSelf()V

    .line 106
    :cond_0
    return-void
.end method
