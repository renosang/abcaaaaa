.class Lcom/android/dialer/list/SearchFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SearchFragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SearchFragment;

.field final synthetic val$oldLayerType:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SearchFragment;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SearchFragment;
    .param p2, "val$view"    # Landroid/view/View;
    .param p3, "val$oldLayerType"    # I

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment$2;->this$0:Lcom/android/dialer/list/SearchFragment;

    iput-object p2, p0, Lcom/android/dialer/list/SearchFragment$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/dialer/list/SearchFragment$2;->val$oldLayerType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/dialer/list/SearchFragment$2;->val$oldLayerType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 180
    return-void
.end method
