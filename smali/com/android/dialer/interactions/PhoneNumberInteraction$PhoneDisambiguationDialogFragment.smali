.class public Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneDisambiguationDialogFragment"
.end annotation


# instance fields
.field private mCallInitiationType:I

.field private mInteractionType:I

.field private mIsVideoCall:Z

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 214
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;IZI)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "interactionType"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "callInitiationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    new-instance v1, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;

    invoke-direct {v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;-><init>()V

    .line 205
    .local v1, "fragment":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "phoneList"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 207
    const-string/jumbo v2, "interactionType"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string/jumbo v2, "callInitiation"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string/jumbo v2, "is_video_call"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-virtual {v1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 211
    invoke-static {}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 203
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    .line 241
    check-cast v1, Landroid/app/AlertDialog;

    .line 242
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, p2, :cond_2

    if-ltz p2, :cond_2

    .line 243
    iget-object v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    .line 244
    .local v3, "phoneItem":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    const v5, 0x7f0e01fe

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 245
    .local v2, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    iget-wide v6, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 247
    invoke-static {v0, v6, v7}, Lcom/android/dialer/contact/ContactUpdateService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v4

    .line 249
    .local v4, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 252
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    iget-object v5, v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 253
    iget v6, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    iget-boolean v7, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mIsVideoCall:Z

    iget v8, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallInitiationType:I

    .line 252
    invoke-static {v0, v5, v6, v7, v8}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->-wrap0(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 238
    .end local v2    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "phoneItem":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    :goto_0
    return-void

    .line 255
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "phoneList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    .line 222
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "interactionType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    .line 223
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "callInitiation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mCallInitiationType:I

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "is_video_call"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mIsVideoCall:Z

    .line 226
    new-instance v3, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;

    iget-object v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhoneList:Ljava/util/List;

    iget v5, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    invoke-direct {v3, v0, v4, v5}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 228
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400e0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 229
    .local v2, "setPrimaryView":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    iget-object v4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 229
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 231
    iget v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->mInteractionType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 232
    const v3, 0x7f0d023f

    .line 229
    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 232
    :cond_0
    const v3, 0x7f0d0240

    goto :goto_0
.end method
