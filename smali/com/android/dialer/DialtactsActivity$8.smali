.class Lcom/android/dialer/DialtactsActivity$8;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$8;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1103
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$8;->this$0:Lcom/android/dialer/DialtactsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1104
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$8;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->-wrap4(Lcom/android/dialer/DialtactsActivity;)V

    .line 1105
    return v2
.end method
