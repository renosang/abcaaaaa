.class Lcom/android/incallui/InCallCsRedialHandler$1;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallCsRedialHandler;->showCsRedialDialogOnDisconnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallCsRedialHandler;

.field final synthetic val$dialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallCsRedialHandler;
    .param p2, "val$dialString"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler$1;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    iput-object p2, p0, Lcom/android/incallui/InCallCsRedialHandler$1;->val$dialString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler$1;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    iget-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler$1;->val$dialString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallCsRedialHandler;->-wrap0(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V

    .line 196
    return-void
.end method
