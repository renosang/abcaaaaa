.class Lcom/android/incallui/ConferenceManagerFragment$1;
.super Ljava/lang/Object;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ConferenceManagerFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerFragment$1;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$1;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment$1;->this$0:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 83
    :cond_0
    return-void
.end method
