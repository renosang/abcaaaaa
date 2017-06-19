.class Lcom/android/dialer/calllog/CallLogAdapter$2;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
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
    .line 197
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->-wrap0(Lcom/android/dialer/calllog/CallLogAdapter;)V

    .line 199
    return-void
.end method
