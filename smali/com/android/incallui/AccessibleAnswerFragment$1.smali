.class Lcom/android/incallui/AccessibleAnswerFragment$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibleAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AccessibleAnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccessibleAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccessibleAnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AccessibleAnswerFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/incallui/AccessibleAnswerFragment$1;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/AccessibleAnswerFragment$1;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-static {v0, p1, p2, p3, p3}, Lcom/android/incallui/AccessibleAnswerFragment;->-wrap0(Lcom/android/incallui/AccessibleAnswerFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
