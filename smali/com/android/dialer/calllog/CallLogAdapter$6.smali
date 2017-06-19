.class Lcom/android/dialer/calllog/CallLogAdapter$6;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAdapter;->createCallLogEntryViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$6;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeFilteredNumberUndo()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onFilterNumberSuccess()V
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x10

    .line 427
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 426
    return-void
.end method

.method public onUnfilterNumberSuccess()V
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x13

    .line 433
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 432
    return-void
.end method
