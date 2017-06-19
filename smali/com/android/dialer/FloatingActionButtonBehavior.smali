.class public Lcom/android/dialer/FloatingActionButtonBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButtonBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 36
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "child":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/FloatingActionButtonBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/widget/FrameLayout;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 37
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return v0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 41
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "child":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/FloatingActionButtonBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/widget/FrameLayout;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 43
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 44
    .local v0, "translationY":F
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 45
    const/4 v1, 0x1

    return v1
.end method
