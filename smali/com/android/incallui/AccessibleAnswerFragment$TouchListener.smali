.class Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;
.super Ljava/lang/Object;
.source "AccessibleAnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AccessibleAnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccessibleAnswerFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/AccessibleAnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AccessibleAnswerFragment;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/AccessibleAnswerFragment;Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AccessibleAnswerFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;-><init>(Lcom/android/incallui/AccessibleAnswerFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-static {v0}, Lcom/android/incallui/AccessibleAnswerFragment;->-get1(Lcom/android/incallui/AccessibleAnswerFragment;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
