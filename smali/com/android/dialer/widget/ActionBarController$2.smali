.class Lcom/android/dialer/widget/ActionBarController$2;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/widget/ActionBarController;->slideActionBar(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/widget/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/dialer/widget/ActionBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/widget/ActionBarController;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/dialer/widget/ActionBarController$2;->this$0:Lcom/android/dialer/widget/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 166
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/dialer/widget/ActionBarController$2;->this$0:Lcom/android/dialer/widget/ActionBarController;

    .line 167
    iget-object v2, p0, Lcom/android/dialer/widget/ActionBarController$2;->this$0:Lcom/android/dialer/widget/ActionBarController;

    invoke-static {v2}, Lcom/android/dialer/widget/ActionBarController;->-get0(Lcom/android/dialer/widget/ActionBarController;)Lcom/android/dialer/widget/ActionBarController$ActivityUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dialer/widget/ActionBarController$ActivityUi;->getActionBarHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 166
    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/ActionBarController;->setHideOffset(I)V

    .line 164
    return-void
.end method
