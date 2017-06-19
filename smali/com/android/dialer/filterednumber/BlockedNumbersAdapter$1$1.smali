.class Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1$1;
.super Ljava/lang/Object;
.source "BlockedNumbersAdapter.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1$1;->this$1:Lcom/android/dialer/filterednumber/BlockedNumbersAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeFilteredNumberUndo()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onFilterNumberSuccess()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onUnfilterNumberSuccess()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x15

    .line 78
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 77
    return-void
.end method
