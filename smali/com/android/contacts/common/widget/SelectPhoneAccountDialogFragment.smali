.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;,
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_HANDLES:Ljava/lang/String; = "account_handles"

.field private static final ARG_CAN_SET_DEFAULT:Ljava/lang/String; = "can_set_default"

.field private static final ARG_IS_DEFAULT_CHECKED:Ljava/lang/String; = "is_default_checked"

.field private static final ARG_LISTENER:Ljava/lang/String; = "listener"

.field private static final ARG_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSetDefault:Z

.field private mIsDefaultChecked:Z

.field private mIsSelected:Z

.field private mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTitleResId:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private isPrimaryUser()Z
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/dialer/compat/UserManagerCompat;->isSystemUser(Landroid/os/UserManager;)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 4
    .param p0, "titleResId"    # I
    .param p1, "canSetDefault"    # Z
    .param p3, "listener"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "accountHandlesCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_0
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;-><init>()V

    .line 103
    .local v2, "fragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "title_res_id"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string/jumbo v3, "can_set_default"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    const-string/jumbo v3, "account_handles"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    const-string/jumbo v3, "listener"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    invoke-virtual {v2, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {v2, p3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 110
    return-object v2
.end method

.method public static newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 2
    .param p1, "listener"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const v0, 0x7f0d01df

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "title_res_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTitleResId:I

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "can_set_default"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "account_handles"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "listener"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    iput-object v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    if-eqz p1, :cond_0

    .line 166
    const-string/jumbo v9, "is_default_checked"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    .line 168
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "telecom"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/TelecomManager;

    .line 169
    iput-object v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 173
    new-instance v8, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    .line 190
    .local v8, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    .line 197
    .local v2, "checkListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v7, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 201
    iget-object v10, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    .line 200
    const v11, 0x7f0400db

    .line 198
    invoke-direct {v7, p0, v9, v11, v10}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 203
    .local v7, "selectAccountListAdapter":Landroid/widget/ListAdapter;
    iget v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 208
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->isPrimaryUser()Z

    move-result v6

    .line 209
    .local v6, "isPrimaryUser":Z
    const-string/jumbo v9, "SelectPhoneAccountDialogFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isPrimaryUser: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 216
    const v10, 0x7f040045

    .line 214
    invoke-virtual {v9, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 219
    .local v3, "checkboxLayout":Landroid/widget/LinearLayout;
    const v9, 0x7f0e011b

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 220
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    iget-boolean v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 226
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v3    # "checkboxLayout":Landroid/widget/LinearLayout;
    :cond_1
    return-object v4

    .line 162
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "checkListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v4    # "dialog":Landroid/app/AlertDialog;
    .end local v6    # "isPrimaryUser":Z
    .end local v7    # "selectAccountListAdapter":Landroid/widget/ListAdapter;
    .end local v8    # "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    :catch_0
    move-exception v5

    .line 163
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SelectPhoneAccountDialogFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "e: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string/jumbo v0, "is_default_checked"

    iget-boolean v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 292
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 288
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 116
    return-void
.end method
