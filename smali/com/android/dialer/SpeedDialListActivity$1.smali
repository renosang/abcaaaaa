.class Lcom/android/dialer/SpeedDialListActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/SpeedDialListActivity;->showAddSpeedDialDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/SpeedDialListActivity;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/android/dialer/SpeedDialListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/SpeedDialListActivity;
    .param p2, "val$number"    # I

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/dialer/SpeedDialListActivity$1;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    iput p2, p0, Lcom/android/dialer/SpeedDialListActivity$1;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$1;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    iget v1, p0, Lcom/android/dialer/SpeedDialListActivity$1;->val$number:I

    invoke-static {v0, v1}, Lcom/android/dialer/SpeedDialListActivity;->-wrap1(Lcom/android/dialer/SpeedDialListActivity;I)V

    .line 240
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$1;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-wrap0(Lcom/android/dialer/SpeedDialListActivity;)V

    .line 238
    return-void
.end method
