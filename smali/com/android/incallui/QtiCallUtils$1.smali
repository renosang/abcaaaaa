.class final Lcom/android/incallui/QtiCallUtils$1;
.super Ljava/lang/Object;
.source "QtiCallUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/QtiCallUtils;->displayModifyCallOptions(Lcom/android/incallui/Call;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$call:Lcom/android/incallui/Call;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemToCallType:Ljava/util/ArrayList;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p4, "val$call"    # Lcom/android/incallui/Call;

    .prologue
    .line 177
    .local p2, "val$items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p3, "val$itemToCallType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/incallui/QtiCallUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/QtiCallUtils$1;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/incallui/QtiCallUtils$1;->val$itemToCallType:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/incallui/QtiCallUtils$1;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 180
    iget-object v3, p0, Lcom/android/incallui/QtiCallUtils$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/QtiCallUtils$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 181
    iget-object v2, p0, Lcom/android/incallui/QtiCallUtils$1;->val$itemToCallType:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, "selCallType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Videocall: ModifyCall: upgrade/downgrade to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->callTypeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 185
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    iget-object v2, p0, Lcom/android/incallui/QtiCallUtils$1;->val$call:Lcom/android/incallui/Call;

    invoke-static {v2, v1}, Lcom/android/incallui/QtiCallUtils;->-wrap0(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V

    .line 186
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    return-void
.end method
