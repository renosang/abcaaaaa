.class Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$1;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$1;->this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    .local v0, "color":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/high16 v4, -0x1000000

    invoke-direct {v1, v4, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 74
    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v4, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$1;->this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-static {v4}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->-wrap0(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)Landroid/view/View;

    move-result-object v4

    .line 75
    const v5, 0x7f0e013d

    .line 74
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "floatingActionButtonContainer":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "color":I
    .end local v1    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v3    # "floatingActionButtonContainer":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
