.class public Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImportFromSimSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 489
    if-ltz p2, :cond_1

    .line 490
    invoke-static {p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->setImportSubscription(I)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-ne p2, v2, :cond_0

    .line 492
    sput v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportSub:I

    .line 493
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    const v1, 0x7f0d00a6

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z

    goto :goto_0
.end method
