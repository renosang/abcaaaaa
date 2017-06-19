.class Lcom/android/incallui/OPCallCardFragment$7;
.super Ljava/lang/Object;
.source "OPCallCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPCallCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPCallCardFragment;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$7;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    iget-object v1, p0, Lcom/android/incallui/OPCallCardFragment$7;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/OPCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 545
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 543
    return-void
.end method
