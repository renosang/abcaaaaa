.class Lcom/android/dialer/CallDetailActivity$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNumberTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 206
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->-get15(Lcom/android/dialer/CallDetailActivity;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 208
    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 207
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onDeleteCall()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 92
    return-void
.end method

.method public onDeleteVoicemail()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 97
    return-void
.end method

.method public onGetCallDetails([Lcom/android/dialer/PhoneCallDetails;)V
    .locals 16
    .param p1, "details"    # [Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get8(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0d025a

    .line 106
    const/4 v13, 0x0

    .line 105
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v11}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 108
    return-void

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-static {v11, v12}, Lcom/android/dialer/CallDetailActivity;->-set1(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/PhoneCallDetails;)Lcom/android/dialer/PhoneCallDetails;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_0
    iput-object v11, v12, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 115
    const-string/jumbo v11, ""

    .line 114
    :goto_1
    invoke-static {v12, v11}, Lcom/android/dialer/CallDetailActivity;->-set3(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget-object v12, v12, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/dialer/CallDetailActivity;->-set2(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/dialer/CallDetailActivity$1;->getNumberTypeOrLocation(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 121
    .local v3, "callLocationOrType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 122
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget-object v12, v12, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget-object v12, v12, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "displayNumber":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get1(Lcom/android/dialer/CallDetailActivity;)Landroid/text/BidiFormatter;

    move-result-object v11

    .line 128
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 127
    invoke-virtual {v11, v12, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "displayNumberStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get7(Lcom/android/dialer/CallDetailActivity;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v12

    iput v12, v11, Lcom/android/dialer/PhoneCallDetails;->nameDisplayOrder:I

    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/dialer/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get4(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/dialer/PhoneCallDetails;->getPreferredName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get5(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get8(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v11

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget-object v12, v12, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 145
    invoke-static {v11, v12}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "accountLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get15(Lcom/android/dialer/CallDetailActivity;)Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget-object v12, v12, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    invoke-static {v11, v12, v2}, Lcom/android/dialer/PhoneCallDetails;->createAccountLabelDescription(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 150
    .local v1, "accountContentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 151
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get15(Lcom/android/dialer/CallDetailActivity;)Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    .line 153
    const/4 v13, 0x0

    aput-object v2, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v13}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v13

    iget-object v13, v13, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 152
    const v13, 0x7f0d02c4

    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    :cond_1
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get0(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get0(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get0(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v11, v11, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget v12, v12, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    invoke-static {v11, v12}, Lcom/android/dialer/util/PhoneNumberUtil;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v4

    .line 169
    .local v4, "canPlaceCallsTo":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get2(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v12

    if-eqz v4, :cond_a

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get9(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v12

    if-eqz v4, :cond_b

    const/4 v11, 0x0

    :goto_7
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    if-eqz v4, :cond_c

    const/4 v11, 0x0

    :goto_8
    invoke-static {v12, v11}, Lcom/android/dialer/CallDetailActivity;->-wrap1(Lcom/android/dialer/CallDetailActivity;I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v11, v11, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/dialer/util/PhoneNumberUtil;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 176
    .local v7, "isSipNumber":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get8(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget-object v12, v12, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v13, v13, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/dialer/util/PhoneNumberUtil;->isVoicemailNumber(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 178
    .local v8, "isVoicemailNumber":Z
    if-eqz v4, :cond_2

    if-eqz v7, :cond_d

    :cond_2
    const/4 v9, 0x0

    .line 179
    .local v9, "showEditNumberBeforeCallAction":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get11(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v12

    .line 180
    if-eqz v9, :cond_e

    const/4 v11, 0x0

    .line 179
    :goto_a
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get6(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/ContactInfoHelper;

    move-result-object v11

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v12}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v12

    iget v12, v12, Lcom/android/dialer/PhoneCallDetails;->sourceType:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v13}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v13

    iget-object v13, v13, Lcom/android/dialer/PhoneCallDetails;->objectId:Ljava/lang/String;

    .line 182
    invoke-virtual {v11, v12, v13}, Lcom/android/dialer/calllog/ContactInfoHelper;->canReportAsInvalid(ILjava/lang/String;)Z

    move-result v10

    .line 184
    .local v10, "showReportAction":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get14(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v12

    .line 185
    if-eqz v10, :cond_f

    const/4 v11, 0x0

    .line 184
    :goto_b
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v11}, Lcom/android/dialer/CallDetailActivity;->invalidateOptionsMenu()V

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get12(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ListView;

    move-result-object v11

    .line 190
    new-instance v12, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v13}, Lcom/android/dialer/CallDetailActivity;->-get8(Lcom/android/dialer/CallDetailActivity;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v14}, Lcom/android/dialer/CallDetailActivity;->-get13(Lcom/android/dialer/CallDetailActivity;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v15}, Lcom/android/dialer/CallDetailActivity;->-get3(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallTypeHelper;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v14, v15, v0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/dialer/calllog/CallTypeHelper;[Lcom/android/dialer/PhoneCallDetails;)V

    .line 189
    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-wrap4(Lcom/android/dialer/CallDetailActivity;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-wrap3(Lcom/android/dialer/CallDetailActivity;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v12, 0x7f0e00d3

    invoke-virtual {v11, v12}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void

    .line 113
    .end local v1    # "accountContentDescription":Ljava/lang/CharSequence;
    .end local v2    # "accountLabel":Ljava/lang/CharSequence;
    .end local v3    # "callLocationOrType":Ljava/lang/CharSequence;
    .end local v4    # "canPlaceCallsTo":Z
    .end local v5    # "displayNumber":Ljava/lang/CharSequence;
    .end local v6    # "displayNumberStr":Ljava/lang/String;
    .end local v7    # "isSipNumber":Z
    .end local v8    # "isVoicemailNumber":Z
    .end local v9    # "showEditNumberBeforeCallAction":Z
    .end local v10    # "showReportAction":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 115
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    goto/16 :goto_1

    .line 124
    .restart local v3    # "callLocationOrType":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v11

    iget-object v5, v11, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .restart local v5    # "displayNumber":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 136
    .restart local v6    # "displayNumberStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get4(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get5(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get5(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 141
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get5(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 155
    .restart local v1    # "accountContentDescription":Ljava/lang/CharSequence;
    .restart local v2    # "accountLabel":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get15(Lcom/android/dialer/CallDetailActivity;)Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v13}, Lcom/android/dialer/CallDetailActivity;->-get10(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v13

    iget-object v13, v13, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 155
    const v13, 0x7f0d02c2

    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 164
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->-get0(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 169
    .restart local v4    # "canPlaceCallsTo":Z
    :cond_a
    const/16 v11, 0x8

    goto/16 :goto_6

    .line 170
    :cond_b
    const/16 v11, 0x8

    goto/16 :goto_7

    .line 172
    :cond_c
    const/16 v11, 0x8

    goto/16 :goto_8

    .line 178
    .restart local v7    # "isSipNumber":Z
    .restart local v8    # "isVoicemailNumber":Z
    :cond_d
    if-nez v8, :cond_2

    const/4 v9, 0x1

    .restart local v9    # "showEditNumberBeforeCallAction":Z
    goto/16 :goto_9

    .line 180
    :cond_e
    const/16 v11, 0x8

    goto/16 :goto_a

    .line 185
    .restart local v10    # "showReportAction":Z
    :cond_f
    const/16 v11, 0x8

    goto/16 :goto_b
.end method
