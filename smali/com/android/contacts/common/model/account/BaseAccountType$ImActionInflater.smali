.class public Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    const-string/jumbo v0, "data6"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    const-string/jumbo v0, "data5"

    return-object v0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v1, 0x7f0d0165

    .line 647
    if-nez p1, :cond_0

    return v1

    .line 648
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 658
    return v1

    .line 649
    :pswitch_0
    const v0, 0x7f0d015d

    return v0

    .line 650
    :pswitch_1
    const v0, 0x7f0d015e

    return v0

    .line 651
    :pswitch_2
    const v0, 0x7f0d015f

    return v0

    .line 652
    :pswitch_3
    const v0, 0x7f0d0160

    return v0

    .line 653
    :pswitch_4
    const v0, 0x7f0d0161

    return v0

    .line 654
    :pswitch_5
    const v0, 0x7f0d0162

    return v0

    .line 655
    :pswitch_6
    const v0, 0x7f0d0163

    return v0

    .line 656
    :pswitch_7
    const v0, 0x7f0d0164

    return v0

    .line 657
    :pswitch_8
    return v1

    .line 648
    nop

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
        :pswitch_8
    .end packed-switch
.end method
