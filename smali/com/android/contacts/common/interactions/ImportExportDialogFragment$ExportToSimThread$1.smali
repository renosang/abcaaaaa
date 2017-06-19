.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;
.super Landroid/os/Handler;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 853
    const/4 v1, 0x0

    .line 854
    .local v1, "exportCount":I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 856
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 858
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 859
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v5, v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    new-array v6, v7, [Ljava/lang/Object;

    .line 860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0d01d7

    .line 859
    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 857
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 864
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    const v5, 0x7f0d00ac

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 870
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 872
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 873
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v5, v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    new-array v6, v7, [Ljava/lang/Object;

    .line 874
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0d01d8

    .line 873
    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 871
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 880
    :pswitch_3
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    const v5, 0x7f0d00ad

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 886
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 888
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 889
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v5, v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    new-array v6, v7, [Ljava/lang/Object;

    .line 890
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 889
    const v7, 0x7f0d00af

    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 896
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 898
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 899
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v5, v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    new-array v6, v7, [Ljava/lang/Object;

    .line 900
    aput-object v2, v6, v8

    const v7, 0x7f0d00b0

    .line 899
    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 897
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 904
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_6
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    .line 905
    const v5, 0x7f0d00ae

    .line 904
    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 909
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 910
    .local v0, "contactInfos":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-ne v4, v6, :cond_0

    .line 911
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v5, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    new-array v6, v6, [Ljava/lang/Object;

    .line 913
    aget-object v4, v0, v8

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    :goto_1
    aput-object v4, v6, v8

    .line 914
    aget-object v4, v0, v7

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_2
    aput-object v4, v6, v7

    .line 915
    aget-object v4, v0, v9

    if-nez v4, :cond_3

    const-string/jumbo v4, ""

    :goto_3
    aput-object v4, v6, v9

    .line 912
    const v4, 0x7f0d00a1

    .line 911
    invoke-virtual {v5, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 917
    .local v3, "toastS":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$1;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    iget-object v4, v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->mPeople:Landroid/app/Activity;

    invoke-static {v4, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 913
    .end local v3    # "toastS":Ljava/lang/String;
    :cond_1
    aget-object v4, v0, v8

    goto :goto_1

    .line 914
    :cond_2
    aget-object v4, v0, v7

    goto :goto_2

    .line 915
    :cond_3
    aget-object v4, v0, v9

    goto :goto_3

    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
