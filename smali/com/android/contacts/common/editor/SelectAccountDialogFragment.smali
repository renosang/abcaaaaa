.class public final Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_EXTRA_ARGS:Ljava/lang/String; = "extra_args"

.field private static final KEY_LIST_FILTER:Ljava/lang/String; = "list_filter"

.field private static final KEY_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"

.field public static final TAG:Ljava/lang/String; = "SelectAccountDialogFragment"


# direct methods
.method static synthetic -wrap0(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 119
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 120
    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    .line 121
    .local v0, "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "extra_args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 117
    .end local v0    # "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "titleResourceId"    # I
    .param p3, "accountListFilter"    # Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    .param p4, "extraArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "title_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v2, "list_filter"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    const-string/jumbo v2, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p4    # "extraArgs":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    new-instance v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;-><init>()V

    .line 67
    .local v1, "instance":Lcom/android/contacts/common/editor/SelectAccountDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 69
    const-string/jumbo v2, "SelectAccountDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 102
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 103
    check-cast v0, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;

    .line 104
    .local v0, "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 99
    .end local v0    # "target":Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    .line 78
    .local v4, "filter":Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/common/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/common/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;)V

    .line 80
    .local v0, "accountAdapter":Lcom/android/contacts/common/util/AccountsListAdapter;
    const v6, 0x7f04001e

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/util/AccountsListAdapter;->setCustomLayout(I)V

    .line 83
    new-instance v3, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/editor/SelectAccountDialogFragment;Lcom/android/contacts/common/util/AccountsListAdapter;)V

    .line 92
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string/jumbo v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 95
    .local v5, "result":Landroid/app/AlertDialog;
    return-object v5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 111
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method
