.class Lcom/android/dialer/calllog/MSimCallLogFragment$1;
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
    .line 567
    iput-object p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

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
    .line 570
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sub selected, position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    add-int/lit8 v0, p3, -0x1

    .line 572
    .local v0, "sub":I
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-static {v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->-get0(Lcom/android/dialer/calllog/MSimCallLogFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-static {v1, v0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->-set0(Lcom/android/dialer/calllog/MSimCallLogFragment;I)I

    .line 574
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-static {v1, v0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->-wrap0(Lcom/android/dialer/calllog/MSimCallLogFragment;I)V

    .line 575
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->fetchCalls()V

    .line 569
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
    .line 580
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
