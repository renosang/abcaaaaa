.class Lcom/android/dialer/calllog/MSimCallLogFragment$2;
.super Ljava/lang/Object;
.source "MSimCallLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/MSimCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/MSimCallLogFragment;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$2;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Status selected, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/SpinnerContent;

    iget v0, v1, Lcom/android/dialer/calllog/SpinnerContent;->value:I

    .line 591
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$2;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    iget v1, v1, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    if-eq v0, v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$2;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    iput v0, v1, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    .line 593
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$2;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->fetchCalls()V

    .line 588
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
