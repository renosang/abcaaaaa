.class public Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 596
    if-nez p1, :cond_0

    const v0, 0x7f0d0151

    return v0

    .line 597
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    const v0, 0x7f0d0150

    return v0

    .line 598
    :pswitch_0
    const v0, 0x7f0d014c

    return v0

    .line 599
    :pswitch_1
    const v0, 0x7f0d014e

    return v0

    .line 600
    :pswitch_2
    const v0, 0x7f0d014f

    return v0

    .line 601
    :pswitch_3
    const v0, 0x7f0d014d

    return v0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
