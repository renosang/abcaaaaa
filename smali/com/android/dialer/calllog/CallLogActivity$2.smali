.class Lcom/android/dialer/calllog/CallLogActivity$2;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogActivity;->prepareSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$2;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogActivity;->-get4(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method
