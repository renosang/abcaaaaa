.class public Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
.super Landroid/app/DialogFragment;
.source "BlockNumberDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

.field private mCountryIso:Ljava/lang/String;

.field private mDisplayNumber:Ljava/lang/String;

.field private mHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private mNumber:Ljava/lang/String;

.field private mParentView:Landroid/view/View;

.field private mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->blockNumber()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->unblockNumber()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private blockNumber()V
    .locals 10

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getBlockedMessage()Ljava/lang/CharSequence;

    move-result-object v2

    .line 233
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getUnblockedMessage()Ljava/lang/CharSequence;

    move-result-object v7

    .line 234
    .local v7, "undoMessage":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 235
    .local v4, "callback":Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActionTextColor()I

    move-result v3

    .line 236
    .local v3, "actionTextColor":I
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 238
    .local v5, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$2;

    invoke-direct {v6, p0, v7, v4}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$2;-><init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Ljava/lang/CharSequence;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 248
    .local v6, "onUndoListener":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;
    new-instance v0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;-><init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Ljava/lang/CharSequence;ILcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Landroid/content/Context;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;)V

    .line 275
    .local v0, "onBlockNumberListener":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 277
    iget-object v8, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    .line 278
    iget-object v9, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCountryIso:Ljava/lang/String;

    .line 275
    invoke-virtual {v1, v0, v8, v9}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private getActionTextColor()I
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0339

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getBlockedMessage()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const v2, 0x7f0d0211

    .line 218
    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getUnblockedMessage()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const v2, 0x7f0d0213

    .line 223
    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
    .locals 4
    .param p0, "blockId"    # Ljava/lang/Integer;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "displayNumber"    # Ljava/lang/String;
    .param p4, "parentViewId"    # Ljava/lang/Integer;

    .prologue
    .line 111
    new-instance v1, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-direct {v1}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;-><init>()V

    .line 112
    .local v1, "fragment":Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 114
    const-string/jumbo v2, "argBlockId"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :cond_0
    if-eqz p4, :cond_1

    .line 117
    const-string/jumbo v2, "parentViewId"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    :cond_1
    const-string/jumbo v2, "argNumber"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v2, "argCountryIso"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "argDisplayNumber"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    return-object v1
.end method

.method public static show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V
    .locals 2
    .param p0, "blockId"    # Ljava/lang/Integer;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "displayNumber"    # Ljava/lang/String;
    .param p4, "parentViewId"    # Ljava/lang/Integer;
    .param p5, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p6, "callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .prologue
    .line 98
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->newInstance(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    move-result-object v0

    .line 101
    .local v0, "newFragment":Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
    invoke-virtual {v0, p6}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->setCallback(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 102
    const-string/jumbo v1, "BlockNumberDialog"

    invoke-virtual {v0, p5, v1}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private unblockNumber()V
    .locals 9

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getUnblockedMessage()Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getBlockedMessage()Ljava/lang/CharSequence;

    move-result-object v6

    .line 284
    .local v6, "undoMessage":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 285
    .local v4, "callback":Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
    invoke-direct {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActionTextColor()I

    move-result v3

    .line 287
    .local v3, "actionTextColor":I
    new-instance v5, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;

    invoke-direct {v5, p0, v6, v4}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;-><init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Ljava/lang/CharSequence;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 297
    .local v5, "onUndoListener":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;
    iget-object v7, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    new-instance v0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;-><init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Ljava/lang/CharSequence;ILcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v8, "argBlockId"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 297
    invoke-virtual {v7, v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/Integer;)V

    .line 281
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->dismiss()V

    .line 197
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const v3, 0x7f0d02f1

    .line 198
    invoke-static {v1, v3, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 200
    const/4 v2, 0x0

    .line 197
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 134
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "argBlockId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 136
    .local v1, "isBlocked":Z
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "argNumber"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "argDisplayNumber"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "argCountryIso"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCountryIso:Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 144
    :cond_0
    new-instance v5, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 145
    new-instance v5, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;-><init>(Landroid/content/Context;Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker$Callback;)V

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    .line 150
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "parentViewId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mParentView:Landroid/view/View;

    .line 155
    if-eqz v1, :cond_1

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "title":Ljava/lang/CharSequence;
    const v5, 0x7f0d02a3

    invoke-virtual {p0, v5}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "okText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 160
    iget-object v6, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 159
    const v7, 0x7f0d02a2

    .line 158
    invoke-static {v5, v7, v6}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .end local v4    # "title":Ljava/lang/CharSequence;
    .local v2, "message":Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 179
    new-instance v6, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;-><init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Z)V

    .line 176
    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 188
    const/high16 v6, 0x1040000

    .line 176
    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 162
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "okText":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 164
    iget-object v6, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 163
    const v7, 0x7f0d029d

    .line 162
    invoke-static {v5, v7, v6}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 165
    .local v4, "title":Ljava/lang/CharSequence;
    const v5, 0x7f0d02a1

    invoke-virtual {p0, v5}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "okText":Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/compat/FilteredNumberCompat;->useNewFiltering()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    const v5, 0x7f0d02a0

    invoke-virtual {p0, v5}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;

    invoke-virtual {v5}, Lcom/android/dialer/voicemail/VisualVoicemailEnabledChecker;->isVisualVoicemailEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    const v5, 0x7f0d029e

    invoke-virtual {p0, v5}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v2    # "message":Ljava/lang/String;
    :cond_3
    const v5, 0x7f0d029f

    invoke-virtual {p0, v5}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->dismiss()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 210
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 205
    return-void
.end method

.method public setCallback(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 213
    return-void
.end method
